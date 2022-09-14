class X2Ability_PA_AndromedonRobot extends X2Ability;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;

	Templates.AddItem(Create_PA_ImmunitiesAbility());
	Templates.AddItem(Create_PA_AcidTrailAbility());
	Templates.AddItem(PurePassive('PA_AndromedonRobotAcidTrail_Passive', "img:///UILibrary_PerkIcons.UIPerk_andromedon_poisoncloud"));
	Templates.AddItem(Create_PA_RebootAbility());
	Templates.AddItem(Create_PA_AndromedonEvacDeath());
	return Templates;
}

static function X2AbilityTemplate Create_PA_ImmunitiesAbility()
{
	local X2AbilityTemplate Template;
	local X2AbilityTrigger_UnitPostBeginPlay Trigger;
	local X2Effect_DamageImmunity DamageImmunity;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_AndromedonRobotImmunities');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_andromedon_robotbattlesuit"; // TODO: This needs to be changed

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;

	Template.AbilityToHitCalc = default.DeadEye;

	Template.AbilityTargetStyle = default.SelfTarget;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	// Build the immunities
	DamageImmunity = new class'X2Effect_DamageImmunity';
	DamageImmunity.BuildPersistentEffect(1, true, true, true);
	DamageImmunity.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage,,,Template.AbilitySourceName);
	DamageImmunity.ImmuneTypes.AddItem('Fire');
	DamageImmunity.ImmuneTypes.AddItem('Poison');
	DamageImmunity.ImmuneTypes.AddItem('Acid');
	DamageImmunity.ImmuneTypes.AddItem(class'X2Item_DefaultDamageTypes'.default.ParthenogenicPoisonType);
	DamageImmunity.ImmuneTypes.AddItem('Unconscious');
	DamageImmunity.ImmuneTypes.AddItem('Panic');

	Template.AddTargetEffect(DamageImmunity);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

//The Andromedon Robot leaves a trail of Acid pools when it moves
static function X2AbilityTemplate Create_PA_AcidTrailAbility()
{
	local X2AbilityTemplate Template;
	local X2AbilityTrigger_EventListener EventListener;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_AndromedonRobotAcidTrail');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_andromedon_poisoncloud"; // TODO: This needs to be changed

	Template.AdditionalAbilities.AddItem('PA_AndromedonRobotAcidTrail_Passive');

	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;

	//This ability fires as part of game states where the Andromedon robot moves
	EventListener = new class'X2AbilityTrigger_EventListener';
	EventListener.ListenerData.Deferral = ELD_OnStateSubmitted;
	EventListener.ListenerData.EventID = 'UnitMoveFinished';
	EventListener.ListenerData.Filter = eFilter_Unit;
	EventListener.ListenerData.EventFn = BuildPA_AcidTrail_Self;
	Template.AbilityTriggers.AddItem(EventListener);

	// Targets the Andromedon unit so it can be replaced by the andromedon robot;
	Template.AbilityTargetStyle = default.SelfTarget;

	//NOTE: This ability does not require a build game state or visualization function because this is handled
	//      by the event listener and associated functionality when creating world tile effects
	Template.BuildNewGameStateFn = Empty_BuildGameState;

	return Template;
}

function XComGameState Empty_BuildGameState( XComGameStateContext Context )
{
	return none;
}

