// We're setting this up to nerf Mass Mindspin for playable Sectoids by giving it 3 extra turns of cooldown compared to the Sectoid Commanders

class X2AbilityCooldown_MassMindspin_PA extends X2AbilityCooldown_LocalAndGlobal config (PlayableAdvent);
 
var config int iMASSMINDSPIN_BASE_NUMBERTURNS;
 
simulated function int GetNumTurns(XComGameState_Ability kAbility, XComGameState_BaseObject AffectState, XComGameState_Item AffectWeapon, XComGameState NewGameState)
{
    //pull the default number from the config
    iNumTurns = default.iMASSMINDSPIN_BASE_NUMBERTURNS;
 
    if (XComGameState_Unit(AffectState).HasAbilityFromAnySource('LiftOffAvenger')) //non-xcom units
    {
        iNumTurns = iNumTurns + 3; //6 including the current turn, so effectively 5
    }
 
    if (XComGameState_Unit(AffectState).HasAbilityFromAnySource('PAPuppetShow')) //reduce for PuppetShow
    {
        iNumTurns = iNumTurns - 1; //one less
    }
 
    //return the calculated number
    return iNumTurns;
}

DefaultProperties
{
	NumGlobalTurns = 1;
}