// We're setting this up to nerf Reanimate Frost Zombie for playable Frost Necromancers by giving it 4 extra turns of cooldown compared to the enemy version

class X2AbilityCooldown_ReanimateFrostZombie extends X2AbilityCooldown config (PlayableAdvent);
 
var config int iREANIMATEFROSTZOMBIE_BASE_NUMBERTURNS;
 
simulated function int GetNumTurns(XComGameState_Ability kAbility, XComGameState_BaseObject AffectState, XComGameState_Item AffectWeapon, XComGameState NewGameState)
{
    //pull the default number from the config
    iNumTurns = default.iREANIMATEFROSTZOMBIE_BASE_NUMBERTURNS;
 
    if (XComGameState_Unit(AffectState).HasAbilityFromAnySource('LiftOffAvenger')) //xcom units
    {
        iNumTurns = iNumTurns + 4; //6 including the current turn, so effectively 5
    }

	if (XComGameState_Unit(AffectState).HasAbilityFromAnySource('PAJackedFrostZombies')) //reduce for Jacked Frost Zombies
    {
        iNumTurns = iNumTurns - 2; //two less
    }
 
    //return the calculated number
    return iNumTurns;
}