class X2AbilityCooldown_ThrowGrenade_PA extends X2AbilityCooldown config (PlayableAdvent);

var config int iTHROWGRENADE_BASE_NUMBERTURNS;
 
simulated function int GetNumTurns(XComGameState_Ability kAbility, XComGameState_BaseObject AffectState, XComGameState_Item AffectWeapon, XComGameState NewGameState)
{
    //pull the default number from the config
    iNumTurns = default.iTHROWGRENADE_BASE_NUMBERTURNS;
 
    if (XComGameState_Unit(AffectState).HasAbilityFromAnySource('PAEndOfGeneva'))
    {
        iNumTurns = 0;
    }

	if (XComGameState_Unit(AffectState).HasAbilityFromAnySource('ShadowGrenadier'))
    {
        iNumTurns = 0;
    }

	if (XComGameState_Unit(AffectState).HasAbilityFromAnySource('TotalCombat'))
    {
        iNumTurns = 0;
    }

	if (XComGameState_Unit(AffectState).HasAbilityFromAnySource('TelekineticDelivery'))
    {
        iNumTurns = 1;
    }
 
    //return the calculated number
    return iNumTurns;
}