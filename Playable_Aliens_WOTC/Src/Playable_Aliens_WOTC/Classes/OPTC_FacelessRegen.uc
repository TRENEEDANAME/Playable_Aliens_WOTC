class OPTC_FacelessRegen extends X2DownloadableContentInfo;
 
static event OnPostTemplatesCreated()
{
	local X2AbilityTemplate         Template;
    local X2AbilityTemplateManager  AbilityTemplateManager;
 
    //Karen!!  Get the Ability Template Manager.
    AbilityTemplateManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();
 
    AdjustFacelessRegenAbility(AbilityTemplateManager.FindAbilityTemplate('FacelessInit'));
}
 
static function AdjustFacelessRegenAbility(X2AbilityTemplate Template)
{
	local X2Effect_Regeneration RegenerationEffect;

    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
		RegenerationEffect.bRemoveWhenTargetDies = true;
    }
}