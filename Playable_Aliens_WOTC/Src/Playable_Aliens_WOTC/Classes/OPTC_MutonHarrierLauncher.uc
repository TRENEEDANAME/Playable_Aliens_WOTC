class OPTC_MutonHarrierLauncher extends X2DownloadableContentInfo config(GameData_WeaponData);

var config array<name> DisallowedMutonHarrierLauncherWeaponUpgradeNames;

static function bool CanWeaponApplyUpgrade(XComGameState_Item WeaponState, X2WeaponUpgradeTemplate UpgradeTemplate)
{
	local name DisallowedMutonHarrierLauncherUpgradeName;

	switch (WeaponState.GetMyTemplateName())
	{
		case 'PA_MutonHarrierLauncher':
		case 'PA_MutonHarrierLauncherLaser':
		case 'PA_MutonHarrierLauncherMagnetic':
		case 'PA_MutonHarrierLauncherCoil':
		case 'PA_MutonHarrierLauncherBeam':
			foreach default.DisallowedMutonHarrierLauncherWeaponUpgradeNames(DisallowedMutonHarrierLauncherUpgradeName)
			{
				if (InStr(UpgradeTemplate.DataName, DisallowedMutonHarrierLauncherUpgradeName) > INDEX_NONE)
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