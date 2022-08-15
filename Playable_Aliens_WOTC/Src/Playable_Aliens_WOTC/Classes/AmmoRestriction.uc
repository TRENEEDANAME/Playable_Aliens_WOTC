class AmmoRestriction extends X2DownloadableContentInfo;

static function bool CanAddItemToInventory_CH(out int bCanAddItem, const EInventorySlot Slot, const X2ItemTemplate ItemTemplate, int Quantity, XComGameState_Unit UnitState, optional XComGameState CheckGameState, optional out string DisabledReason)
{
	local XGParamTag LocTag;
	local X2AmmoTemplate AmmoTemplate;


	AmmoTemplate = X2AmmoTemplate(ItemTemplate);
	//DisabledReason = "";

	if(CheckGameState != none)
		return CanAddItemToInventory(bCanAddItem, Slot, ItemTemplate, Quantity, UnitState, CheckGameState);

	if(CheckGameState == none && IsNoAmmoAlien(UnitState.GetMyTemplateName()) && AmmoTemplate != none) //only do this check for ammo on specified aliens
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
	local X2AmmoTemplate AmmoTemplate;


	AmmoTemplate = X2AmmoTemplate(ItemTemplate);


	if(IsNoAmmoAlien(UnitState.GetMyTemplateName()) && AmmoTemplate != none) //is an ammo item and is for a specified alien
	{

		if(Slot != eInvSlot_Utility)
			return false; //we don't care


		bCanAddItem = 0;
		return true; //we set this to true so ammo returns false for specified aliens
	}

	return false;
}

static function bool IsNoAmmoAlien(name UnitName)
{
	if(UnitName == 'PA_Berserker' || UnitName == 'PA_Faceless' || UnitName == 'PA_MutonHarrier' || UnitName == 'PA_FrostAdder' || UnitName == 'PA_FrostBomber' || UnitName == 'PA_FrostNecromancer'){
		return true;
	}

	return false;
}