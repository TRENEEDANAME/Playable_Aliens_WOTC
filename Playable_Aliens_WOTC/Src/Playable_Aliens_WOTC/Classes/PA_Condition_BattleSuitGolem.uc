// This shit is for a busted ability, ignore it for now

class PA_Condition_BattleSuitGolem extends X2Condition config(XComPlayableAdvent);

var config array<name> IncludeTypes;
var config array<name> IncludeTemplates;

event name CallMeetsCondition(XComGameState_BaseObject kTarget) 
{ 
	local XComGameState_Unit UnitState;
	local name UnitTypeName;

	UnitState = XComGameState_Unit(kTarget);
	if (UnitState != none)
		UnitTypeName = UnitState.GetMyTemplate().CharacterGroupName;

	if (IncludeTypes.Length > 0)
	{
		if (IncludeTypes.Find(UnitTypeName) > -1){	return 'AA_Success';	}
	}

	if (IncludeTemplates.Length > 0)
	{
		if (IncludeTemplates.Find(UnitState.GetMyTemplateName()) > -1){	return 'AA_Success';	}
	}

	if ( UnitState.AffectedByEffectNames.Find('BattleSuitGolem') != INDEX_NONE ) {	return 'AA_Success';	}
	
	return 'AA_UnitIsWrongType';
}