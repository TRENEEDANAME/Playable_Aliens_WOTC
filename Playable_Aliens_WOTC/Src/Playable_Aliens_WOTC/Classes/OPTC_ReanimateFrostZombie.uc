class OPTC_ReanimateFrostZombie extends X2DownloadableContentInfo;

static event OnPostTemplatesCreated()
{
    local X2AbilityTemplate         Template;
    local X2AbilityTemplateManager  AbilityTemplateManager;

    //  Get the Ability Template Manager.
    AbilityTemplateManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();

    //  Access a specific ability template by name.
    Template = AbilityTemplateManager.FindAbilityTemplate('MZ_FDReanimateFrostZombie_M3');

    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
        //  Modify template as you wish. 
        //  (in this case, make the M3 version of Reanimate Frost Zombie (granted by Jacked Frost Zombies) override the standard version of Reanimate Frost Zombie if acquired)
        Template.OverrideAbilities.AddItem('MZ_FDReanimateFrostZombie_M1');
    }
}