class X2AbilityCooldown_CoverMe_PA extends X2AbilityCooldown config (PlayableAdvent);

var config int iCOVERME_BASE_NUMBERTURNS;
 
simulated function int GetNumTurns(XComGameState_Ability kAbility, XComGameState_BaseObject AffectState, XComGameState_Item AffectWeapon, XComGameState NewGameState)
{
    //pull the default number from the config
    iNumTurns = default.iCOVERME_BASE_NUMBERTURNS;
 
    if (XComGameState_Unit(AffectState).HasAbilityFromAnySource('PACountingOnYou'))
    {
        iNumTurns = 0;
    }
 
    //return the calculated number
    return iNumTurns;
}