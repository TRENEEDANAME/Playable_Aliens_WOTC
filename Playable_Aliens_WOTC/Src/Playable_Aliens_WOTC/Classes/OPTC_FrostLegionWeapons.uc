class OPTC_FrostLegionWeapons extends X2DownloadableContentInfo config(GameData_WeaponData);

var config array<name> DisallowedFrostLegionWeaponUpgradeNames;

static function bool CanWeaponApplyUpgrade(XComGameState_Item WeaponState, X2WeaponUpgradeTemplate UpgradeTemplate)
{
	local name DisallowedFrostLegionUpgradeName;

	switch (WeaponState.GetMyTemplateName())
	{
		case 'PA_FrostAdderGun':
		case 'PA_FrostAdderGunLaser':
		case 'PA_FrostAdderGunMagnetic':
		case 'PA_FrostAdderGunCoil':
		case 'PA_FrostAdderGunBeam':
		case 'PA_FrostBomberGun':
		case 'PA_FrostBomberGunLaser':
		case 'PA_FrostBomberGunMagnetic':
		case 'PA_FrostBomberGunCoil':
		case 'PA_FrostBomberGunBeam':
		case 'PA_FrostNecromancerGun':
		case 'PA_FrostNecromancerGunLaser':
		case 'PA_FrostNecromancerGunMagnetic':
		case 'PA_FrostNecromancerGunCoil':
		case 'PA_FrostNecromancerGunBeam':
			foreach default.DisallowedFrostLegionWeaponUpgradeNames(DisallowedFrostLegionUpgradeName)
			{
				if (InStr(UpgradeTemplate.DataName, DisallowedFrostLegionUpgradeName) > INDEX_NONE)
				{
					return false;
				}
			}
			return true;
		default:
			return true;
	}
	return true;
}