//Responds when the Andromedon robot has finished moving and creates a Acid trail along its path
//Must be static, because the event listener source will be an XComGameState_Ability, not the X2Ability_AndromedonRobot.
static function EventListenerReturn BuildPA_AcidTrail_Self(Object EventData, Object EventSource, XComGameState GameState, Name Event, Object CallbackData)
{
	local XComGameStateContext_Ability MoveContext;
	local int TileIndex;	
	local XComGameState NewGameState;
	local float AbilityRadius;
	local XComWorldData WorldData;
	local vector TargetLocation;
	local array<TilePosPair> OutTiles;
	local TTile MovementTile;
	local XComGameState_Unit UnitStateObject;
	local XComGameStateHistory History;

	MoveContext = XComGameStateContext_Ability(GameState.GetContext());

	History = `XCOMHISTORY;
	WorldData = `XWORLD;

	//Define how wide the Acid will spread
	AbilityRadius = class'XComWorldData'.const.WORLD_StepSize * 0.5f;

	//These branches define different situations for which we should generate tile effects. Our first step is to 
	//see what tiles we will be affecting
	if( MoveContext.InputContext.MovementPaths[0].MovementTiles.Length > 0 )
	{		
		//If this move was uninterrupted, or we do not have a resume
		if( MoveContext.InterruptionStatus == eInterruptionStatus_None || MoveContext.ResumeHistoryIndex < 0 )
		{
			//Build the list of tiles that will be affected by the Acid and set it into our tile update game state object			
			for(TileIndex = 0; TileIndex < MoveContext.InputContext.MovementPaths[0].MovementTiles.Length; ++TileIndex)
			{
				MovementTile = MoveContext.InputContext.MovementPaths[0].MovementTiles[TileIndex];
				TargetLocation = WorldData.GetPositionFromTileCoordinates(MovementTile);				
				WorldData.CollectTilesInSphere( OutTiles, TargetLocation, AbilityRadius );
			}
		}
	}
	else
	{
		//This may occur during teleports, spawning, or other instaneous modes of travel
		UnitStateObject = XComGameState_Unit(History.GetGameStateForObjectID(MoveContext.InputContext.SourceObject.ObjectID));
		
		UnitStateObject.GetKeystoneVisibilityLocation(MovementTile);
		TargetLocation = WorldData.GetPositionFromTileCoordinates(MovementTile);		
		
		WorldData.CollectTilesInSphere( OutTiles, TargetLocation, AbilityRadius );
	}
		
	//If we will be adding Acid to any tiles, do the rest of the set up
	if( OutTiles.Length > 0 )
	{
		//Build the game state for the Acid trail update
		NewGameState = History.CreateNewGameState(true, class'XComGameStateContext_AreaDamage'.static.CreateXComGameStateContext());

		if( UnitStateObject == none )
		{
			//This may occur during teleports, spawning, or other instaneous modes of travel
			UnitStateObject = XComGameState_Unit(History.GetGameStateForObjectID(MoveContext.InputContext.SourceObject.ObjectID));
		}
		class'X2Effect_ApplyAcidToWorld'.static.AddAcidToTilesShared('X2Effect_ApplyAcidToWorld', NewGameState, OutTiles, UnitStateObject);
	
		//Submit the new game state to the rules engine
		`GAMERULES.SubmitGameState(NewGameState);
	}

	return ELR_NoInterrupt;
}

//* ==================================================================================
//*	Reboot ability
//* ==================================================================================

static function X2AbilityTemplate Create_PA_RebootAbility()
{
	local X2AbilityTemplate Template;
	local X2AbilityTrigger_EventListener EventListener;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'RobotReboot_Reboot');

	// Setup
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_andromedon_robotbattlesuit";
	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;

	// This ability fires when the OLD Andromedon Shell dies
	EventListener = new class'X2AbilityTrigger_EventListener';
	EventListener.ListenerData.Deferral = ELD_OnStateSubmitted;
	EventListener.ListenerData.EventID = 'AndromedonToRobot_Reboot';
	EventListener.ListenerData.Filter = eFilter_Unit;
	EventListener.ListenerData.EventFn = class'XComGameState_Ability'.static.AbilityTriggerEventListener_Self;
	EventListener.ListenerData.Priority = 50;
	Template.AbilityTriggers.AddItem(EventListener);

	// Targets the Andromedon unit so it can be replaced by the andromedon robot;
	Template.AbilityTargetStyle = default.SelfTarget;

	// Add dead eye to guarantee the explosion occurs
	Template.AbilityToHitCalc = default.DeadEye;

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = RobotReboot_BuildVisualization;
	Template.CinescriptCameraType = "Andromedon_RobotBattlesuit";

	return Template;
}

//mostly copied from original ability as all this visualisation stuff goes above my head
simulated function RobotReboot_BuildVisualization(XComGameState VisualizeGameState)
{
	local XComGameStateContext_Ability	Context;
	local VisualizationActionMetadata	RobotUnitTrack;
	local XComGameState_Unit			RobotUnit;

	Context = XComGameStateContext_Ability(VisualizeGameState.GetContext());

	RobotUnit = XComGameState_Unit(VisualizeGameState.GetGameStateForObjectID(Context.InputContext.SourceObject.ObjectID));
	//`assert(RobotUnit != none);	//Removed I hate CTD asserts

	// The Spawned unit should appear and play its change animation
	RobotUnitTrack.StateObject_OldState = `XCOMHISTORY.GetGameStateForObjectID(RobotUnit.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	RobotUnitTrack.StateObject_NewState = RobotUnit;
	RobotUnitTrack.VisualizeActor = `XCOMHISTORY.GetVisualizer(RobotUnit.ObjectID);

	class'X2Action_ShowSpawnedUnit'.static.AddToVisualizationTree(RobotUnitTrack, Context);
	//class'X2Action_RebootRobot'.static.AddToVisualizationTree(RobotUnitTrack, Context);
}

//mostly copied from original ability as all this visualisation stuff goes above my head
function Statue_BuildVisualization(XComGameState VisualizeGameState)
{
	local XComGameStateContext_Ability	Context;
	local XComGameState_Destructible DestructibleState;
	local XComGameState_Unit UnitState;
	local VisualizationActionMetadata BuildTrack, UnitTrack;

	TypicalAbility_BuildVisualization(VisualizeGameState);

	Context = XComGameStateContext_Ability(VisualizeGameState.GetContext());

	foreach VisualizeGameState.IterateByClassType(class'XComGameState_Destructible', DestructibleState)
	{
		break;
	}

	BuildTrack.StateObject_NewState = DestructibleState;
	BuildTrack.StateObject_OldState = DestructibleState;
	BuildTrack.VisualizeActor = `XCOMHISTORY.GetVisualizer(DestructibleState.ObjectID);

	class'X2Action_ShowSpawnedDestructible'.static.AddToVisualizationTree(BuildTrack, Context);

	//necromancy ! ... bring back the dead unit actor that UnitRemovedFromPlay takes away ...
	UnitState = XComGameState_Unit(VisualizeGameState.GetGameStateForObjectID(Context.InputContext.SourceObject.ObjectID));
	UnitTrack.StateObject_OldState = `XCOMHISTORY.GetGameStateForObjectID(UnitState.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	UnitTrack.StateObject_NewState = UnitState;
	UnitTrack.VisualizeActor = `XCOMHISTORY.GetVisualizer(UnitState.ObjectID);

	class'X2Action_ShowSpawnedUnit'.static.AddToVisualizationTree(UnitTrack, Context);
	//class'X2Action_RebootRobot'.static.AddToVisualizationTree(UnitTrack, Context);
}

//* ==================================================================================
//*	Shut down ability
//* ==================================================================================

static function X2AbilityTemplate Create_PA_AndromedonEvacDeath()
{
	local X2AbilityTemplate				Template;
	local X2AbilityCost_ActionPoints	ActionPointCost;

	//local X2Condition_UnitValue 		UnitValue;

	//local X2Effect_KillUnit 			KillEffect;
	local X2Effect_PA_SwitchToRobot	SwitchToRobotEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_AndromedonEvacDeath');
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);	//no evac in MP!

    //setup 
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_andromedon_robotbattlesuit";
	Template.AbilitySourceName = 'eAbilitySource_Debuff';
	Template.Hostility = eHostility_Neutral;
	Template.ConcealmentRule = eConceal_Always;
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_AlwaysShow;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	//free cost but requires at least 1AP, ends turn
	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	ActionPointCost.bFreeCost = false;
	Template.AbilityCosts.AddItem(ActionPointCost);

	// Kill the unit Effect
	// The target will now be turned into a cloned robot
	SwitchToRobotEffect = new class'X2Effect_PA_SwitchToRobot';
	SwitchToRobotEffect.BuildPersistentEffect(1);
	SwitchToRobotEffect.bForceDead = true;
	Template.AddTargetEffect(SwitchToRobotEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = SwitchToRobot_BuildVisualization;
	Template.MergeVisualizationFn = SwitchToRobot_VisualizationMerge;

	Template.bDontDisplayInAbilitySummary = true;

	Template.bSkipFireAction = false;
	Template.bShowActivation = false;

	Template.bSkipExitCoverWhenFiring = true;

	return Template;
}


//mostly copied from original ability as all this visualisation stuff goes above my head
simulated function SwitchToRobot_BuildVisualization(XComGameState VisualizeGameState)
{
	local XComGameStateContext_Ability			Context;
	local XComGameStateHistory					History;
	local VisualizationActionMetadata			EmptyTrack, SpawnedUnitTrack, DeadUnitTrack;
	local XComGameState_Unit					SpawnedUnit, DeadUnit; 
	local UnitValue								SpawnedUnitValue;
	local X2Effect_PA_SwitchToRobot			SwitchToRobotEffect;
	local XComGameState_Ability					AbilityState;
	local X2AbilityTemplate						AbilityTemplate;
	local X2Action_AndromedonRobotSpawn 		RobotSpawn;

	Context = XComGameStateContext_Ability(VisualizeGameState.GetContext());
	History = `XCOMHISTORY;

	DeadUnit = XComGameState_Unit(VisualizeGameState.GetGameStateForObjectID(Context.InputContext.PrimaryTarget.ObjectID));
		//`assert(DeadUnit != none);	//removed to stop potential CTD

	DeadUnit.GetUnitValue(class'X2Effect_SpawnUnit'.default.SpawnedUnitValueName, SpawnedUnitValue);

	// The Spawned unit should appear and play its change animation
	DeadUnitTrack = EmptyTrack;
	DeadUnitTrack.StateObject_OldState = DeadUnit;
	DeadUnitTrack.StateObject_NewState = DeadUnitTrack.StateObject_OldState;
	DeadUnitTrack.VisualizeActor = History.GetVisualizer(DeadUnit.ObjectID);

	// The Spawned unit should appear and play its change animation
	SpawnedUnitTrack = EmptyTrack;
	SpawnedUnitTrack.StateObject_OldState = History.GetGameStateForObjectID(SpawnedUnitValue.fValue, eReturnType_Reference, VisualizeGameState.HistoryIndex);
	SpawnedUnitTrack.StateObject_NewState = SpawnedUnitTrack.StateObject_OldState;
	SpawnedUnit = XComGameState_Unit(SpawnedUnitTrack.StateObject_NewState);
		//`assert(SpawnedUnit != none);	//removed to stop potential CTD
	SpawnedUnitTrack.VisualizeActor = History.GetVisualizer(SpawnedUnit.ObjectID);

	// Only first target effect if X2Effect_SwitchToRobot
	SwitchToRobotEffect = X2Effect_PA_SwitchToRobot(Context.ResultContext.TargetEffectResults.Effects[0]);

	if( SwitchToRobotEffect == none )
	{
		// This can happen due to replays. In replays, when moving Context visualizations forward the Context has not been fully filled in.
		AbilityState = XComGameState_Ability(History.GetGameStateForObjectID(Context.InputContext.AbilityRef.ObjectID));
		AbilityTemplate = AbilityState.GetMyTemplate();
		SwitchToRobotEffect = X2Effect_PA_SwitchToRobot(AbilityTemplate.AbilityTargetEffects[0]);
	}

	if( SwitchToRobotEffect == none )
	{
		RobotSpawn = X2Action_AndromedonRobotSpawn(class'X2Action_AndromedonRobotSpawn'.static.AddToVisualizationTree(SpawnedUnitTrack, Context, true, none));
		RobotSpawn.AndromedonUnit = XGUnit(`XCOMHISTORY.GetVisualizer(DeadUnit.ObjectID) );
	}
	else
	{
		//SwitchToRobotEffect.AddSpawnVisualizationsToTracks(Context, SpawnedUnit, SpawnedUnitTrack, DeadUnit, DeadUnitTrack);
		//emptied that bit of code to here so it should always run ??
		RobotSpawn = X2Action_AndromedonRobotSpawn(class'X2Action_AndromedonRobotSpawn'.static.AddToVisualizationTree(SpawnedUnitTrack, Context, true, none));
		RobotSpawn.AndromedonUnit = XGUnit(`XCOMHISTORY.GetVisualizer(DeadUnit.ObjectID) );
	}
}

//mostly copied from original ability as all this visualisation stuff goes above my head
static function SwitchToRobot_VisualizationMerge(X2Action BuildTree, out X2Action VisualizationTree)
{
	local X2Action						DeathAction;		
	local XComGameStateVisualizationMgr LocalVisualizationMgr;

	LocalVisualizationMgr = `XCOMVISUALIZATIONMGR;

	//changed from class'X2Action_AndromedonDeathAction', this decides 'where' the new robot is spawned in visually
	//set to the end of the previous action, creates a small 'extra' explosion, but that is liveable tbh
	DeathAction = LocalVisualizationMgr.GetNodeOfType(VisualizationTree, class'X2Action_RebootRobot', none, BuildTree.Metadata.StateObjectRef.ObjectID);

	BuildTreeStartNode = LocalVisualizationMgr.GetNodeOfType(BuildTree, class'X2Action_MarkerTreeInsertBegin');	
	BuildTreeEndNode = LocalVisualizationMgr.GetNodeOfType(BuildTree, class'X2Action_MarkerTreeInsertEnd');

	if (BuildTreeStartNode != none && BuildTreeEndNode != none && DeathAction != none)
	{
		LocalVisualizationMgr.InsertSubtree(BuildTreeStartNode, BuildTreeEndNode, DeathAction);
	}
}