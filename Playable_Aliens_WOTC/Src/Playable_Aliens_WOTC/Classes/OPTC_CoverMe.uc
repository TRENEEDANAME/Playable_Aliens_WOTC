class OPTC_CoverMe extends X2DownloadableContentInfo;
 
static event OnPostTemplatesCreated()
{
    local X2AbilityTemplateManager  AbilityTemplateManager;
 
    //Karen!!  Get the Ability Template Manager.
    AbilityTemplateManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();
 
    AdjustCoverMeAbility(AbilityTemplateManager.FindAbilityTemplate('ShadowOps_CoverMe'));
}
 
static function AdjustCoverMeAbility(X2AbilityTemplate Template)
{
    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
        //  Modify template as you wish. 
        //  Remove the OLD cooldown!
        Template.AbilityCooldown = none;
 
        //  Add the new cooldown
        Template.AbilityCooldown = new class'X2AbilityCooldown_CoverMe_PA';
    }
}