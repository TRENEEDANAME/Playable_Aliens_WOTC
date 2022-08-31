class X2Character_PlayableAliens extends X2Character config(GameData_CharacterStats);

var config(PlayableAdvent) bool ALIENS_APPEAR_IN_BASE;
var config(PlayableAdvent) bool ALIENS_DIE_WHEN_CAPTURED;
var config(PlayableAdvent) bool AliensThatTakeCoverCanHunker;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;

	Templates.AddItem(CreateTemplate_Berserker());
	Templates.AddItem(CreateTemplate_Faceless());
	Templates.AddItem(CreateTemplate_MutonHunter());
	Templates.AddItem(CreateTemplate_MutonProwler());
	Templates.AddItem(CreateTemplate_MutonHarrier());
	Templates.AddItem(CreateTemplate_MutonBeleaguer());
	Templates.AddItem(CreateTemplate_Sidewinder());
	Templates.AddItem(CreateTemplate_Naja());
	Templates.AddItem(CreateTemplate_FrostAdder());
	Templates.AddItem(CreateTemplate_FrostBomber());
	Templates.AddItem(CreateTemplate_FrostNecromancer());
	Templates.AddItem(CreateTemplate_SectoidAbjurer());

	Templates.AddItem(CreateTemplate_Archon());
	Templates.AddItem(CreateTemplate_Sectoid());
	Templates.AddItem(CreateTemplate_Muton());
	Templates.AddItem(CreateTemplate_Viper());
	Templates.AddItem(CreateTemplate_Andromedon());
	Templates.AddItem(CreateTemplate_PA_AndromedonRobot());
	return Templates;
}

static function X2CharacterTemplate CreateTemplate_Archon()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_Archon');
	CharTemplate.CharacterGroupName = 'Archon';
	CharTemplate.DefaultLoadout='PA_ArchonLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.Length = 0;
	CharTemplate.strPawnArchetypes.AddItem("PA_Archon_ANIM.ARC_GameUnit_Archon_Custom");
	//CharTemplate.strPawnArchetypes.AddItem("GameUnit_Valkyrie.ARC_GameUnit_Valkyrie");
	//CharTemplate.strPawnArchetypes.AddItem("GameUnit_Archon.ARC_GameUnit_Archon");
	//CharTemplate.strPawnArchetypes.AddItem("GameUnit_Archon.ARC_GameUnit_Archon");
	//CharTemplate.strPawnArchetypes.AddItem("GameUnit_Archon.ARC_GameUnit_Archon");
	//CharTemplate.strPawnArchetypes.AddItem("GameUnit_Archon.ARC_GameUnit_Archon");
	//CharTemplate.strPawnArchetypes.AddItem("BetterArchons.ARC_GameUnit_Archon_Torcher");
	//CharTemplate.strPawnArchetypes.AddItem("BetterArchons.ARC_GameUnit_Archon_Sentinel");
	//if (default.PA_DLCALIEN==1) {CharTemplate.strPawnArchetypes.AddItem("GameUnit_ArchonKing.ARC_GameUnit_ArchonKing");}
	//if (default.PA_DLCALIEN==0) {CharTemplate.strPawnArchetypes.AddItem("GameUnit_Archon.ARC_GameUnit_Archon");}

	CharTemplate.strMatineePackages.AddItem("CIN_Archon");
	CharTemplate.strMatineePackages.AddItem("CIN_AdventMEC");
	CharTemplate.strTargetingMatineePrefix = "CIN_AdventMEC_FF_StartPos";

	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;

	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = false;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = false;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = false;
	CharTemplate.bCanUse_eTraversal_DropDown = false;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bCanUse_eTraversal_Launch = true;
	CharTemplate.bCanUse_eTraversal_Flying = true;
	CharTemplate.bCanUse_eTraversal_Land = true;
	CharTemplate.bAppearanceDefinesPawn = false;   
	CharTemplate.bUsesWillSystem = true; 
	CharTemplate.bCanTakeCover = false;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsTooBigForArmory = true;
	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.DefaultSoldierClass = 'ArchonClass';
	CharTemplate.DefaultLoadout = 'PA_ArchonLoadout';
	CharTemplate.RequiredLoadout = 'PA_ArchonLoadout';

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;

	CharTemplate.bAllowSpawnFromATT = false;
	
	//CharTemplate.Abilities.AddItem('BlazingPinionsStage1');
	//CharTemplate.Abilities.AddItem('BlazingPinionsStage2');

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	//CharTemplate.Abilities.AddItem('HunkerDown');
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');
	CharTemplate.Abilities.AddItem('FrenzyDamageListener');

	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;

}

