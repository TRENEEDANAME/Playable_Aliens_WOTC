class X2AbilityCooldown_PsiReanimation_PA extends X2AbilityCooldown config (PlayableAdvent);

var config int iPSIREANIMATION_BASE_NUMBERTURNS;
 
simulated function int GetNumTurns(XComGameState_Ability kAbility, XComGameState_BaseObject AffectState, XComGameState_Item AffectWeapon, XComGameState NewGameState)
{
    //pull the default number from the config
    iNumTurns = default.iPSIREANIMATION_BASE_NUMBERTURNS;
 
    if (XComGameState_Unit(AffectState).HasAbilityFromAnySource('PAPuppetShow'))
    {
        iNumTurns = 1;
    }
 
    //return the calculated number
    return iNumTurns;
}