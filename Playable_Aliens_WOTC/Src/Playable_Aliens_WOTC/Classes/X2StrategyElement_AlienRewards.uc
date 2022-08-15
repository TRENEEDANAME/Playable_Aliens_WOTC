class X2StrategyElement_AlienRewards extends X2StrategyElement_DefaultRewards config (PlayableAdvent);

var config bool bReward_Andromedon, bReward_Archon, bReward_Berserker, bReward_Faceless, bReward_Muton, bReward_Sectoid, bReward_Viper;
var config bool bReward_Naja, bReward_Sidewinder;
var config bool bReward_MutonBeleaguer, bReward_MutonHarrier, bReward_MutonHunter, bReward_MutonProwler;
var config bool bReward_FrostAdder, bReward_FrostBomber, bReward_FrostNecromancer;
var config bool bReward_SectoidAbjurer;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;

	//base game units
	Templates.AddItem(CreateAlienReward('Reward_Andromedon', 'PA_Andromedon'));
	Templates.AddItem(CreateAlienReward('Reward_Archon', 'PA_Archon'));
	Templates.AddItem(CreateAlienReward('Reward_Berserker', 'PA_Berserker'));
	Templates.AddItem(CreateAlienReward('Reward_Faceless', 'PA_Faceless'));
	Templates.AddItem(CreateAlienReward('Reward_Muton', 'PA_Muton'));
	Templates.AddItem(CreateAlienReward('Reward_Sectoid', 'PA_Sectoid'));
	Templates.AddItem(CreateAlienReward('Reward_Viper', 'PA_Viper2'));

	//lwotc units
	Templates.AddItem(CreateAlienReward('Reward_Naja', 'PA_Naja'));
	Templates.AddItem(CreateAlienReward('Reward_Sidewinder', 'PA_Sidewinder'));

	//Claus muton units
	Templates.AddItem(CreateAlienReward('Reward_MutonBeleaguer', 'PA_MutonBeleaguer'));
	Templates.AddItem(CreateAlienReward('Reward_MutonHarrier', 'PA_MutonHarrier'));
	Templates.AddItem(CreateAlienReward('Reward_MutonHunter', 'PA_MutonHunter'));
	Templates.AddItem(CreateAlienReward('Reward_MutonProwler', 'PA_MutonProwler'));

	//Frost Legion units
	Templates.AddItem(CreateAlienReward('Reward_FrostAdder', 'PA_FrostAdder'));
	Templates.AddItem(CreateAlienReward('Reward_FrostBomber', 'PA_FrostBomber'));
	Templates.AddItem(CreateAlienReward('Reward_FrostNecromancer', 'PA_FrostNecromancer'));

	//Sectoid Abjurer
	Templates.AddItem(CreateAlienReward('Reward_SectoidAbjurer', 'PA_SectoidAbjurer'));

	//actual reward that randomises above rewards
	Templates.AddItem(CreateRescueMissionReward());

	return Templates;
}

//reward that creates personel rewards with template and unit name
static function X2DataTemplate CreateAlienReward(name TemplateName, name RewardName)
{
	local X2RewardTemplate Template;

	`CREATE_X2Reward_TEMPLATE(Template, TemplateName);
	Template.rewardObjectTemplateName = RewardName;

	Template.GenerateRewardFn = GeneratePersonnelReward;
	Template.SetRewardFn = SetPersonnelReward;
	Template.GiveRewardFn = GivePersonnelReward;
	Template.GetRewardStringFn = GetPersonnelRewardString_Aliens;
	Template.GetRewardImageFn = GetPersonnelRewardImage;
	Template.GetRewardIconFn = GetGenericRewardIcon;

	return Template;
}

//reward that randomises from one of the above rewards
static function X2DataTemplate CreateRescueMissionReward()
{
	local X2RewardTemplate Template;

	`CREATE_X2Reward_TEMPLATE(Template, 'Reward_AlienRescue');

	Template.GenerateRewardFn = GeneratePersonnelReward;
	Template.SetRewardFn = SetPersonnelReward;

	//Template.GiveRewardFn = GivePersonnelReward;
	Template.GiveRewardFn = GiveAlienRescueReward;

	//Template.GetRewardStringFn = GetMissionRewardString;
	Template.GetRewardStringFn = GetPersonnelRewardString_Aliens;

	Template.GetRewardImageFn = GetPersonnelRewardImage;
	Template.GetRewardIconFn = GetGenericRewardIcon;

	Template.RewardPopupFn = MissionRewardPopup;

	return Template;
}

