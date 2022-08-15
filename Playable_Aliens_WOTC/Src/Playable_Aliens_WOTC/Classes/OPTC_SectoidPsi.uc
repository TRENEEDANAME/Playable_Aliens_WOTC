class OPTC_SectoidPsi extends X2DownloadableContentInfo config(Game);

var config name MindspinName, MassMindspinName, PsiReanimationName, PsiReanimationMPName, MassReanimation_LWName;
 
static event OnPostTemplatesCreated()
{
    local X2AbilityTemplateManager  AbilityTemplateManager;
 
    //Karen!!  Get the Ability Template Manager.
    AbilityTemplateManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();
 
    AdjustMindspinAbility(AbilityTemplateManager.FindAbilityTemplate(default.MindspinName));
    AdjustPsiReanimationAbility(AbilityTemplateManager.FindAbilityTemplate(default.PsiReanimationName));
    AdjustPsiReanimationAbility(AbilityTemplateManager.FindAbilityTemplate(default.PsiReanimationMPName));
    
    AdjustMassAbility(AbilityTemplateManager.FindAbilityTemplate(default.MassReanimation_LWName));
    AdjustMassAbility(AbilityTemplateManager.FindAbilityTemplate(default.MassMindspinName));
}
 
static function AdjustMindspinAbility(X2AbilityTemplate Template)
{
    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
        //  Modify template as you wish. 
        //  Remove the OLD cooldown!
        Template.AbilityCooldown = none;
 
        //  Add the new cooldown
        Template.AbilityCooldown = new class'X2AbilityCooldown_Mindspin_PA';

		PuppetDoesNotConsume(Template);
    }
}

static function AdjustPsiReanimationAbility(X2AbilityTemplate Template)
{
    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
        //  Modify template as you wish. 
        //  Remove the OLD cooldown!
        Template.AbilityCooldown = none;
 
        //  Add the new cooldown
        Template.AbilityCooldown = new class'X2AbilityCooldown_PsiReanimation_PA';

		PuppetDoesNotConsume(Template);
    }
}
 
static function AdjustMassAbility(X2AbilityTemplate Template)
{
    //  Check if the Ability Template was successfully found by the manager.
    if (Template != none)
    {
        //  Modify template as you wish. 
        //  Remove the OLD cooldown!
        Template.AbilityCooldown = none;
 
        //  Add the new cooldown
        Template.AbilityCooldown = new class'X2AbilityCooldown_MassMindspin_PA';

		PuppetDoesNotConsume(Template);
    }
}

static function PuppetDoesNotConsume(X2AbilityTemplate Template)
{
    local X2AbilityCost Costs;
    local X2AbilityCost_ActionPoints    APCost;

    foreach Template.AbilityCosts( Costs ) 
    {
        if (X2AbilityCost_ActionPoints (Costs) != none )
        {
            APCost = X2AbilityCost_ActionPoints (Costs);
            APCost.DoNotConsumeAllSoldierAbilities.AddItem('PAPuppetShow');
        }
    }
}