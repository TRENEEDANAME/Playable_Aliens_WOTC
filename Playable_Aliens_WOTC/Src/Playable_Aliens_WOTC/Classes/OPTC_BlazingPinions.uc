class OPTC_BlazingPinions extends X2DownloadableContentInfo config(Game);

var config name BlazingPinionsAbility;

static event OnPostTemplatesCreated()
{
    local X2AbilityTemplate         Template;
    local X2AbilityTemplateManager  AbilityTemplateManager;

    //  Get the Ability Template Manager.
    AbilityTemplateManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();

    //  Access a specific ability template by name.
    Template = AbilityTemplateManager.FindAbilityTemplate(default.BlazingPinionsAbility);

    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
        //  Modify template as you wish. 
        //  (in this case, make the standard version of Blazing Pinions (granted by Serious Bomber) override the MP version of Blazing Pinions if acquired)
        Template.OverrideAbilities.AddItem('BlazingPinionsStage1MP');
    }
}