class OPTC_BungeeSlime extends X2DownloadableContentInfo config(PlayableAdvent);

var config int PABUNGEESLIME_CONEEND_DIAMETER_MODIFIER;
var config int PABUNGEESLIME_CONELENGTH_MODIFIER;

static event OnPostTemplatesCreated()
{
    local X2AbilityTemplate         Template;
    local X2AbilityTemplateManager  AbilityTemplateManager;
	local X2AbilityMultiTarget_Cone ConeMultiTarget;

    //  Get the Ability Template Manager.
    AbilityTemplateManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();

    //  Access a specific ability template by name.
	Template = AbilityTemplateManager.FindAbilityTemplate('ScythingClaws');
	Template = AbilityTemplateManager.FindAbilityTemplate('BioScythingClaws');
    Template = AbilityTemplateManager.FindAbilityTemplate('BioScythingClawsM2');
	Template = AbilityTemplateManager.FindAbilityTemplate('MZ_FDFrostPuddingCleave_M1');
	Template = AbilityTemplateManager.FindAbilityTemplate('MZ_FDFrostPuddingCleave_M2');
	Template = AbilityTemplateManager.FindAbilityTemplate('MZ_FDFrostPuddingCleave_M3');

    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
        //  Modify template as you wish. 
        //  (in this case, add Bungee Slime bonus AoE to relevant abilities)
        ConeMultiTarget.AddBonusConeSize('PABungeeSlime', default.PABUNGEESLIME_CONEEND_DIAMETER_MODIFIER, default.PABUNGEESLIME_CONELENGTH_MODIFIER);
    }
}