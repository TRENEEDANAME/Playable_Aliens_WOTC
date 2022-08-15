class X2Item_PAArmors extends X2Item config (AlienGearCosts);

var config int PLATED_ALIEN_ARMOR_BLACKMARKET_VALUE;
var config array<name> PLATED_ALIEN_ARMOR_REQUIRED_TECHS;
var config array<name> PLATED_ALIEN_ARMOR_BUILD_COST_TYPE;
var config array<int> PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY;
var config int PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;

var config int POWERED_ALIEN_ARMOR_BLACKMARKET_VALUE;
var config array<name> POWERED_ALIEN_ARMOR_REQUIRED_TECHS;
var config array<name> POWERED_ALIEN_ARMOR_BUILD_COST_TYPE;
var config array<int> POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY;
var config int POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Armors;

	Armors.AddItem(CreateSectoidArmor());
	Armors.AddItem(CreatePlatedSectoidArmor());
	Armors.AddItem(CreatePoweredSectoidArmor());

	Armors.AddItem(CreateViperArmor());
	Armors.AddItem(CreatePlatedViperArmor());
	Armors.AddItem(CreatePoweredViperArmor());

	Armors.AddItem(CreateMutonArmor());
	Armors.AddItem(CreatePlatedMutonArmor());
	Armors.AddItem(CreatePoweredMutonArmor());

	Armors.AddItem(CreateMutonStalkerArmor());
	Armors.AddItem(CreatePlatedMutonStalkerArmor());
	Armors.AddItem(CreatePoweredMutonStalkerArmor());

	Armors.AddItem(CreateMutonStrikerArmor());
	Armors.AddItem(CreatePlatedMutonStrikerArmor());
	Armors.AddItem(CreatePoweredMutonStrikerArmor());

	Armors.AddItem(CreateAndromedonArmor());
	Armors.AddItem(CreatePlatedAndromedonArmor());
	Armors.AddItem(CreatePoweredAndromedonArmor());

	Armors.AddItem(CreateBerserkerArmor());
	Armors.AddItem(CreatePlatedBerserkerArmor());
	Armors.AddItem(CreatePoweredBerserkerArmor());

	Armors.AddItem(CreateArchonArmor());
	Armors.AddItem(CreatePlatedArchonArmor());
	Armors.AddItem(CreatePoweredArchonArmor());

	Armors.AddItem(CreateFacelessArmor());
	Armors.AddItem(CreatePlatedFacelessArmor());
	Armors.AddItem(CreatePoweredFacelessArmor());

	Armors.AddItem(CreateFrostNecromancerArmor());
	Armors.AddItem(CreatePlatedFrostNecromancerArmor());
	Armors.AddItem(CreatePoweredFrostNecromancerArmor());

	return Armors;
}

static function X2DataTemplate CreateBerserkerArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'BerserkerArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorConv";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.ArmorTechCat = 'conventional';
	Template.ArmorCat = 'berserker';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional";

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, 0, true);

	return Template;
}


static function X2DataTemplate CreatePlatedBerserkerArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedBerserkerArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPlat";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPlatedArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.ArmorCat = 'berserker';
	Template.Tier = 150;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";
	Template.Abilities.AddItem('AlloyKnuckleGuards');
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.PLATED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_PLATED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, 1);

	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;
	Template.Requirements.RequiredSoldierClass = 'BerserkerClass';
	Template.Requirements.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;

			for (i = 0; i < default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreatePoweredBerserkerArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredBerserkerArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPowr";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPoweredArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.ArmorCat = 'berserker';
	Template.Tier = 160;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";
	Template.Abilities.AddItem('EleriumKnuckleGuards');
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.POWERED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_MITIGATION_AMOUNT);

	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;
	Template.Requirements.RequiredSoldierClass = 'BerserkerClass';
	Template.Requirements.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;

			for (i = 0; i < default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateFacelessArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'FacelessArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorConv";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.ArmorTechCat = 'conventional';
	Template.ArmorCat = 'faceless';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional";

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, 0, true);

	return Template;
}


