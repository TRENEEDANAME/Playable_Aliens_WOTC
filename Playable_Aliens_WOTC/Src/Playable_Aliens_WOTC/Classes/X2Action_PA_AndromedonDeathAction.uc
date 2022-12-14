//-----------------------------------------------------------
// Used by the visualizer system to control a Visualization Actor
//-----------------------------------------------------------

class X2Action_PA_AndromedonDeathAction extends X2Action_PlayAnimation;

var private StateObjectReference SpawnedPA_RobotUnitReference;
var private TTile CurrentTile;
var private bool bReceivedMeshSwapNotify;

static function bool AllowOverrideActionDeath(VisualizationActionMetadata ActionMetadata, XComGameStateContext Context)
{
	local XComGameState_Unit PA_AndromedonUnit;
	local XComGameStateHistory History;
	local int i;
	local XComGameStateContext TestContext;
	local XComGameStateContext_Ability TestAbilityContext;
	local bool bFoundAssociatedSwitch;

	PA_AndromedonUnit = XComGameState_Unit(ActionMetadata.StateObject_NewState);

	// Check to see if the switch occurs if the unit is currently alive,
	// otherwise use this override death action
	if( (PA_AndromedonUnit != none) )
	{
		History = `XCOMHISTORY;

		// Search through the chain to find when the Andromedon's SwitchToRobot ability occurs
		i = Context.EventChainStartIndex;
		TestContext = Context;
		bFoundAssociatedSwitch = false;
		while( !bFoundAssociatedSwitch && (!TestContext.bLastEventInChain) )
		{
			TestContext = History.GetGameStateFromHistory(i).GetContext();

			TestAbilityContext = XComGameStateContext_Ability(TestContext);

			if( TestAbilityContext != none &&
				TestAbilityContext.DesiredVisualizationBlockIndex == Context.AssociatedState.HistoryIndex &&
				TestAbilityContext.InputContext.AbilityTemplateName == 'PA_SwitchToRobot' &&
				TestAbilityContext.InputContext.SourceObject.ObjectID == PA_AndromedonUnit.ObjectID )
			{
				// We found a SwitchToRobot that wants to visualize in this context, so do the switch
				bFoundAssociatedSwitch = true;
			}

			++i;
		}

		return bFoundAssociatedSwitch;
	}

	return false;
}

function Init()
{
	local XComGameState_Unit PA_AndromedonUnit, SpawnedPA_RobotUnit;
	local UnitValue SpawnedUnitValue;
	local XComGameStateHistory History;
	local int i;
	local XComGameStateContext Context;
	local XComGameStateContext_Ability TestAbilityContext;

	super.Init();

	Params.AnimName = 'HL_RobotBattleSuitStart';
	History = `XCOMHISTORY;

	// Search through the chain to find when the Andromedon's SwitchToRobot ability occurs
	i = StateChangeContext.EventChainStartIndex;
	Context = StateChangeContext;
	while( (PA_AndromedonUnit == none) && (!Context.bLastEventInChain))
	{
		Context = History.GetGameStateFromHistory(i).GetContext();

		TestAbilityContext = XComGameStateContext_Ability(Context);

		if( TestAbilityContext!= none &&
			TestAbilityContext.InputContext.AbilityTemplateName == 'PA_SwitchToRobot' &&
			TestAbilityContext.InputContext.SourceObject.ObjectID == UnitPawn.ObjectID )
		{
			// Get the up to date version of this unit so we can find the associated spawned robot
			PA_AndromedonUnit = XComGameState_Unit(TestAbilityContext.AssociatedState.GetGameStateForObjectID(UnitPawn.ObjectID));
			PA_AndromedonUnit.GetUnitValue(class'X2Effect_SpawnUnit'.default.SpawnedUnitValueName, SpawnedUnitValue);
		}

		++i;
	}

	if( PA_AndromedonUnit == none )
	{
		`RedScreenOnce("X2Action_AndromedonDeathAction: Andromedon not found, should have come from SwitchToRobot GameState -dslonneger @gameplay");
	}

	SpawnedPA_RobotUnit = XComGameState_Unit(History.GetGameStateForObjectID(SpawnedUnitValue.fValue));
	if( SpawnedPA_RobotUnit == none )
	{
		`RedScreenOnce("X2Action_AndromedonDeathAction: AndromedonRobot not found, Andromedon needs to have the reference -dslonneger @gameplay");
	}

	SpawnedPA_RobotUnitReference = SpawnedPA_RobotUnit.GetReference();
}

event OnAnimNotify(AnimNotify ReceiveNotify)
{
	local XComAnimNotify_NotifyTarget NotifyTarget;

	NotifyTarget = XComAnimNotify_NotifyTarget(ReceiveNotify);
	if(NotifyTarget != none)
	{
		bReceivedMeshSwapNotify = true;
	}
}

simulated state Executing
{
Begin:
	StopAllPreviousRunningActions(Unit);

	//Just minimal setup. The Andromedon robot spawn will take care of most of our visualization for this
	UnitPawn.EnableRMA(true, true);
	UnitPawn.EnableRMAInteractPhysics(true);
	UnitPawn.bSkipIK = true;
	UnitPawn.bPlayedDeath = true;

	CompleteAction();
}

defaultproperties
{
	bReceivedMeshSwapNotify=false
}