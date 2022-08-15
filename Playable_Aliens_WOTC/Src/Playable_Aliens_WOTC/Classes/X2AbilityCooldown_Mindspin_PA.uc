class X2AbilityCooldown_Mindspin_PA extends X2AbilityCooldown_LocalAndGlobal config (PlayableAdvent);

var config int iMINDSPIN_BASE_NUMBERTURNS;
 
simulated function int GetNumTurns(XComGameState_Ability kAbility, XComGameState_BaseObject AffectState, XComGameState_Item AffectWeapon, XComGameState NewGameState)
{
    //pull the default number from the config
    iNumTurns = default.iMINDSPIN_BASE_NUMBERTURNS;
 
    if (XComGameState_Unit(AffectState).HasAbilityFromAnySource('PAPuppetShow'))
    {
        iNumTurns = 1;
    }
 
    //return the calculated number
    return iNumTurns;
}

DefaultProperties
{
	NumGlobalTurns = 1;
}