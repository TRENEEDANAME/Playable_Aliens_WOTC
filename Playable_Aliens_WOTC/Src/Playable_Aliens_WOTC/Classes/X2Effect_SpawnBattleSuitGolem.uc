class X2Effect_SpawnBattleSuitGolem extends X2Effect_SpawnUnit;

var localized string ZombieFlyoverText;

var privatewrite name TurnedGolemName;

var name AnimationName;
var float StartAnimationMinDelaySec;
var float StartAnimationMaxDelaySec;

function name GetUnitToSpawnName(const out EffectAppliedData ApplyEffectParameters)
{
	local XComGameState_Unit TargetUnitState;
	local XComGameStateHistory History;
	local name UnitName;

	History = `XCOMHISTORY;

	TargetUnitState = XComGameState_Unit(History.GetGameStateForObjectID(ApplyEffectParameters.TargetStateObjectRef.ObjectID));
	`assert(TargetUnitState != none);

	UnitName = UnitToSpawnName;

	return UnitName;
}

function ETeam GetTeam(const out EffectAppliedData ApplyEffectParameters)
{
	return GetSourceUnitsTeam(ApplyEffectParameters);
}

simulated protected function OnEffectAdded(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState, XComGameState_Effect NewEffectState)
{
	local XComGameState_Unit DeadUnit;
	local XGUnit DeadUnitActor;
	local XComWorldData World;
	local TTile TileLocation;

	super.OnEffectAdded(ApplyEffectParameters, kNewTargetState, NewGameState, NewEffectState);

	// Jwats: Game state code polling the visualization is dirty. Event chains break the logic since the
	//			unit could have movement higher up in the event chain.
	if( `XCOMHISTORY.GetEventChainStartIndex() == -1 )
	{
		// Move the gamestate to the same position as the pawn
		DeadUnit = XComGameState_Unit(kNewTargetState);
		if( DeadUnit != none )
		{
			// TODO: This needs work. If a unit is standing on a building and ragdolls off
			// the sectoid cannot actually see the unit on the ground but instead sees
			// it on the roof. The visualizer also moves the unit upto the roof.
			World = `XWORLD;

			DeadUnitActor = XGUnit(DeadUnit.GetVisualizer());
			World.GetFloorTileForPosition(DeadUnitActor.Location, TileLocation);
			DeadUnit.SetVisibilityLocation(TileLocation);
		}
	}
}

