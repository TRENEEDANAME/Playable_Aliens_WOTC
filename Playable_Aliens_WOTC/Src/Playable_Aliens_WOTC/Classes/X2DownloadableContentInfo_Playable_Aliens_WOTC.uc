//---------------------------------------------------------------------------------------
//  FILE:   X2DownloadableContentInfo_Playable_Aliens_WOTC.uc                                    
//           
//	Use the X2DownloadableContentInfo class to specify unique mod behavior when the 
//  player creates a new campaign or loads a saved game.
//  
//---------------------------------------------------------------------------------------
//  Copyright (c) 2016 Firaxis Games, Inc. All rights reserved.
//---------------------------------------------------------------------------------------

class X2DownloadableContentInfo_Playable_Aliens_WOTC extends X2DownloadableContentInfo;


var config(PlayableAdvent) int EntwineDamage;

var config array<name> IncludedAlienClasses;
var config array<name> IncludedAlienTemplates;
var config int NumberOfAlienUtilitySlots;

/// <summary>
/// This method is run if the player loads a saved game that was created prior to this DLC / Mod being installed, and allows the 
/// DLC / Mod to perform custom processing in response. This will only be called once the first time a player loads a save that was
/// create without the content installed. Subsequent saves will record that the content was installed.
/// </summary>

/// <summary>
/// Called when the player starts a new campaign while this DLC / Mod is installed
/// </summary>
static event InstallNewCampaign(XComGameState StartState)
{}



/// <summary>
/// Called after the player exits the post-mission sequence while this DLC / Mod is installed.
/// </summary>
static event OnExitPostMissionSequence()
{
	CheckForRequiredHealing();
}




