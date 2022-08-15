class AnimUpdate extends X2DownloadableContentInfo config (PAAnims);

var config array<name> IncludeViperClassTemplates;
var config array<name> IncludeSectoidClassTemplates;


static function UpdateAnimations(out array<AnimSet> CustomAnimSets, XComGameState_Unit UnitState, XComUnitPawn Pawn)
{
//	local X2WeaponTemplate PrimaryWeaponTemplate;
	local int ViperTemplateCheck, SectoidTemplateCheck;

	if (UnitState == none || !UnitState.IsSoldier())
	{
		return;
	}
	ViperTemplateCheck = default.IncludeViperClassTemplates.FIND(UnitState.GetSoldierClassTemplateName());
	if (ViperTemplateCheck != INDEX_NONE)
	{
			CustomAnimSets.AddItem(AnimSet(`CONTENT.RequestGameArchetype("PA_VIPER_ANIM.Anims.AS_Grenade")));

	}
	SectoidTemplateCheck = default.IncludeSectoidClassTemplates.FIND(UnitState.GetSoldierClassTemplateName());
	if (SectoidTemplateCheck != INDEX_NONE)
	{
			CustomAnimSets.AddItem(AnimSet(`CONTENT.RequestGameArchetype("PA_Sectoid_ANIM.Anims.AS_Grenade")));
			CustomAnimSets.AddItem(AnimSet(`CONTENT.RequestGameArchetype("PA_Sectoid_Anim.Anims.AS_Sectoid_Custom")));

	}
}