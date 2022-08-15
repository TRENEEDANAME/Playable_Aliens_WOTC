class GrenadeRestriction extends X2DownloadableContentInfo config(Game);

var config array<name> IncludedExoticAlienClasses;

static function bool CanAddItemToInventory_CH(out int bCanAddItem, const EInventorySlot Slot, const X2ItemTemplate ItemTemplate, int Quantity, XComGameState_Unit UnitState, optional XComGameState CheckGameState, optional out string DisabledReason)
{
	local XGParamTag LocTag;
	local X2GrenadeTemplate GrenadeTemplate;


	GrenadeTemplate = X2GrenadeTemplate(ItemTemplate);
	//DisabledReason = "";

	if(CheckGameState != none)
		return CanAddItemToInventory(bCanAddItem, Slot, ItemTemplate, Quantity, UnitState, CheckGameState);

	if(CheckGameState == none && IsNonMutonAlienUnit(UnitState.GetMyTemplateName()) && GrenadeTemplate != none) //only do this check for our grenades on non-Muton, non-Andromedon aliens
	{

		

		if(Slot != eInvSlot_Utility)
			return true; //we don't care

		LocTag = XGParamTag(`XEXPANDCONTEXT.FindTag("XGParam"));
		LocTag.StrValue0 = class'X2SoldierClassTemplateManager'.static.GetSoldierClassTemplateManager().FindSoldierClassTemplate(UnitState.GetSoldierClassTemplateName()).DisplayName;
		DisabledReason = class'UIUtilities_Text'.static.CapsCheckForGermanScharfesS(`XEXPAND.ExpandString(class'UIArmory_Loadout'.default.m_strUnavailableToClass));
	
		return false; //return false to give our disabled reason;

	}

	return true; //return true as a fallback or if we got nothing to do with the item
}

static function bool CanAddItemToInventory(out int bCanAddItem, const EInventorySlot Slot, const X2ItemTemplate ItemTemplate, int Quantity, XComGameState_Unit UnitState, XComGameState CheckGameState)
{
	local X2GrenadeTemplate GrenadeTemplate;


	GrenadeTemplate = X2GrenadeTemplate(ItemTemplate);


	if(IsNonMutonAlienUnit(UnitState.GetMyTemplateName()) && GrenadeTemplate != none) //is a grenade item and is for a non-Muton, non-Andromedon alien
	{

		if(Slot != eInvSlot_Utility)
			return false; //we don't care


		bCanAddItem = 0;
		return true; //we set this to true so grenades return false for non-Muton, non-Andromedon aliens
	}

	return false;
}

static function bool CanAddItemToInventory_CH_Improved(
    out int bCanAddItem,                   // out value for XComGameState_Unit
    const EInventorySlot Slot,             // Inventory Slot you're trying to equip the Item into
    const X2ItemTemplate ItemTemplate,     // Item Template of the Item you're trying to equip
    int Quantity, 
    XComGameState_Unit UnitState,          // Unit State of the Unit you're trying to equip the Item on
    optional XComGameState CheckGameState, 
    optional out string DisabledReason,    // out value for the UIArmory_Loadout
    optional XComGameState_Item ItemState) // Item State of the Item we're trying to equip
{
	local XGParamTag	LocTag;

	local bool OverrideNormalBehavior;
    local bool DoNotOverrideNormalBehavior;

    // Prepare return values to make it easier for us to read the code.
    OverrideNormalBehavior = CheckGameState != none;
    DoNotOverrideNormalBehavior = CheckGameState == none;

	if(DisabledReason != "")
    return DoNotOverrideNormalBehavior;

	// do the filtering only if trying to...
	if(UnitIsExoticAlien(UnitState) &&	//	equip something on your alien class
		Slot == eInvSlot_Utility)	// into the utility slot
	{
		if (ItemTemplate.DataName == 'BattleScanner' || ItemTemplate.DataName == 'MimicBeacon')
		{

			// if we're trying to equip one of these items
			// we build a message that will be shown to the player stating that this item is not available to the alien class
			LocTag = XGParamTag(`XEXPANDCONTEXT.FindTag("XGParam"));
			LocTag.StrValue0 = class'X2SoldierClassTemplateManager'.static.GetSoldierClassTemplateManager().FindSoldierClassTemplate(UnitState.GetSoldierClassTemplateName()).DisplayName;
			DisabledReason = class'UIUtilities_Text'.static.CapsCheckForGermanScharfesS(`XEXPAND.ExpandString(class'UIArmory_Loadout'.default.m_strNeedsSoldierClass));

			bCanAddItem = 0;

			return OverrideNormalBehavior; // and disallow equipping the item
		}

	}

	 // in all other cases don't do any filtering.
	return DoNotOverrideNormalBehavior;
}

static function bool IsNonMutonAlienUnit(name UnitName) // Even though the function is called IsNonMutonAlienUnit, we're also allowing grenades on Andromedons because they can use Muton grenade throw animations
{
	if(UnitName == 'PA_Berserker' || UnitName == 'PA_Faceless' || UnitName == 'PA_Archon'){
		return true;
	}
	// || UnitName == 'PA_Sidewinder' || UnitName == 'PA_Naja' || UnitName == 'PA_Viper2'
	return false;
}

static function bool UnitIsExoticAlien(const XComGameState_Unit UnitState)
{
	return default.IncludedExoticAlienClasses.Find(UnitState.GetSoldierClassTemplateName()) != INDEX_NONE;
}