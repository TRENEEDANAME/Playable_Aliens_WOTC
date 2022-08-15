// This allows the Frost Counterattack ability to be visible in tactical and in a soldier's main view in the armory.

class OPTC_FrostCounterattack extends X2DownloadableContentInfo;
 
static event OnPostTemplatesCreated()
{
    local X2AbilityTemplateManager  AbilityTemplateManager;
 
    //Karen!!  Get the Ability Template Manager.
    AbilityTemplateManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();
 
    AdjustFrostCounterattackAbility(AbilityTemplateManager.FindAbilityTemplate('MZ_FDMutonBayonetCounter'));
}
 
static function AdjustFrostCounterattackAbility(X2AbilityTemplate Template)
{
    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
        //  Modify template as you wish. 
		Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
		Template.bDontDisplayInAbilitySummary = true;
    }
}