function OnSpawnComplete(const out EffectAppliedData ApplyEffectParameters, StateObjectReference NewUnitRef, XComGameState NewGameState, XComGameState_Effect NewEffectState)
{
	local XComGameState_Unit GolemGameState, DeadUnitGameState;
	local EffectAppliedData NewEffectParams;
	local X2Effect SireGolemEffect;
	local X2EventManager EventManager;

	EventManager = `XEVENTMGR;

	GolemGameState = XComGameState_Unit(NewGameState.GetGameStateForObjectID(NewUnitRef.ObjectID));
	`assert(GolemGameState != none);

	DeadUnitGameState = XComGameState_Unit(NewGameState.GetGameStateForObjectID(ApplyEffectParameters.TargetStateObjectRef.ObjectID));
	if( DeadUnitGameState == none )
	{
		DeadUnitGameState = XComGameState_Unit(NewGameState.ModifyStateObject(class'XComGameState_Unit', ApplyEffectParameters.TargetStateObjectRef.ObjectID));
	}
	`assert(DeadUnitGameState != none);

	if (DeadUnitGameState.bReadOnly)
	{
		`RedScreen("X2Effect_SpawnBattleSuitGolem: This cannot run on a read only object: " $DeadUnitGameState.ObjectID);
	}

	// The zombie can't become a zombie once dead and save the dead unit's ref so it can be accessed later
	GolemGameState.SetUnitFloatValue(TurnedGolemName, 1, eCleanup_BeginTactical);

	// Link the source and zombie
	NewEffectParams = ApplyEffectParameters;
	NewEffectParams.EffectRef.ApplyOnTickIndex = INDEX_NONE;
	NewEffectParams.EffectRef.LookupType = TELT_AbilityTargetEffects;
	NewEffectParams.EffectRef.SourceTemplateName = class'X2Ability_Sectoid'.default.SireZombieLinkName;
	NewEffectParams.EffectRef.TemplateEffectLookupArrayIndex = 0;
	NewEffectParams.TargetStateObjectRef = GolemGameState.GetReference();

	SireGolemEffect = class'X2Effect'.static.GetX2Effect(NewEffectParams.EffectRef);
	`assert(SireGolemEffect != none);
	SireGolemEffect.ApplyEffect(NewEffectParams, GolemGameState, NewGameState);

	// Don't allow the dead unit to become a zombie again
	DeadUnitGameState.SetUnitFloatValue(TurnedGolemName, 1, eCleanup_BeginTactical);

	// Remove the dead unit from play
	EventManager.TriggerEvent('UnitRemovedFromPlay', DeadUnitGameState, DeadUnitGameState, NewGameState);

	// Make sure the zombie doesn't spawn with any action points this turn
	GolemGameState.ActionPoints.Length = 0;

	EventManager.TriggerEvent('UnitMoveFinished', GolemGameState, GolemGameState, NewGameState);
}

function AddSpawnVisualizationsToTracks(XComGameStateContext Context, XComGameState_Unit SpawnedUnit, out VisualizationActionMetadata SpawnedUnitTrack,
										XComGameState_Unit EffectTargetUnit, optional out VisualizationActionMetadata EffectTargetUnitTrack)
{	
	local X2Action_CreateDoppelganger CopyDeadUnitAction;
	local X2Action_ReanimateCorpse Action;
	local XComGameStateHistory History;
	local X2Action_PlaySoundAndFlyOver SoundAndFlyOver;
	local XComGameState_Effect SpawnGolemEffect;

	History = `XCOMHISTORY;

	// The Target is the original unit so have it wait so its cin camera doesn't end
	class'X2Action_WaitForAbilityEffect'.static.AddToVisualizationTree(EffectTargetUnitTrack, Context);

	// Setup the zombie actions
	SpawnGolemEffect = EffectTargetUnit.GetUnitAffectedByEffectState(EffectName);
	`assert(SpawnGolemEffect != none);

	// Copy the dead unit's appearance to the zombie
	CopyDeadUnitAction = X2Action_CreateDoppelganger(class'X2Action_CreateDoppelganger'.static.AddToVisualizationTree(SpawnedUnitTrack, Context));
	CopyDeadUnitAction.bWaitForOriginalUnitMessage = true;
	CopyDeadUnitAction.OriginalUnit = XGUnit(History.GetVisualizer(EffectTargetUnit.ObjectID));
	CopyDeadUnitAction.ReanimatorAbilityState = XComGameState_Ability(History.GetGameStateForObjectID(SpawnGolemEffect.ApplyEffectParameters.AbilityInputContext.AbilityRef.ObjectID));
	CopyDeadUnitAction.ShouldCopyAppearance = SpawnedUnit.GetMyTemplateName() == UnitToSpawnName;
	CopyDeadUnitAction.StartAnimationMinDelaySec = StartAnimationMinDelaySec;
	CopyDeadUnitAction.StartAnimationMaxDelaySec = StartAnimationMaxDelaySec;

	Action = X2Action_ReanimateCorpse(class'X2Action_ReanimateCorpse'.static.AddToVisualizationTree(SpawnedUnitTrack, Context));
	Action.ReanimationName = AnimationName;

	SoundAndFlyOver = X2Action_PlaySoundAndFlyOver(class'X2Action_PlaySoundAndFlyOver'.static.AddToVisualizationTree(SpawnedUnitTrack, Context));
	SoundAndFlyOver.SetSoundAndFlyOverParameters(None, ZombieFlyoverText, '', eColor_Bad, , 2.0f, true);
}

defaultproperties
{
	UnitToSpawnName="AndromedonRobotMP"
	TurnedGolemName="TurnedIntoGolem"
	EffectName="SpawnGolemEffect"
	AnimationName="HL_GetUp"
	bClearTileBlockedByTargetUnitFlag=true
	bCopyTargetAppearance=true
	StartAnimationMinDelaySec=0.0f
	StartAnimationMaxDelaySec=0.0f
}