/// <summary>
/// Called after the player exits the post-mission sequence while this DLC / Mod is installed.
/// </summary>
// I'm using this event instead of OnPostMission(), since we're using XComHQ and I need to make sure the player's in the Geoscape fully by then
static function CheckForRequiredHealing()
{
	local XComGameState NewGameState;
	local XComGameState_HeadquartersXCom XComHQ;
	local XComGameState_Unit UnitState;
	local int i;
	local XComGameState_HeadquartersProjectRecoverWill WillProject;
	local XComGameState_HeadquartersProjectHealSoldier ProjectState;
	local bool AddedProject;

	NewGameState = class'XComGameStateContext_ChangeContainer'.static.CreateChangeState("Checking Project Required");

	XComHQ = XComGameState_HeadquartersXCom(`XCOMHISTORY.GetSingleGameStateObjectForClass(class'XComGameState_HeadquartersXCom'));

	XComHQ = XComGameState_HeadquartersXCom(NewGameState.ModifyStateObject(class'XComGameState_HeadquartersXCom', XComHQ.ObjectID));

	AddedProject = false;
	//NewGameState.AddStateObject(XComHQ);

	for (i = 0; i < XComHQ.Crew.Length; i++)
	{
		if (XComHQ.Crew[i].ObjectID != 0)
		{
			UnitState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(XComHQ.Crew[i].ObjectID));

			UnitState = XComGameState_Unit(NewGameState.ModifyStateObject(class'XComGameState_Unit', UnitState.GetReference().ObjectID));
			if ((( UnitState.IsInjured() && !UnitState.HasHealingProject()) || (!HasWillProject(UnitState) && UnitState.NeedsWillRecovery()) ) &&
				(  UnitState.GetMyTemplateName() == 'PA_Sectoid' 
				|| UnitState.GetMyTemplateName() == 'PA_Viper2' 
				|| UnitState.GetMyTemplateName() == 'PA_Muton' 
				|| UnitState.GetMyTemplateName() == 'PA_Andromedon' 
				|| UnitState.GetMyTemplateName() == 'PA_Archon' 
				|| UnitState.GetMyTemplateName() == 'PA_Berserker' 
				|| UnitState.GetMyTemplateName() == 'PA_MutonHunter' 
				|| UnitState.GetMyTemplateName() == 'PA_MutonProwler' 
				|| UnitState.GetMyTemplateName() == 'PA_MutonBeleaguer' 
				|| UnitState.GetMyTemplateName() == 'PA_MutonHarrier' 
				|| UnitState.GetMyTemplateName() == 'PA_Faceless' 
				|| UnitState.GetMyTemplateName() == 'PA_Sidewinder' 
				|| UnitState.GetMyTemplateName() == 'PA_Naja' 
				|| UnitState.GetMyTemplateName() == 'PA_FrostNecromancer' 
				|| UnitState.GetMyTemplateName() == 'PA_FrostAdder' 
				|| UnitState.GetMyTemplateName() == 'PA_FrostBomber'
				|| UnitState.GetMyTemplateName() == 'PA_SectoidAbjurer'
				))
			{
		
				if(UnitState.IsInjured() && !UnitState.HasHealingProject())
				{
					ProjectState = XComGameState_HeadquartersProjectHealSoldier(NewGameState.CreateNewStateObject(class'XComGameState_HeadquartersProjectHealSoldier'));

					ProjectState.SetProjectFocus(UnitState.GetReference(), NewGameState);

					UnitState.SetStatus(eStatus_Healing);
					XComHQ.Projects.AddItem(ProjectState.GetReference());
					AddedProject = true;
				}

			 
				if(!HasWillProject(UnitState) && UnitState.NeedsWillRecovery())
				{
					WillProject = XComGameState_HeadquartersProjectRecoverWill(NewGameState.CreateNewStateObject(class'XComGameState_HeadquartersProjectRecoverWill'));
					WillProject.SetProjectFocus(UnitState.GetReference(), NewGameState);
					XComHQ.Projects.AddItem(WillProject.GetReference());
					AddedProject = true;
				}
			}
		}
	}
	if (AddedProject)
	{
		`XCOMGAME.GameRuleset.SubmitGameState(NewGameState);
	}
	else
	{
		`XCOMHISTORY.CleanupPendingGameState(NewGameState);
	}
}

static function bool HasWillProject(XComGameState_Unit UnitState)
{
	local XComGameStateHistory History;
	local XComGameState_HeadquartersProjectRecoverWill WillProject;

	History = `XCOMHISTORY;

	foreach History.IterateByClassType(class'XComGameState_HeadquartersProjectRecoverWill', WillProject)
	{
		if(WillProject.ProjectFocus == UnitState.GetReference())
		{
			return true;
		}
	}

	return false;
}

exec function AddAlienRecruit(name TemplateName)
{
	local XComGameState_Unit NewSoldierState;
	local XComOnlineProfileSettings ProfileSettings;
	local X2CharacterTemplate CharTemplate;
	local X2CharacterTemplateManager    CharTemplateMgr;
	local XComGameState NewGameState;
	local XComGameState_HeadquartersXCom XComHQ;
	NewGameState = class'XComGameStateContext_ChangeContainer'.static.CreateChangeState("Adding Allies Unknown State Objects");

	XComHQ = XComGameState_HeadquartersXCom(class'XComGameStateHistory'.static.GetGameStateHistory().GetSingleGameStateObjectForClass(class'XComGameState_HeadquartersXCom'));
	ProfileSettings = `XPROFILESETTINGS;

	CharTemplateMgr = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager();

	CharTemplate = CharTemplateMgr.FindCharacterTemplate(TemplateName);

	//if we don't get any valid templates, bail .. it means the user has yet to install any species mods
	if(CharTemplate == none) { return; }

	NewSoldierState = `CHARACTERPOOLMGR.CreateCharacter(NewGameState, ProfileSettings.Data.m_eCharPoolUsage, CharTemplate.DataName);
	
	if(!NewSoldierState.HasBackground())
	{
		NewSoldierState.GenerateBackground();
	}
	
	NewSoldierState.GiveRandomPersonality();
	NewSoldierState.ApplyInventoryLoadout(NewGameState);
	NewSoldierState.SetHQLocation(eSoldierLoc_Barracks);
	XComHQ = XComGameState_HeadquartersXCom(NewGameState.ModifyStateObject(class'XComGameState_HeadquartersXCom', XComHQ.ObjectID));
	XComHQ.AddToCrew(NewGameState, NewSoldierState);

	if(NewGameState.GetNumGameStateObjects() > 0)
	{
		`XCOMGAME.GameRuleset.SubmitGameState(NewGameState);
	}
	else
	{
		`XCOMHistory.CleanupPendingGameState(NewGameState);
	}
}

static function bool UnitIsAlien(const XComGameState_Unit UnitState)
{
	return default.IncludedAlienClasses.Find(UnitState.GetSoldierClassTemplateName()) != INDEX_NONE;
}

static function bool CanAddItemToInventory_CH_Improved(
    out int bCanAddItem,                   // out value for XComGameState_Unit
    const EInventorySlot Slot,             // Inventory Slot you're trying to equip the Item into
    const X2ItemTemplate ItemTemplate,     // Item Template of the Item you're trying to equip
    int Quantity, 
    XComGameState_Unit UnitState,          // Unit State of the Unit you're trying to equip the Item on
    optional XComGameState CheckGameState, 
    optional out string DisabledReason,    // out value for the UIArmory_Loadout
    optional XComGameState_Item ItemState) // Item State of the Item we're trying to equip
{
	local XGParamTag	LocTag;
	local bool OverrideNormalBehavior, DoNotOverrideNormalBehavior;

    // Prepare return values to make it easier for us to read the code.
    OverrideNormalBehavior = CheckGameState != none;
    DoNotOverrideNormalBehavior = CheckGameState == none;

	//if it already has a disabled reason, return
	if(DisabledReason != "")
	{
    	return DoNotOverrideNormalBehavior;
	}

	// do the filtering only if trying to...
	if(UnitIsAlien(UnitState) &&	//	equip something on your alien class
		Slot == eInvSlot_Utility)	// into the utility slot
	{
		if (   ItemTemplate.DataName == 'SKULLJACK' 
			|| ItemTemplate.DataName == 'MEDIKIT' 
			|| ItemTemplate.DataName == 'NANOMEDIKIT' 
			|| ItemTemplate.DataName == 'BIOMEDIKIT' 
			|| ItemTemplate.DataName == 'COMBATSTIMS' 
			|| ItemTemplate.DataName == 'IRI_HACKERLAPTOP' 
			|| ItemTemplate.DataName == 'IRI_RPG_CV_Utility' 
			|| ItemTemplate.DataName == 'IRI_RPG_MG_Utility' 
			|| ItemTemplate.DataName == 'IRI_RPG_BM_Utility' 
			|| ItemTemplate.DataName == 'IRI_DRL_CV' 
			|| ItemTemplate.DataName == 'IRI_DRL_MG' 
			|| ItemTemplate.DataName == 'IRI_DRL_BM' 
			|| ItemTemplate.DataName == 'JetBoosters_MK0' 
			|| ItemTemplate.DataName == 'IRI_JetBoosters_MK1' 
			|| ItemTemplate.DataName == 'IRI_JetBoosters_MK2')
		{
			// if we're trying to equip one of these items
			// we build a message that will be shown to the player stating that this item is not available to the alien class
			LocTag = XGParamTag(`XEXPANDCONTEXT.FindTag("XGParam"));
			LocTag.StrValue0 = class'X2SoldierClassTemplateManager'.static.GetSoldierClassTemplateManager().FindSoldierClassTemplate(UnitState.GetSoldierClassTemplateName()).DisplayName;
			DisabledReason = class'UIUtilities_Text'.static.CapsCheckForGermanScharfesS(`XEXPAND.ExpandString(class'UIArmory_Loadout'.default.m_strNeedsSoldierClass));

			bCanAddItem = 0;

			return OverrideNormalBehavior; // and disallow equipping the item
		}

	}

	 // in all other cases don't do any filtering.
	return DoNotOverrideNormalBehavior;
}

// make sure all alien units in this mod have the same number of utility slots 
static function GetNumUtilitySlotsOverride(out int NumUtilitySlots, XComGameState_Item EquippedArmor, XComGameState_Unit UnitState, XComGameState CheckGameState)
{
	if(default.IncludedAlienTemplates.Find(UnitState.GetMyTemplateName()) != INDEX_NONE) // has an included character template
	{
		NumUtilitySlots = default.NumberOfAlienUtilitySlots;
	}
}

static event OnPostTemplatesCreated()
{
	//	!!!! --- ENCASE THIS IN A CONFIG BOOLEAN TO STOP IT RUNNING FOR EVERYTIME A GAME IS LOADED --- !!!!
			LogDLCInfoOrder();
	//	!!!! --- ENCASE THIS IN A CONFIG BOOLEAN TO STOP IT RUNNING FOR EVERYTIME A GAME IS LOADED --- !!!!
}

static function LogDLCInfoOrder()
{
    local array<X2DownloadableContentInfo> DLCInfos;
    local X2DownloadableContentInfo DLCInfo;
        local int Index;

    DLCInfos = `ONLINEEVENTMGR.GetDLCInfos(false);
    foreach DLCInfos(DLCInfo, Index)
    {
        `LOG(Index @ DLCInfo.DLCIdentifier);
    }
}