static function X2DataTemplate CreatePlatedFacelessArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedFacelessArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPlat";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPlatedArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.ArmorCat = 'faceless';
	Template.Tier = 150;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";
	Template.Abilities.AddItem('AlloyClawCovers');
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.PLATED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_PLATED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, 1);

	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;

	Template.Requirements.RequiredSoldierClass = 'FacelessClass';
	Template.Requirements.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;

			for (i = 0; i < default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreatePoweredFacelessArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredFacelessArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPowr";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPoweredArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.ArmorCat = 'faceless';
	Template.Tier = 160;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";
	Template.Abilities.AddItem('EleriumClawCovers');
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.POWERED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_MITIGATION_AMOUNT);

	Template.Requirements.RequiredSoldierClass = 'FacelessClass';
	Template.Requirements.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;

			for (i = 0; i < default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateAndromedonArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'AndromedonArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorConv";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.ArmorTechCat = 'conventional';
	Template.ArmorCat = 'andromedon';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional";

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, 0, true);

	return Template;
}


static function X2DataTemplate CreatePlatedAndromedonArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedAndromedonArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPlat";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPlatedArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.ArmorCat = 'andromedon';
	Template.Tier = 150;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_PLATED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, 1);

	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.PLATED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	Template.Requirements.RequiredSoldierClass = 'AndromedonClass';
	Template.Requirements.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;

			for (i = 0; i < default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreatePoweredAndromedonArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredAndromedonArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPowr";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPoweredArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.ArmorCat = 'andromedon';
	Template.Tier = 160;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.POWERED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_MITIGATION_AMOUNT);

	Template.Requirements.RequiredSoldierClass = 'AndromedonClass';
	Template.Requirements.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;

			for (i = 0; i < default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


static function X2DataTemplate CreateSectoidArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'SectoidArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorConv";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.ArmorTechCat = 'conventional';
	Template.ArmorCat = 'Sectoid';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional";

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, 0, true);

	return Template;
}


static function X2DataTemplate CreatePlatedSectoidArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost	Resources;
	local int i;
	local StrategyRequirement AltReq;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedSectoidArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPlat";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPlatedArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.ArmorCat = 'sectoid';
	Template.Tier = 150;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_PLATED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, 1);

	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.PLATED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	Template.Requirements.RequiredSoldierClass = 'SectoidClass';
	Template.Requirements.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;

	AltReq.RequiredSoldierClass = 'SectoidAbjurerClass';
	AltReq.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

			for (i = 0; i < default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreatePoweredSectoidArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost	Resources;
	local int i;
	local StrategyRequirement AltReq;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredSectoidArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPowr";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPoweredArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.ArmorCat = 'Sectoid';
	Template.Tier = 160;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.POWERED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_MITIGATION_AMOUNT);

	Template.Requirements.RequiredSoldierClass = 'SectoidClass';
	Template.Requirements.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;

	AltReq.RequiredSoldierClass = 'SectoidAbjurerClass';
	AltReq.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

			for (i = 0; i < default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


static function X2DataTemplate CreateViperArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'ViperArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorConv";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.ArmorTechCat = 'conventional';
	Template.ArmorCat = 'Viper';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional";

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, 0, true);

	return Template;
}


