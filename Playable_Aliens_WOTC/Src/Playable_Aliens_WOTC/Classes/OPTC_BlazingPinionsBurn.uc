class OPTC_BlazingPinionsBurn extends X2DownloadableContentInfo;
 
static event OnPostTemplatesCreated()
{
	local X2AbilityTemplate         Template;
    local X2AbilityTemplateManager  AbilityTemplateManager;
 
    //Karen!!  Get the Ability Template Manager.
    AbilityTemplateManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();
 
    AdjustBlazingPinionsAbility(AbilityTemplateManager.FindAbilityTemplate('BlazingPinionsStage2'));
}
 
static function AdjustBlazingPinionsAbility(X2AbilityTemplate Template)
{
	local X2Condition_AbilityProperty		AbilityCondition;
	local X2Effect_Burning					BurningEffect;
	local X2Effect_ApplyFireToWorld			FireToWorldEffect;

    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {

		AbilityCondition = new class'X2Condition_AbilityProperty';
		AbilityCondition.OwnerHasSoldierAbilities.AddItem('PABurningPinions');
		BurningEffect = class'X2StatusEffects'.static.CreateBurningStatusEffect(2, 1);
		BurningEffect.TargetConditions.AddItem(AbilityCondition);
		FireToWorldEffect = new class'X2Effect_ApplyFireToWorld';
		FireToWorldEffect.TargetConditions.AddItem(AbilityCondition);
		Template.AddMultiTargetEffect(BurningEffect);
		Template.AddMultiTargetEffect(FireToWorldEffect);

    }
}