static function X2CharacterTemplate CreateTemplate_Berserker()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_Berserker');
	CharTemplate.CharacterGroupName = 'Berserker';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.AddItem("PA_Berserker_ANIM.ARC_GameUnit_Berserker_Custom");

	CharTemplate.strMatineePackages.AddItem("CIN_Berserker");
	CharTemplate.strMatineePackages.AddItem("CIN_Muton");
	CharTemplate.strTargetingMatineePrefix = "CIN_Muton_FF_StartPos";
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = true;
	CharTemplate.bAppearanceDefinesPawn = false;    
	CharTemplate.bCanTakeCover = false;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;
	CharTemplate.bIsMeleeOnly = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = false;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;
	CharTemplate.bIsTooBigForArmory = true;

	CharTemplate.DefaultSoldierClass = 'BerserkerClass';
	CharTemplate.DefaultLoadout = 'PA_BerserkerLoadout';
	CharTemplate.RequiredLoadout = 'PA_BerserkerLoadout';

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	//CharTemplate.Abilities.AddItem('HunkerDown');
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');
	CharTemplate.Abilities.AddItem('TriggerRageDamageListener');
	//CharTemplate.Abilities.AddItem('DevastatingPunch');

	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_Faceless()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_Faceless');
	CharTemplate.CharacterGroupName = 'Faceless';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.AddItem("GameUnit_Faceless.ARC_GameUnit_Faceless");

	CharTemplate.strMatineePackages.AddItem("CIN_Berserker");
	CharTemplate.strMatineePackages.AddItem("CIN_Muton");
	CharTemplate.strTargetingMatineePrefix = "CIN_Muton_FF_StartPos";
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
	CharTemplate.UnitSize = 1;
	//CharTemplate.UnitHeight = 4; //Faceless is tall
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = false;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = true;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;    
	CharTemplate.bCanTakeCover = false;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;
	CharTemplate.bIsMeleeOnly = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = false;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;
	CharTemplate.bIsTooBigForArmory = true;

	CharTemplate.DefaultSoldierClass = 'FacelessClass';
	CharTemplate.DefaultLoadout = 'PA_FacelessLoadout';
	CharTemplate.RequiredLoadout = 'PA_FacelessLoadout';

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	//CharTemplate.Abilities.AddItem('HunkerDown');
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');
	CharTemplate.Abilities.AddItem('FacelessInit');

	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_Andromedon()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_Andromedon');
	CharTemplate.CharacterGroupName = 'Andromedon';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.AddItem("PA_Andromedon_ANIM.ARC_GameUnit_Andromedon_Custom");

	CharTemplate.strMatineePackages.AddItem("CIN_Andromedon");
	CharTemplate.strMatineePackages.AddItem("CIN_Muton");
	CharTemplate.strTargetingMatineePrefix = "CIN_Muton_FF_StartPos";
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;    
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = false;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;
	CharTemplate.bIsTooBigForArmory = true;

	CharTemplate.DefaultSoldierClass = 'AndromedonClass';
	CharTemplate.DefaultLoadout = 'PA_AndromedonLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';
	CharTemplate.Abilities.AddItem('AndromedonImmunities');
	CharTemplate.Abilities.AddItem('BigDamnPunch');
	CharTemplate.Abilities.AddItem('WallBreaking');
	CharTemplate.Abilities.AddItem('WallSmash');
	CharTemplate.Abilities.AddItem('ShellLauncher');
	// This is for the robot suit
	CharTemplate.Abilities.AddItem('SwitchToRobotMP');
	CharTemplate.Abilities.AddItem('BigDamnPunchMP');
	CharTemplate.Abilities.AddItem('PA_RobotBattlesuit');


	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');

	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_PA_AndromedonRobot()
{
	local X2CharacterTemplate CharTemplate;
	local LootReference Loot;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_AndromedonRobot');
	CharTemplate.CharacterGroupName = 'AndromedonRobot';
	CharTemplate.DefaultLoadout='AndromedonRobot_Loadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';
	CharTemplate.strPawnArchetypes.AddItem("GameUnit_Andromedon.ARC_GameUnit_Andromedon_Robot_Suit");
	Loot.ForceLevel=0;
	Loot.LootTableName='AndromedonRobot_BaseLoot';
	CharTemplate.Loot.LootReferences.AddItem(Loot);

	// Timed Loot
	//Loot.ForceLevel = 0;
	//Loot.LootTableName = 'AndromedonRobot_TimedLoot';
	//CharTemplate.TimedLoot.LootReferences.AddItem(Loot);
	//Loot.LootTableName = 'AndromedonRobot_VultureLoot';
	//CharTemplate.VultureLoot.LootReferences.AddItem(Loot);

	CharTemplate.strMatineePackages.AddItem("CIN_Andromedon");
	CharTemplate.strMatineePackages.AddItem("CIN_Muton");
	CharTemplate.strTargetingMatineePrefix = "CIN_Muton_FF_StartPos";

	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = false;
	CharTemplate.bCanUse_eTraversal_KickDoor = false;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;    
	CharTemplate.bCanTakeCover = false;

	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = true;
	CharTemplate.bIsSoldier = false;

	CharTemplate.bAllowSpawnFromATT = false;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = false;
	CharTemplate.bIsAfraidOfFire = false;
	
	CharTemplate.MPPointValue = CharTemplate.XpKillscore * 10;

	CharTemplate.Abilities.AddItem('PA_AndromedonRobotImmunities');
	CharTemplate.Abilities.AddItem('BigDamnPunch');
	CharTemplate.Abilities.AddItem('PA_AndromedonRobotAcidTrail');
	CharTemplate.Abilities.AddItem('WallBreaking');
	CharTemplate.Abilities.AddItem('PA_WallSmash');
	CharTemplate.Abilities.AddItem('PA_RobotReboot');

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_Sectoid()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_Sectoid');
	CharTemplate.CharacterGroupName = 'Sectoid';
	CharTemplate.DefaultLoadout='PA_SectoidLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.AddItem("PA_Sectoid_Anim.ARC_GameUnit_SectoidCustom");
	CharTemplate.strPawnArchetypes.AddItem("ChimeraResonant.ARC_GameUnit_Resonant");

	CharTemplate.strMatineePackages.AddItem("CIN_Sectoid");
	
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;

	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = true;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;

	CharTemplate.DefaultSoldierClass = 'SectoidClass';
	CharTemplate.DefaultLoadout = 'PA_SectoidLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';
	CharTemplate.Abilities.AddItem('VulnerabilityMelee');
	//CharTemplate.Abilities.AddItem('DelayedPsiExplosion');
	CharTemplate.Abilities.AddItem('KillSiredZombies');
	//CharTemplate.Abilities.AddItem('SectoidDeathOverride');

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');

	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}


