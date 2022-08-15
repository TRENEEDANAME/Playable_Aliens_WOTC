class OPTC_FrostCorress extends X2DownloadableContentInfo;
 
static event OnPostTemplatesCreated()
{
    local X2AbilityTemplateManager  AbilityTemplateManager;
 
    //Karen!!  Get the Ability Template Manager.
    AbilityTemplateManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();
 
    AdjustFrostCorressAbility(AbilityTemplateManager.FindAbilityTemplate('MZ_FDFrostCorress_M3'));
	AdjustReanimateFrostZombieAbility(AbilityTemplateManager.FindAbilityTemplate('SpectralFrostZombie_M1'));
	AdjustReanimateFrostZombieAbility3(AbilityTemplateManager.FindAbilityTemplate('SpectralFrostZombie_M3'));
}
 
static function AdjustFrostCorressAbility(X2AbilityTemplate Template)
{
    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
        //  Modify template as you wish. 
        //  Remove the OLD cooldown!
        Template.AbilityCooldown = none;
 
        //  Add the new cooldown
        Template.AbilityCooldown = new class'X2AbilityCooldown_FrostCorress';
    }
}

static function AdjustReanimateFrostZombieAbility(X2AbilityTemplate Template)
{
    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
        //  Modify template as you wish. 
        //  Remove the OLD cooldown!
        Template.AbilityCooldown = none;
 
        //  Add the new cooldown
        Template.AbilityCooldown = new class'X2AbilityCooldown_ReanimateFrostZombie';
    }
}

static function AdjustReanimateFrostZombieAbility3(X2AbilityTemplate Template)
{
    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
        //  Modify template as you wish. 
        //  Remove the OLD cooldown!
        Template.AbilityCooldown = none;
 
        //  Add the new cooldown
        Template.AbilityCooldown = new class'X2AbilityCooldown_ReanimateFrostZombie';
    }
}