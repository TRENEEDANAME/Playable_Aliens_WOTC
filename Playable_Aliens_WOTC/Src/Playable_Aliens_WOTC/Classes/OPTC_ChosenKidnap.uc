class OPTC_ChosenKidnap extends X2DownloadableContentInfo;

static event OnPostTemplatesCreated()
{
    local X2AbilityTemplate         Template;
    local X2AbilityTemplateManager  AbilityTemplateManager;
	local X2Condition_UnitProperty UnitPropertyCondition;

    //  Get the Ability Template Manager.
    AbilityTemplateManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();

    //  Access a specific ability template by name.
    Template = AbilityTemplateManager.FindAbilityTemplate('ChosenKidnap');

    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
        //  Modify template as you wish. 
        //  (in this case, make Chosen Kidnap unable to target aliens)

        UnitPropertyCondition = new class'X2Condition_UnitProperty';
		UnitPropertyCondition.ExcludeAlien = class'X2Character_PlayableAliens'.default.ALIENS_DIE_WHEN_CAPTURED;
		Template.AbilityTargetConditions.AddItem(UnitPropertyCondition);
    }
}