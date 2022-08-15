class OPTC_PsiReanimation extends X2DownloadableContentInfo config(Game);

var config name PsiReanimationMPAbility;

static event OnPostTemplatesCreated()
{
    local X2AbilityTemplate         Template;
    local X2AbilityTemplateManager  AbilityTemplateManager;

    //  Get the Ability Template Manager.
    AbilityTemplateManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();

    //  Access a specific ability template by name.
    Template = AbilityTemplateManager.FindAbilityTemplate(default.PsiReanimationMPAbility);

    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
        //  Modify template as you wish. 
        //  (in this case, make the MP version of Psi Reanimation (granted by Necromancer) override the standard version of Psi Reanimation if acquired)
        Template.OverrideAbilities.AddItem('PsiReanimation');
    }
}