static function X2DataTemplate CreatePlatedViperArmor()
{
    local X2ArmorTemplate Template;
    local StrategyRequirement AltReq, AltReq2, AltReq3;
	local ArtifactCost	Resources;
	local int i;

    `CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedViperArmor');
    Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPlat";
    Template.ItemCat = 'armor';
    Template.bAddsUtilitySlot = false;
    Template.StartingItem = false;
    Template.CanBeBuilt = false;
    Template.bInfiniteItem = true;
    Template.TradingPostValue = 20;
    Template.PointsToComplete = 0;
    Template.Abilities.AddItem('MediumPlatedArmorStats');
    Template.ArmorTechCat = 'plated';
    Template.ArmorCat = 'Viper';
    Template.Tier = 150;
    Template.AkAudioSoldierArmorSwitch = 'Predator';
    //Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
    Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

    Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_PLATED_HEALTH_BONUS, true);
    Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, 1);
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.PLATED_ALIEN_ARMOR_BLACKMARKET_VALUE;

    Template.Requirements.RequiredSoldierClass = 'ViperClass3';
	Template.Requirements.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;
    
    AltReq.RequiredSoldierClass = 'SidewinderClass';
	AltReq.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);
    
    AltReq2.RequiredSoldierClass = 'NajaClass';
	AltReq2.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq2.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq2);
    
    AltReq3.RequiredSoldierClass = 'FrostAdderClass';
	AltReq3.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq3.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq3);

			for (i = 0; i < default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

    return Template;
}

static function X2DataTemplate CreatePoweredViperArmor()
{
	local X2ArmorTemplate Template;
	local StrategyRequirement AltReq, AltReq2, AltReq3;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredViperArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPowr";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPoweredArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.ArmorCat = 'Viper';
	Template.Tier = 160;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.POWERED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_MITIGATION_AMOUNT);
	    
    Template.Requirements.RequiredSoldierClass = 'ViperClass3';
	Template.Requirements.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;
    
    AltReq.RequiredSoldierClass = 'SidewinderClass';
	AltReq.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);
    
    AltReq2.RequiredSoldierClass = 'NajaClass';
	AltReq2.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq2.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq2);
    
    AltReq3.RequiredSoldierClass = 'FrostAdderClass';
	AltReq3.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq3.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq3);

			for (i = 0; i < default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


static function X2DataTemplate CreateMutonArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'MutonArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorConv";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.ArmorTechCat = 'conventional';
	Template.ArmorCat = 'Muton';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional";

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, 0, true);

	return Template;
}


static function X2DataTemplate CreatePlatedMutonArmor()
{
	local X2ArmorTemplate Template;
	local StrategyRequirement AltReq;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedMutonArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPlat";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPlatedArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.ArmorCat = 'Muton';
	Template.Tier = 150;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_PLATED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, 1);
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.PLATED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	Template.Requirements.RequiredSoldierClass = 'MutonClass';
	Template.Requirements.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;

	AltReq.RequiredSoldierClass = 'FrostBomberClass';
	AltReq.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

			for (i = 0; i < default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreatePoweredMutonArmor()
{
	local X2ArmorTemplate Template;
	local StrategyRequirement AltReq;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredMutonArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPowr";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPoweredArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.ArmorCat = 'Muton';
	Template.Tier = 160;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.POWERED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_MITIGATION_AMOUNT);

	Template.Requirements.RequiredSoldierClass = 'MutonClass';
	Template.Requirements.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;

	AltReq.RequiredSoldierClass = 'FrostBomberClass';
	AltReq.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

			for (i = 0; i < default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateMutonStalkerArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'MutonStalkerArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorConv";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.ArmorTechCat = 'conventional';
	Template.ArmorCat = 'MutonStalker';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional";

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, 0, true);

	return Template;
}


static function X2DataTemplate CreatePlatedMutonStalkerArmor()
{
	local X2ArmorTemplate Template;
	local StrategyRequirement AltReq;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedMutonStalkerArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPlat";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPlatedArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.ArmorCat = 'MutonStalker';
	Template.Tier = 150;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

	//Template.CreatorTemplateName = 'MediumPlatedArmor_Schematic'; // The schematic which creates this item
	//Template.BaseItem = 'MutonArmor'; // Which item this will be upgraded from

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_PLATED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, 1);
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.PLATED_ALIEN_ARMOR_BLACKMARKET_VALUE;
		
	Template.Requirements.RequiredSoldierClass = 'MutonHunterClass';
	Template.Requirements.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;

	AltReq.RequiredSoldierClass = 'MutonProwlerClass';
	AltReq.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

			for (i = 0; i < default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreatePoweredMutonStalkerArmor()
{
	local X2ArmorTemplate Template;
	local StrategyRequirement AltReq;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredMutonStalkerArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPowr";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPoweredArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.ArmorCat = 'MutonStalker';
	Template.Tier = 160;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.POWERED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	//Template.CreatorTemplateName = 'MediumPoweredArmor_Schematic'; // The schematic which creates this item
	//Template.BaseItem = 'PlatedMutonArmor'; // Which item this will be upgraded from

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_MITIGATION_AMOUNT);
	
	Template.Requirements.RequiredSoldierClass = 'MutonHunterClass';
	Template.Requirements.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;

	AltReq.RequiredSoldierClass = 'MutonProwlerClass';
	AltReq.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

			for (i = 0; i < default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateMutonStrikerArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'MutonStrikerArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorConv";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.ArmorTechCat = 'conventional';
	Template.ArmorCat = 'MutonStriker';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional";

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, 0, true);

	return Template;
}


static function X2DataTemplate CreatePlatedMutonStrikerArmor()
{
	local X2ArmorTemplate Template;
	local StrategyRequirement AltReq;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedMutonStrikerArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPlat";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPlatedArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.ArmorCat = 'MutonStriker';
	Template.Tier = 150;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

	//Template.CreatorTemplateName = 'MediumPlatedArmor_Schematic'; // The schematic which creates this item
	//Template.BaseItem = 'MutonArmor'; // Which item this will be upgraded from

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_PLATED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, 1);
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.PLATED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	Template.Requirements.RequiredSoldierClass = 'MutonBeleaguerClass';
	Template.Requirements.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;

	AltReq.RequiredSoldierClass = 'MutonHarrierClass';
	AltReq.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

			for (i = 0; i < default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreatePoweredMutonStrikerArmor()
{
	local X2ArmorTemplate Template;
	local StrategyRequirement AltReq;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredMutonStrikerArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPowr";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPoweredArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.ArmorCat = 'MutonStriker';
	Template.Tier = 160;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.POWERED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	//Template.CreatorTemplateName = 'MediumPoweredArmor_Schematic'; // The schematic which creates this item
	//Template.BaseItem = 'PlatedMutonArmor'; // Which item this will be upgraded from

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_MITIGATION_AMOUNT);

	Template.Requirements.RequiredSoldierClass = 'MutonBeleaguerClass';
	Template.Requirements.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;

	AltReq.RequiredSoldierClass = 'MutonHarrierClass';
	AltReq.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;
	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

			for (i = 0; i < default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateArchonArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'ArchonArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorConv";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.ArmorTechCat = 'conventional';
	Template.ArmorCat = 'Archon';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional";

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, 0, true);

	return Template;
}


static function X2DataTemplate CreatePlatedArchonArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedArchonArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPlat";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPlatedArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.ArmorCat = 'Archon';
	Template.Tier = 150;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.POWERED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	//Template.CreatorTemplateName = 'MediumPlatedArmor_Schematic'; // The schematic which creates this item
	//Template.BaseItem = 'MutonArmor'; // Which item this will be upgraded from

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_PLATED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, 1);

	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.PLATED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	Template.Requirements.RequiredSoldierClass = 'ArchonClass';
	Template.Requirements.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;

			for (i = 0; i < default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreatePoweredArchonArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredArchonArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPowr";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPoweredArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.ArmorCat = 'Archon';
	Template.Tier = 160;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.POWERED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;

	//Template.CreatorTemplateName = 'MediumPoweredArmor_Schematic'; // The schematic which creates this item
	//Template.BaseItem = 'PlatedMutonArmor'; // Which item this will be upgraded from

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_MITIGATION_AMOUNT);

	Template.Requirements.RequiredSoldierClass = 'ArchonClass';
	Template.Requirements.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;

			for (i = 0; i < default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateFrostNecromancerArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'FrostNecromancerArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorConv";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.ArmorTechCat = 'conventional';
	Template.ArmorCat = 'FrostNecromancer';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional";

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, 0, true);

	return Template;
}


static function X2DataTemplate CreatePlatedFrostNecromancerArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedFrostNecromancerArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPlat";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPlatedArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.ArmorCat = 'FrostNecromancer';
	Template.Tier = 150;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_PLATED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, 1);

	if (default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.PLATED_ALIEN_ARMOR_ENGINEERING_SCORE;
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.PLATED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	Template.Requirements.RequiredSoldierClass = 'FrostNecromancerClass';
	Template.Requirements.RequiredTechs = default.PLATED_ALIEN_ARMOR_REQUIRED_TECHS;

			for (i = 0; i < default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.PLATED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.PLATED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreatePoweredFrostNecromancerArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredFrostNecromancerArmor');
	Template.strImage = "img:///UILibrary_XPACK_StrategyImages.Inv_HORArmorPowr";
	Template.ItemCat = 'armor';
	Template.bAddsUtilitySlot = false;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('MediumPoweredArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.ArmorCat = 'FrostNecromancer';
	Template.Tier = 160;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";
	
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.TradingPostValue = default.POWERED_ALIEN_ARMOR_BLACKMARKET_VALUE;

	if (default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.POWERED_ALIEN_ARMOR_ENGINEERING_SCORE;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_HEALTH_BONUS, true);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_MITIGATION_AMOUNT);

	Template.Requirements.RequiredSoldierClass = 'FrostNecromancerClass';
	Template.Requirements.RequiredTechs = default.POWERED_ALIEN_ARMOR_REQUIRED_TECHS;

			for (i = 0; i < default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE.Length; i++)
			{
				if (default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.POWERED_ALIEN_ARMOR_BUILD_COST_TYPE[i];
	Resources.Quantity = default.POWERED_ALIEN_ARMOR_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}