static function GiveAlienRescueReward(XComGameState NewGameState, XComGameState_Reward RewardState, optional StateObjectReference AuxRef, optional bool bOrder = false, optional int OrderHours = -1)
{
	local XComGameState_HeadquartersResistance ResHQ;
	local XComGameState_CovertAction ActionState;
	local XComGameState_MissionSite MissionState;
	local XComGameState_WorldRegion RegionState;

	local array<XComGameState_Reward> MissionRewards;
	local XComGameState_Reward MissionRewardState;
	local X2RewardTemplate RewardTemplate;
	local array<name> Rewardnames;

	local X2StrategyElementTemplateManager StratMgr;
	local X2MissionSourceTemplate MissionSource;
	local float MissionDuration;

	//info hunting
	StratMgr = class'X2StrategyElementTemplateManager'.static.GetStrategyElementTemplateManager();
	ActionState = XComGameState_CovertAction(`XCOMHISTORY.GetGameStateForObjectID(AuxRef.ObjectID));
	ResHQ = class'UIUtilities_Strategy'.static.GetResistanceHQ();
	RegionState = ActionState.GetWorldRegion();

	//reset arrays	
	RewardNames.Length = 0;
	MissionRewards.Length = 0;

	//add new elements to array if required DLC is active and config option is set to enable
	if (default.bReward_Andromedon )	{ RewardNames.AddItem('Reward_Andromedon');	}
	if (default.bReward_Archon ) 		{ RewardNames.AddItem('Reward_Archon');		}
	if (default.bReward_Berserker )		{ RewardNames.AddItem('Reward_Berserker');	}
	if (default.bReward_Faceless ) 		{ RewardNames.AddItem('Reward_Faceless');	}
	if (default.bReward_Muton ) 		{ RewardNames.AddItem('Reward_Muton');		}
	if (default.bReward_Sectoid ) 		{ RewardNames.AddItem('Reward_Sectoid'); 	}
	if (default.bReward_Viper ) 		{ RewardNames.AddItem('Reward_Viper');		}

	//add claus mutons
	if (class'X2DownloadableContentInfo_Playable_Aliens_WOTC'.static.IsModActive('MutonHarriers') )
	{
		if (default.bReward_MutonBeleaguer ) 	{ RewardNames.AddItem('Reward_MutonBeleaguer');		}
		if (default.bReward_MutonHarrier ) 		{ RewardNames.AddItem('Reward_MutonHarrier');		}
	}
	
	if (class'X2DownloadableContentInfo_Playable_Aliens_WOTC'.static.IsModActive('MutonHunter') )
	{
		if (default.bReward_MutonHunter ) 		{ RewardNames.AddItem('Reward_MutonHunter');		}
		if (default.bReward_MutonProwler ) 		{ RewardNames.AddItem('Reward_MutonProwler');		}
	}

	//add frost legion
	if (class'X2DownloadableContentInfo_Playable_Aliens_WOTC'.static.IsModActive('FrostDivision') )
	{
		if (default.bReward_FrostAdder ) 		{ RewardNames.AddItem('Reward_FrostAdder');			}
		if (default.bReward_FrostBomber ) 		{ RewardNames.AddItem('Reward_FrostBomber');		}
		if (default.bReward_FrostNecromancer )	{ RewardNames.AddItem('Reward_FrostNecromancer');	}
	}

	//add sectoid abjurer
	if (class'X2DownloadableContentInfo_Playable_Aliens_WOTC'.static.IsModActive('SectoidAbjurerLWOTC') )
	{
		if (default.bReward_SectoidAbjurer ) 		{ RewardNames.AddItem('Reward_SectoidAbjurer');			}
	}

	//add random selected reward to mission
	RewardTemplate = X2RewardTemplate(StratMgr.FindStrategyElementTemplate(RewardNames[`SYNC_RAND_STATIC(RewardNames.Length)]));
	MissionRewardState = RewardTemplate.CreateInstanceFromTemplate(NewGameState);
	MissionRewardState.GenerateReward(NewGameState, ResHQ.GetMissionResourceRewardScalar(RewardState), RegionState.GetReference());
	MissionRewards.AddItem(MissionRewardState);

	//create new mission site gamestate for this newly generated mission
	MissionState = XComGameState_MissionSite(NewGameState.CreateNewStateObject(class'XComGameState_MissionSite'));

	//ensure mission and reward state are linked
	RewardState.RewardObjectReference = MissionState.GetReference();

	//MissionSource_Council is the list used for this. LWOTC has it empty so this means that every mission type in MissionSchedules.ini will be eligible to show up here. 
	//Specifying the Reward from the list above changes the mission reward, even if it's not a VIP. VIP missions seem to add the ayy to the tactical mission as the VIP. 
	MissionSource = X2MissionSourceTemplate(StratMgr.FindStrategyElementTemplate('MissionSource_Council'));
	
	//Original Mission Duration String (remove);   
	//	MissionDuration = float((default.MissionMinDuration + `SYNC_RAND_STATIC(default.MissionMaxDuration - default.MissionMinDuration + 1)) * 3600); 
	//	This is in seconds apparently, so a block of 3600=1h. 
	//	Sets it to four days +12 to 24 hours
	MissionDuration = float(345600 + (default.MissionMinDuration + `SYNC_RAND_STATIC(default.MissionMaxDuration - default.MissionMinDuration + 1)) * 3600); 
	
	//create the mission in the geoscape and generate user-clickable POI for mission
	MissionState.BuildMission(MissionSource, RegionState.GetRandom2DLocationInRegion(), RegionState.GetReference(), MissionRewards, true, true, , MissionDuration);
	MissionState.PickPOI(NewGameState);

}

static function string GetPersonnelRewardString_Aliens(XComGameState_Reward RewardState)
{
	local XComGameStateHistory History;
	local XComGameState_Unit UnitState;

	History = `XCOMHISTORY;
	UnitState = XComGameState_Unit(History.GetGameStateForObjectID(RewardState.RewardObjectReference.ObjectID));

	if(UnitState != none)
	{
		return UnitState.GetName(eNameType_RankFull) @ "-" @ UnitState.GetSoldierClassTemplate().DisplayName;
	}

	return "< ERROR IN REWARD STRING NAME >";
}
