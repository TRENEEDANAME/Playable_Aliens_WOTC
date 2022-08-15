// We're setting this up to nerf Frost Corress for playable Frost Necromancers by giving it 4 extra turns of cooldown compared to the enemy version

class X2AbilityCooldown_FrostCorress extends X2AbilityCooldown config (PlayableAdvent);
 
var config int iFROSTCORRESS_BASE_NUMBERTURNS;
 
simulated function int GetNumTurns(XComGameState_Ability kAbility, XComGameState_BaseObject AffectState, XComGameState_Item AffectWeapon, XComGameState NewGameState)
{
    //pull the default number from the config
    iNumTurns = default.iFROSTCORRESS_BASE_NUMBERTURNS;
 
    if (XComGameState_Unit(AffectState).HasAbilityFromAnySource('LiftOffAvenger')) //xcom units
    {
        iNumTurns = iNumTurns + 3; //7 including the current turn, so effectively 6
    }
 
    //return the calculated number
    return iNumTurns;
}