static function AddEntwineEffect (name AbilityName, name SustainedEffect)
{
    local X2AbilityTemplateManager      AbilityManager;
    local X2AbilityTemplate             Template;
    local X2Condition_AbilityProperty    EntwineCondition;
    local X2Effect_ApplyWeaponDamage    PhysicalDamageEffect;

    // Find the relevant ability template - then treat as normal template building
    AbilityManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();
    Template = AbilityManager.FindAbilityTemplate(AbilityName);

    EntwineCondition = new class 'X2Condition_AbilityProperty';
    EntwineCondition.OwnerHasSoldierAbilities.addItem('Entwine_PA');

    // Add damage to initial bind and crush
    // EDIT: No damage to initial bind and crush. May leave Viper exposed early.

    // Ignores armor
    // Template = AbilityManager.FindAbilityTemplate(AbilityName);
    // PhysicalDamageEffect = new class'X2Effect_ApplyWeaponDamage';
    // PhysicalDamageEffect.EffectDamageValue.damage = default.EntwineDamage;
    // PhysicalDamageEffect.DamageTypes.AddItem('ViperCrush');
    // PhysicalDamageEffect.EffectDamageValue.DamageType = 'Melee';
    // PhysicalDamageEffect.bIgnoreArmor = true;
    // PhysicalDamageEffect.TargetConditions.AddItem(EntwineCondition);
    // Template.AddTargetEffect(PhysicalDamageEffect);

    // Add damage to sustained bind effect
    Template = AbilityManager.FindAbilityTemplate(SustainedEffect);

    PhysicalDamageEffect = new class'X2Effect_ApplyWeaponDamage';
    PhysicalDamageEffect.EffectDamageValue.damage = default.EntwineDamage;
    PhysicalDamageEffect.DamageTypes.AddItem('ViperCrush');
    PhysicalDamageEffect.EffectDamageValue.DamageType = 'Melee';
    PhysicalDamageEffect.bIgnoreArmor = true;
    PhysicalDamageEffect.TargetConditions.AddItem(EntwineCondition);
    Template.AddTargetEffect(PhysicalDamageEffect);
}

static function bool IsModActive(name ModName)
{
    local XComOnlineEventMgr    EventManager;
    local int                   Index;

    EventManager = `ONLINEEVENTMGR;

    for (Index = EventManager.GetNumDLC() - 1; Index >= 0; Index--) 
    {
        if (EventManager.GetDLCNames(Index) == ModName) 
        {
            return true;
        }
    }
    return false;
}

	// static function bool IsModActive(name WOTCIridarWeaponOverhaulVanilla)
	// if (class'X2DownloadableContentInfo_Playable_Aliens_WOTC'.static.IsModActive('WotC_Gameplay_GeneModding'))
	// 	{
	// 	CharTemplate.Tech.AddItem('IRI_SecondaryHeart');
	// 	}