static function X2CharacterTemplate CreateTemplate_Muton()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_Muton');
	CharTemplate.CharacterGroupName = 'Muton';
	CharTemplate.DefaultLoadout='PA_MutonLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.AddItem("PA_Muton_Anim.ARC_GameUnit_Muton_Custom");
	
	CharTemplate.strMatineePackages.AddItem("CIN_Muton");
	CharTemplate.strTargetingMatineePrefix = "CIN_Muton_FF_StartPos";
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
		
	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsTooBigForArmory = true;
	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;

	CharTemplate.DefaultSoldierClass = 'MutonClass';
	CharTemplate.DefaultLoadout = 'PA_MutonLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');
	CharTemplate.Abilities.AddItem('CounterattackDescription');
	CharTemplate.Abilities.AddItem('CounterattackPreparation');
	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');
	CharTemplate.Abilities.AddItem('MutonWarCry_Animations_Passive');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_MutonHunter()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_MutonHunter');
	CharTemplate.CharacterGroupName = 'Muton';
	CharTemplate.DefaultLoadout='PA_MutonStalkerLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.AddItem("WoTC_Muton_Hunter.Archetypes.ARC_Muton_Hunter");
	

	
	
	CharTemplate.strMatineePackages.AddItem("CIN_Muton");
	CharTemplate.strTargetingMatineePrefix = "CIN_Muton_FF_StartPos";
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
		
	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsTooBigForArmory = true;
	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;

	CharTemplate.DefaultSoldierClass = 'MutonHunterClass';
	CharTemplate.DefaultLoadout = 'PA_MutonStalkerLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');
	//CharTemplate.Abilities.AddItem('CounterattackDescription');
	//CharTemplate.Abilities.AddItem('CounterattackPreparation');
	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');
	CharTemplate.Abilities.AddItem('MutonWarCry_Animations_Passive');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_MutonProwler()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_MutonProwler');
	CharTemplate.CharacterGroupName = 'Muton';
	CharTemplate.DefaultLoadout='PA_MutonStalkerLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.AddItem("WoTC_Muton_Hunter.Archetypes.ARC_Muton_Prowler");
	

	
	
	CharTemplate.strMatineePackages.AddItem("CIN_Muton");
	CharTemplate.strTargetingMatineePrefix = "CIN_Muton_FF_StartPos";
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
		
	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsTooBigForArmory = true;
	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;

	CharTemplate.DefaultSoldierClass = 'MutonProwlerClass';
	CharTemplate.DefaultLoadout = 'PA_MutonStalkerLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');
	//CharTemplate.Abilities.AddItem('CounterattackDescription');
	//CharTemplate.Abilities.AddItem('CounterattackPreparation');
	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');
	CharTemplate.Abilities.AddItem('MutonWarCry_Animations_Passive');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_MutonHarrier()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_MutonHarrier');
	CharTemplate.CharacterGroupName = 'Muton';
	CharTemplate.DefaultLoadout='PA_MutonHarrierLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.AddItem("WoTC_Muton_Harrier.Archetypes.ARC_Muton_Harrier");
	

	
	
	CharTemplate.strMatineePackages.AddItem("CIN_Muton");
	CharTemplate.strTargetingMatineePrefix = "CIN_Muton_FF_StartPos";
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
		
	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsTooBigForArmory = true;
	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;

	CharTemplate.DefaultSoldierClass = 'MutonHarrierClass';
	CharTemplate.DefaultLoadout = 'PA_MutonHarrierLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');
	//CharTemplate.Abilities.AddItem('CounterattackDescription');
	//CharTemplate.Abilities.AddItem('CounterattackPreparation');
	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');
	CharTemplate.Abilities.AddItem('MutonWarCry_Animations_Passive');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_MutonBeleaguer()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_MutonBeleaguer');
	CharTemplate.CharacterGroupName = 'Muton';
	CharTemplate.DefaultLoadout='PA_MutonBeleaguerLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.AddItem("WoTC_Muton_Harrier.Archetypes.ARC_Muton_Harrier_Rifleman");
	

	
	
	CharTemplate.strMatineePackages.AddItem("CIN_Muton");
	CharTemplate.strTargetingMatineePrefix = "CIN_Muton_FF_StartPos";
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
		
	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsTooBigForArmory = true;
	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;

	CharTemplate.DefaultSoldierClass = 'MutonBeleaguerClass';
	CharTemplate.DefaultLoadout = 'PA_MutonBeleaguerLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');
	//CharTemplate.Abilities.AddItem('CounterattackDescription');
	//CharTemplate.Abilities.AddItem('CounterattackPreparation');
	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');
	CharTemplate.Abilities.AddItem('MutonWarCry_Animations_Passive');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_Viper()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_Viper2');
	CharTemplate.CharacterGroupName = 'Viper';
	CharTemplate.DefaultLoadout='PA_ViperLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.Length = 0;
	CharTemplate.strPawnArchetypes.AddItem("PA_VIPER_ANIM.ARC_GameUnit_PAViper");
	
	CharTemplate.strMatineePackages.AddItem("CIN_Viper");
	CharTemplate.strMatineePackages.AddItem("CIN_AdventMEC");
	CharTemplate.strTargetingMatineePrefix = "CIN_AdventMEC_FF_StartPos";
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
		
	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;

	CharTemplate.DefaultSoldierClass = 'ViperClass3';
	CharTemplate.DefaultLoadout = 'PA_ViperLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';

	CharTemplate.ImmuneTypes.AddItem('Poison');

	CharTemplate.Abilities.AddItem('Bind');
	CharTemplate.Abilities.AddItem('PA_EndBind');

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');

	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_Sidewinder()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_Sidewinder');
	CharTemplate.CharacterGroupName = 'Viper';
	CharTemplate.DefaultLoadout='PA_SidewinderLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	//CharTemplate.strPawnArchetypes.AddItem("LWSidewinder.Archetypes.ARC_GameUnit_Sidewinder_F");
	//CharTemplate.strPawnArchetypes.AddItem("LWSidewinder.Archetypes.ARC_GameUnit_Sidewinder_M"); 
	CharTemplate.strPawnArchetypes.AddItem("PA_Sidewinder.Archetypes.ARC_GameUnit_Sidewinder_F"); 
	CharTemplate.strPawnArchetypes.AddItem("PA_SideWinder.Archetypes.ARC_GameUnit_Sidewinder_M"); 
	
	CharTemplate.strMatineePackages.AddItem("CIN_Viper");
	CharTemplate.strMatineePackages.AddItem("CIN_AdventMEC");
	CharTemplate.strTargetingMatineePrefix = "CIN_AdventMEC_FF_StartPos";
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
		
	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;

	CharTemplate.DefaultSoldierClass = 'SidewinderClass';
	CharTemplate.DefaultLoadout = 'PA_SidewinderLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';

	CharTemplate.ImmuneTypes.AddItem('Poison');

	CharTemplate.Abilities.AddItem('Bind');
	CharTemplate.Abilities.AddItem('PA_EndBind');

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');

	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_Naja()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_Naja');
	CharTemplate.CharacterGroupName = 'Viper';
	CharTemplate.DefaultLoadout='PA_NajaLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';
	//CharTemplate.strPawnArchetypes.AddItem("LWNaja.Archetypes.ARC_GameUnit_Naja_F");
	//CharTemplate.strPawnArchetypes.AddItem("LWNaja.Archetypes.ARC_GameUnit_Naja_M"); 
	CharTemplate.strPawnArchetypes.AddItem("PA_Naja.Archetypes.ARC_GameUnit_Naja_F"); 
	CharTemplate.strPawnArchetypes.AddItem("PA_Naja.Archetypes.ARC_GameUnit_Naja_M"); 
	
	CharTemplate.strMatineePackages.AddItem("CIN_Viper");
	CharTemplate.strMatineePackages.AddItem("CIN_AdventMEC");
	CharTemplate.strTargetingMatineePrefix = "CIN_AdventMEC_FF_StartPos";
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
		
	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;

	CharTemplate.DefaultSoldierClass = 'NajaClass';
	CharTemplate.DefaultLoadout = 'PA_NajaLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';

	CharTemplate.ImmuneTypes.AddItem('Poison');

	CharTemplate.Abilities.AddItem('Bind');
	CharTemplate.Abilities.AddItem('PA_EndBind');

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');

	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_FrostAdder()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_FrostAdder');
	CharTemplate.CharacterGroupName = 'Viper';
	CharTemplate.DefaultLoadout='PA_FrostAdderLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';
	//CharTemplate.strPawnArchetypes.AddItem("LWNaja.Archetypes.ARC_GameUnit_Naja_F");
	//CharTemplate.strPawnArchetypes.AddItem("LWNaja.Archetypes.ARC_GameUnit_Naja_M"); 
	CharTemplate.strPawnArchetypes.AddItem("Pawn_FrostDivision_Vipers.ARC_GameUnit_FrostAdder"); 
	
	CharTemplate.strMatineePackages.AddItem("CIN_Viper");
	CharTemplate.strMatineePackages.AddItem("CIN_AdventMEC");
	CharTemplate.strTargetingMatineePrefix = "CIN_AdventMEC_FF_StartPos";
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
		
	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bSetGenderAlways = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;

	CharTemplate.DefaultSoldierClass = 'FrostAdderClass';
	CharTemplate.DefaultLoadout = 'PA_FrostAdderLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';

	CharTemplate.ImmuneTypes.AddItem('Frost');

	CharTemplate.Abilities.AddItem('PA_EndBind');
	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');

	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_FrostBomber()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_FrostBomber');
	CharTemplate.CharacterGroupName = 'Muton';
	CharTemplate.DefaultLoadout='PA_FrostBomberLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.AddItem("Pawn_FrostDivision_Muton.ARC_GameUnit_Bomber");
	

	
	
	CharTemplate.strMatineePackages.AddItem("CIN_Muton");
	CharTemplate.strTargetingMatineePrefix = "CIN_Muton_FF_StartPos";
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
		
	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsTooBigForArmory = true;
	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;

	CharTemplate.DefaultSoldierClass = 'FrostBomberClass';
	CharTemplate.DefaultLoadout = 'PA_FrostBomberLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';

	CharTemplate.ImmuneTypes.AddItem('Frost');

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');
	//CharTemplate.Abilities.AddItem('CounterattackDescription');
	//CharTemplate.Abilities.AddItem('CounterattackPreparation');
	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');
	CharTemplate.Abilities.AddItem('MutonWarCry_Animations_Passive');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_FrostNecromancer()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_FrostNecromancer');
	CharTemplate.CharacterGroupName = 'Sectoid';
	CharTemplate.DefaultLoadout='PA_FrostNecromancerLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.AddItem("Pawn_FrostDivision_Sectoid.ARC_GameUnit_Necromancer");

	CharTemplate.strMatineePackages.AddItem("CIN_Sectoid");
	
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;

	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = true;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;

	CharTemplate.DefaultSoldierClass = 'FrostNecromancerClass';
	CharTemplate.DefaultLoadout = 'PA_FrostNecromancerLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';
	CharTemplate.Abilities.AddItem('VulnerabilityMelee');
	//CharTemplate.Abilities.AddItem('DelayedPsiExplosion');
	CharTemplate.Abilities.AddItem('KillSiredZombies');
	CharTemplate.Abilities.AddItem('RemoveSpectralFrostZombies');
	//CharTemplate.Abilities.AddItem('SectoidDeathOverride');

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');

	CharTemplate.ImmuneTypes.AddItem('Frost');

	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}

static function X2CharacterTemplate CreateTemplate_SectoidAbjurer()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_SectoidAbjurer');
	CharTemplate.CharacterGroupName = 'Sectoid';
	CharTemplate.DefaultLoadout='PA_SectoidAbjurerLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.AddItem("PA_Sectoid_Anim.ARC_GameUnit_SectoidCustom");
	CharTemplate.strPawnArchetypes.AddItem("ChimeraGray.ARC_GameUnit_Gray");

	CharTemplate.strMatineePackages.AddItem("CIN_Sectoid");
	
	CharTemplate.strMatineePackages.AddItem("CIN_Soldier");
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;

	CharTemplate.UnitSize = 1;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = true;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = true;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = true;
	CharTemplate.bCanUse_eTraversal_KickDoor = true;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = true;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;
	CharTemplate.bDiesWhenCaptured = default.ALIENS_DIE_WHEN_CAPTURED;

	CharTemplate.bIsAlien = true;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = true;
	CharTemplate.bIsRobotic = false;
	CharTemplate.bIsSoldier = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = true;
	CharTemplate.bIsAfraidOfFire = true;
	CharTemplate.bCanBeCarried = true;	
	CharTemplate.bCanBeRevived = true;
	CharTemplate.bUsePoolSoldiers = true;
	CharTemplate.bStaffingAllowed = true;
	CharTemplate.bAppearInBase = true;
	CharTemplate.bWearArmorInBase = true;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = true;

	CharTemplate.DefaultSoldierClass = 'SectoidAbjurerClass';
	CharTemplate.DefaultLoadout = 'PA_SectoidLoadout';
	CharTemplate.RequiredLoadout = 'RequiredSoldier';
	CharTemplate.Abilities.AddItem('VulnerabilityMelee');
	//CharTemplate.Abilities.AddItem('DelayedPsiExplosion');
	CharTemplate.Abilities.AddItem('KillSiredZombies');
	//CharTemplate.Abilities.AddItem('SectoidDeathOverride');

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	if (default.AliensThatTakeCoverCanHunker) {
	CharTemplate.Abilities.AddItem('HunkerDown');
	}
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');

	// bondmate abilities
	//CharTemplate.Abilities.AddItem('BondmateResistantWill');
	CharTemplate.Abilities.AddItem('BondmateSolaceCleanse');
	CharTemplate.Abilities.AddItem('BondmateSolacePassive');
	CharTemplate.Abilities.AddItem('BondmateTeamwork');
	CharTemplate.Abilities.AddItem('BondmateTeamwork_Improved');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim');
	CharTemplate.Abilities.AddItem('BondmateSpotter_Aim_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit');
	//CharTemplate.Abilities.AddItem('BondmateSpotter_Crit_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Adjacency');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Passive');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved');
	//CharTemplate.Abilities.AddItem('BondmateReturnFire_Improved_Adjacency');
	CharTemplate.Abilities.AddItem('BondmateDualStrike');

	CharTemplate.UICustomizationMenuClass = class'UICustomize_AlienMenu';
	CharTemplate.UICustomizationInfoClass = class'UICustomize_AlienInfo';
	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_PlayableAliens';

	return CharTemplate;
}