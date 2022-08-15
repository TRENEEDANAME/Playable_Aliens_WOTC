class X2AbilitySet_Aliens extends XMBAbility config(PlayableAdvent);

var config int ViperMoltCooldown;
var config int PoisonSpitHeight;
var config int BasicSpitDamage;
var config int BasicSpitMobility;
var config int BasicSpitAim;
var config int EnhancedSpitDamage;
var config int EnhancedSpitMobility;
var config int EnhancedSpitAim;
//var config bool EnhancedSpitDisorients;
//var config int PA_MecMegaMissileRadius;
//var config int PA_MecDrawFireDuration;
//var config int PERSONAL_SHIELD_ACTION_COST;
//var config int PERSONAL_SHIELD_COOLDOWN;
//var config int PERSONAL_SHIELD_DURATION;
//var config int PERSONAL_SHIELD_HP;
var config int PAShakeUp_COOLDOWN;
var config int PAShakeUp_DECREASE_PER_VISIBLE_ENEMY;
var config bool PAShakeUp_BerserkerImmunity;
var config int PAShakeUp_BASE_CHANCE;
var config int PAFearStriker_COOLDOWN;
var config int PAFearStriker_DECREASE_PER_VISIBLE_ENEMY;
var config int PAFearStriker_BASE_CHANCE;
var config int PABrandishClaws_COOLDOWN;
var config int PABrandishClaws_DECREASE_PER_VISIBLE_ENEMY;
var config int PABrandishClaws_BASE_CHANCE;
var config(GameData_SoldierSkills) int ICARUS_DROP_FRAGILE_AMOUNT;
var config(GameData_SoldierSkills) float ICARUS_DROP_FLY_HEIGHT_MODIFIER;
var config(GameData_SoldierSkills) int ICARUS_DROP_TILE_DMG_HEIGHT_MODIFIER;
var config(GameData_SoldierSkills) int ICARUS_DROP_COOLDOWN;
var config(GameData_SoldierSkills) int ICARUS_DROP_GRAB_DODGE;
var config(GameData_SoldierSkills) int ICARUS_DROP_GRAB_DEFENSE;
var privatewrite name IcarusDropGrabbeeAnimSetEffectName;
var privatewrite name IcarusDropGrabbeeEffect_SustainedName;
var privatewrite name IcarusDropGrabberEffectName;
var privatewrite name IcarusDropGrabberDamageImmunityEffectName;
var const string PACombatReadinessBonusText;
var config array<name> PADangerZoneAbilityName;
var config array<int> PADangerZoneAbilityBonusRadius;
var config array<name> SERPENTINE_ABILITIES;
//var config name BattleSuitGolemTemplates;
var config array<name> PAVoidFloodAbilityName;
var config array<int> PAVoidFloodAbilityBonusRadius;
var config array<name> PAPuppetShowAbilityNames;
var config array<name> PAOmenAbilityNames;
var config WeaponDamageValue MutonPunchDamage;
var config int MutonPunchHitModifier, MutonPunchCritModifier;
var config WeaponDamageValue BullRushMutonDamage;
var config int BullRushMutonHitModifier, BullRushMutonCritModifier;
var config int PAHAZE_RADIUS;
var config int PABUNGEESLIME_CONEEND_DIAMETER_MODIFIER;
var config int PABUNGEESLIME_CONELENGTH_MODIFIER;
var config WeaponDamageValue Faceless_RippingSlash_BaseDamage;
var config int SCYTHING_CLAWS_LENGTH_TILES;
var config int SCYTHING_CLAWS_END_DIAMETER_TILES;
var config float GET_OVER_HERE_ALLY_MIN_RANGE;
var config float GET_OVER_HERE_ALLY_MAX_RANGE;
var config(GameData_SoldierSkills) array<name> BIND_ABILITY_ALIASES;
var config(GameData_SoldierSkills) array<name> GET_OVER_HERE_ABILITY_ALIASES;
var config array<name> PAHarrierLauncherRestorationAbilityName;
var config array<int> PAHarrierLauncherRestorationAbilityBonusRadius;
var config array<name> PAHarrierLauncherIntensifierAbilityName;
var config array<int> PAHarrierLauncherIntensifierAbilityBonusRadius;
var config int PA_HARRIER_GRENADE_DAMAGE_RADIUS;
var config int HARRIERFIREGRENADE_DMG_PER_TICK;
var config int HARRIERFIREGRENADE_SPREAD_PER_TICK;
var config int HARRIERFIREGRENADE_RADIUS;
var config int HARRIERFIREGRENADE_COOLDOWN;
var config int HARRIERPOISONGRENADE_RADIUS;
var config int HARRIERPOISONGRENADE_COOLDOWN;
var config WeaponDamageValue ViperBashDamage;
var config int ViperBashHitModifier, ViperBashCritModifier;
var config WeaponDamageValue BullRushViperDamage;
var config int BullRushViperHitModifier, BullRushViperCritModifier;
var config WeaponDamageValue PALOCKJAW_BASEDAMAGE;
var config WeaponDamageValue ViciousBiteDamage;
var config int ViciousBiteHitModifier, ViciousBiteCritModifier;
var config int PA_SLUG_SHOT_COOLDOWN;
var config int PA_SLUG_SHOT_AMMO_COST;
var config int PA_SLUG_SHOT_PIERCE;
var config int PA_TRENCH_GUN_AMMO_COST;
var config int PA_TRENCH_GUN_COOLDOWN;
var config int PA_TRENCH_GUN_TILE_WIDTH;
var config float PA_TRENCH_GUN_CONE_LENGTH;
var config int PA_STREET_SWEEPER_AMMO_COST;
var config int PA_STREET_SWEEPER_COOLDOWN;
var config int PA_STREET_SWEEPER_CONE_LENGTH;
var config int PA_STREET_SWEEPER_TILE_WIDTH;
var config int PA_STREET_SWEEPER_UNARMORED_DAMAGE_BONUS;
var config array<name> TELEKINETICDELIVERY_ABILITIES;
//var config int EntwineDefense;
//var config int EntwinePullAim;

//var config int BURROWED_ATTACK_RANGE_METERS; //berserker

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;
	Templates.AddItem(PA_PoisonSpit());
	Templates.AddItem(PA_EnhancedSpit());
	Templates.AddItem(PA_ViperMolt());
	Templates.AddItem(PA_ViperBlendIn());
	Templates.AddItem(PA_ViperSlither());
	Templates.AddItem(CustomEndBind());
	Templates.AddItem(AddBlasterMaster());
	Templates.AddItem(SuckerPunch());
	Templates.AddItem(AddCrossOut());
	Templates.AddItem(Pugilistic());
	Templates.AddItem(AddGrandstand());
	Templates.AddItem(AddMutonTaunt());
	Templates.AddItem(ExcessiveForce());
	Templates.AddItem(ChargeIn());
	Templates.AddItem(BayonetMaster());
	Templates.AddItem(BayonetMasterRifle());
	Templates.AddItem(BayonetMasterCannon());
	Templates.AddItem(HuntDown());
	Templates.AddItem(Necromancer());
	Templates.AddItem(Apparition());
	Templates.AddItem(ThrashB());
	Templates.AddItem(ThrashBAttack());
	Templates.AddItem(ThrashA());
	Templates.AddItem(ThrashAAttack());
	Templates.AddItem(MutonGrenadePocket());
	Templates.AddItem(CreatePABayonetAbility('PABayonet', false));
	Templates.AddItem(AddPABayonetChargeAbility());
	Templates.AddItem(PAShakeUp());
	Templates.AddItem(PAFearStriker());
	Templates.AddItem(PABrandishClaws());
	Templates.AddItem(PAPainTrainB());
	Templates.AddItem(PAPainTrainA());
	//Templates.AddItem(BattleSuitGolem()); This ability is fucking busted
	Templates.AddItem(PARecklessCharge());
	Templates.AddItem(PAChargeServos());
	Templates.AddItem(PATurboBoost());
	Templates.AddItem(PAWakeUpCall());
	Templates.AddItem(PAOmen());
	Templates.AddItem(PABenkeisSwiftness());
	Templates.AddItem(PASeriousBomber());
	Templates.AddItem(CreatePAIcarusDropGrabAbility());
	Templates.AddItem(PADangerZone());
	Templates.AddItem(PAPackAlpha());
	Templates.AddItem(PARumblingTank());
	Templates.AddItem(AddPACombatReadinessA());
	//Templates.AddItem(PACombatReadinessAPassive());
	Templates.AddItem(AddPACombatReadinessB());
	//Templates.AddItem(PACombatReadinessBPassive());
	Templates.AddItem(Serpentine());
	//Templates.AddItem(PAPuppetShow());
	Templates.AddItem(PurePassive('PAPuppetShow', "img:///UILibrary_MZChimeraIcons.Ability_Puppeteer", true, 'eAbilitySource_Item'));
	Templates.AddItem(PAVoidFlood());
	Templates.AddItem(PAVoidFloodEffect());
	Templates.AddItem(PAAbductor());
	Templates.AddItem(Create_AnimSet_Passive('MutonWarCry_Animations_Passive', "PA_Muton_ANIM.Anims.AS_Muton_PA")); //we're doing this to avoid having to make new archetypes for Muton Hunters and Prowlers
	Templates.AddItem(PARangeFinder());
	Templates.AddItem(PA_NoScope());
	Templates.AddItem(AlloyKnuckleGuards());
	Templates.AddItem(EleriumKnuckleGuards());
	Templates.AddItem(AlloyClawCovers());
	Templates.AddItem(EleriumClawCovers());
	Templates.AddItem(PAMutonPunch());
	Templates.AddItem(PABullRushMuton());
	Templates.AddItem(Create_AnimSet_Passive('MutonPunch_Animation', "PA_Muton_ANIM.Anims.AS_Muton_PA")); //we're doing this to avoid having to make new archetypes for Muton Hunters and Prowlers
	Templates.AddItem(PAFacelessRegen()); // This is a dummy ability to make Faceless regen transparent to the player
	Templates.AddItem(ThrashF());
	Templates.AddItem(ThrashFAttack());
	Templates.AddItem(PAHaze());
	Templates.AddItem(BakhtakTalons());
	Templates.AddItem(PAJackTheRipper());
	Templates.AddItem(PARippingSlash());
	Templates.AddItem(CreatePAScythingClawsAbility());
	Templates.AddItem(PurePassive('PABungeeSlime', "img:///UILibrary_MZChimeraIcons.Ability_BindRelease"));
	Templates.AddItem(CreateGetOverHereAllyAbility());
	Templates.AddItem(PA_RussianRoulette());
	Templates.AddItem(PAHarrierLauncherRestoration());
	Templates.AddItem(PAHarrierLauncherIntensifier());
	Templates.AddItem(CreatePAHarrierGrenadeAbility());
	Templates.AddItem(CreatePAHarrierFireGrenadeAbility());
	Templates.AddItem(CreatePAHarrierPoisonGrenadeAbility());
	Templates.AddItem(PAEndOfGeneva());
	Templates.AddItem(PAFeint());
	Templates.AddItem(PACountingOnYou());
	Templates.AddItem(Create_AnimSet_Passive('ViperMelee_Animation', "PA_VIPER_Melee.Anims.AS_XComViper_Melee"));
	Templates.AddItem(PAViperBash());
	Templates.AddItem(PABullRushViper());
	Templates.AddItem(PALockjaw());
	Templates.AddItem(PALockjawAttack());
	Templates.AddItem(PAViciousBite());
	Templates.Additem(PA_SlugShot());
	Templates.Additem(PASlugShotRangeEffect());
	Templates.Additem(PA_TrenchGun());
	Templates.Additem(PA_StreetSweeper());
	Templates.Additem(PA_StreetSweeperBonusDamage());
	Templates.AddItem(PAJackedFrostZombies());
	//Templates.AddItem(PA_Entwine());
	Templates.AddItem(PABurningPinions());
	Templates.AddItem(TelekineticDelivery());

	return Templates;
}


static function X2AbilityTemplate CustomEndBind()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2Condition_UnitEffectsWithAbilitySource UnitEffectsCondition;
	local X2AbilityTrigger_PlayerInput      InputTrigger;
	local X2AbilityTarget_Single            SingleTarget;
	local X2Effect_RemoveEffects            RemoveEffects;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_EndBind');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_viper_bind";

	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_ShowIfAvailable;
	Template.Hostility = eHostility_Offensive;

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	Template.AbilityCosts.AddItem(ActionPointCost);

	Template.AbilityToHitCalc = default.DeadEye;

	// This ability is only valid if this unit is currently binding the target
	UnitEffectsCondition = new class'X2Condition_UnitEffectsWithAbilitySource';
	UnitEffectsCondition.AddRequireEffect(class'X2Ability_Viper'.default.BindSustainedEffectName, 'AA_UnitIsBound');
	Template.AbilityTargetConditions.AddItem(UnitEffectsCondition);

	SingleTarget = new class'X2AbilityTarget_Single';
	Template.AbilityTargetStyle = SingleTarget;

	InputTrigger = new class'X2AbilityTrigger_PlayerInput';
	Template.AbilityTriggers.AddItem(InputTrigger);

	// Remove the bind/bound effects from the Target
	RemoveEffects = new class'X2Effect_RemoveEffects';
	RemoveEffects.EffectNamesToRemove.AddItem(class'X2Ability_Viper'.default.BindSustainedEffectName);
	Template.AddTargetEffect(RemoveEffects);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = BindEnd_BuildVisualization;
//BEGIN AUTOGENERATED CODE: Template Overrides 'EndBind'
	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'EndBind'

	return Template;
}


simulated function BindEnd_BuildVisualization(XComGameState VisualizeGameState)
{
	local XComGameStateHistory			History;
	local XComGameStateContext_Ability  Context;
	local StateObjectReference          InteractingUnitRef;
	

	local VisualizationActionMetadata        EmptyTrack;
	local VisualizationActionMetadata        ActionMetadata;

	History = `XCOMHISTORY;

	Context = XComGameStateContext_Ability(VisualizeGameState.GetContext());

	//Configure the visualization track for the shooter
	//****************************************************************************************
	ActionMetadata = EmptyTrack;
	InteractingUnitRef = Context.InputContext.SourceObject;
	ActionMetadata.VisualizeActor = History.GetVisualizer(InteractingUnitRef.ObjectID);
	ActionMetadata.StateObject_OldState = History.GetGameStateForObjectID(InteractingUnitRef.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	ActionMetadata.StateObject_NewState = VisualizeGameState.GetGameStateForObjectID(InteractingUnitRef.ObjectID);

	BindEndSource_BuildVisualization(VisualizeGameState, ActionMetadata, 'AA_Success');
		//****************************************************************************************

	//Configure the visualization track for the target
	//****************************************************************************************
	ActionMetadata = EmptyTrack;
	InteractingUnitRef = Context.InputContext.PrimaryTarget;
	ActionMetadata.StateObject_OldState = History.GetGameStateForObjectID(InteractingUnitRef.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	ActionMetadata.StateObject_NewState = VisualizeGameState.GetGameStateForObjectID(InteractingUnitRef.ObjectID);
	ActionMetadata.VisualizeActor = History.GetVisualizer(InteractingUnitRef.ObjectID);

	BindEndTarget_BuildVisualization(VisualizeGameState, ActionMetadata, 'AA_Success');
		//****************************************************************************************
}

simulated function BindEndSource_BuildVisualization(XComGameState VisualizeGameState, out VisualizationActionMetadata ActionMetadata, const name EffectApplyResult)
{
	local XComGameStateHistory			History;
	local XComGameState_Effect          BindSustainedEffectState;
	local XComGameState_Unit            OldUnitState, BindTarget;
	local X2Action_ViperBindEnd         BindEnd;
	local XComGameStateContext			Context;

	History = `XCOMHISTORY;

	if (ActionMetadata.VisualizeActor != None)
	{
		Context = VisualizeGameState.GetContext( );

		OldUnitState = XComGameState_Unit(ActionMetadata.StateObject_OldState);
		BindSustainedEffectState = OldUnitState.GetUnitApplyingEffectState(class'X2Ability_Viper'.default.BindSustainedEffectName);
		BindTarget = XComGameState_Unit(History.GetGameStateForObjectID(BindSustainedEffectState.ApplyEffectParameters.TargetStateObjectRef.ObjectID));

		if( BindTarget.IsDead() ||
			BindTarget.IsBleedingOut() ||
			BindTarget.IsUnconscious() )
		{
			// The target is dead, wait for it to die and inform the source
			class'X2Action_WaitForAbilityEffect'.static.AddToVisualizationTree(ActionMetadata, Context, false, ActionMetadata.LastActionAdded);
		}
		else
		{

			BindEnd = X2Action_ViperBindEnd(class'X2Action_ViperBindEnd'.static.AddToVisualizationTree(ActionMetadata, Context, false, ActionMetadata.LastActionAdded));
			BindEnd.PartnerUnitRef = BindSustainedEffectState.ApplyEffectParameters.TargetStateObjectRef;
		}
	}
}

simulated function BindEndTarget_BuildVisualization(XComGameState VisualizeGameState, out VisualizationActionMetadata ActionMetadata, const name EffectApplyResult)
{	
	local XComGameState_Effect          BindSustainedEffectState;
	local XComGameState_Unit            OldUnitState;
	local X2Action_ViperBindEnd         BindEnd;
	local XComGameStateContext			Context;	

	if(ActionMetadata.VisualizeActor != None)
	{
		Context = VisualizeGameState.GetContext();

		if( XComGameState_Unit(ActionMetadata.StateObject_NewState).IsDead() ||
		   XComGameState_Unit(ActionMetadata.StateObject_NewState).IsBleedingOut() ||
		   XComGameState_Unit(ActionMetadata.StateObject_NewState).IsUnconscious() )
		{
			OldUnitState = XComGameState_Unit(ActionMetadata.StateObject_OldState);
			BindSustainedEffectState = OldUnitState.GetUnitAffectedByEffectState(class'X2Ability_Viper'.default.BindSustainedEffectName);

			BindEnd = X2Action_ViperBindEnd(class'X2Action_ViperBindEnd'.static.AddToVisualizationTree(ActionMetadata, Context, false, ActionMetadata.LastActionAdded));
			BindEnd.PartnerUnitRef = BindSustainedEffectState.ApplyEffectParameters.SourceStateObjectRef;
		}
	}
}



//------------------------------------------------------------------------------
// Poison Spit
//------------------------------------------------------------------------------

static function X2AbilityTemplate PA_PoisonSpit()
{
	local X2AbilityTemplate                 Template;	
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2AbilityTarget_Cursor            CursorTarget;
	local X2AbilityMultiTarget_Cylinder     CylinderMultiTarget;
	local X2Condition_UnitProperty          UnitPropertyCondition;
	local X2AbilityTrigger_PlayerInput      InputTrigger;
	local X2AbilityCooldown_LocalAndGlobal  Cooldown;
	//local X2Effect_PersistentStatChange	DisorientedEffect;
	//local X2Condition_AbilityProperty 	DisorientSpitCondition;
	local X2Effect_PersistentStatChange	EnhancedEffect;
	local X2Condition_AbilityProperty 	EnhancedSpitCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_PoisonSpit');
	Template.bDontDisplayInAbilitySummary = false;
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_poisonspit";

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	Template.AbilityCosts.AddItem(ActionPointCost);
	
	Template.AbilityToHitCalc = default.DeadEye;
	
	Template.AddMultiTargetEffect(CreatePA_PoisonStatusEffect());

	//if (default.EnhancedSpitDisorients) {
	//	DisorientedEffect = class'X2StatusEffects'.static.CreateDisorientedStatusEffect();
	//	DisorientSpitCondition = new class'X2Condition_AbilityProperty';
	//	DisorientSpitCondition.OwnerHasSoldierAbilities.AddItem('PA_EnhancedSpit');
	//	DisorientedEffect.TargetConditions.AddItem(DisorientSpitCondition);
	//	Template.AddMultiTargetEffect(DisorientedEffect);
	//}

// var config bool EnhancedSpitAcid; causes hang
//	local X2Effect_Burning             	AcidEffect;
//	local X2Condition_AbilityProperty 	AcidSpitCondition;
//	if (default.EnhancedSpitAcid) {
//		AcidEffect = class'X2StatusEffects'.static.CreateAcidBurningStatusEffect(2,1);
//		AcidSpitCondition = new class'X2Condition_AbilityProperty';
//		AcidSpitCondition.OwnerHasSoldierAbilities.AddItem('PA_EnhancedSpit');
//		AcidEffect.TargetConditions.AddItem(AcidSpitCondition);
//		Template.AddMultiTargetEffect(AcidEffect);
//		Template.AddMultiTargetEffect(new class'X2Effect_ApplyAcidToWorld');
//	}

	EnhancedEffect = CreateEnhancedStatusEffect();
	EnhancedSpitCondition = new class'X2Condition_AbilityProperty';
	EnhancedSpitCondition.OwnerHasSoldierAbilities.AddItem('PA_EnhancedSpit');
	EnhancedEffect.TargetConditions.AddItem(EnhancedSpitCondition);
	Template.AddMultiTargetEffect(EnhancedEffect);

	// PA this only applies the normal (tiny) poison effect, not mine
	Template.AddMultiTargetEffect(new class'X2Effect_ApplyPoisonToWorld');

	CursorTarget = new class'X2AbilityTarget_Cursor';
	CursorTarget.bRestrictToWeaponRange = true;
	Template.AbilityTargetStyle = CursorTarget;

	CylinderMultiTarget = new class'X2AbilityMultiTarget_Cylinder';
	CylinderMultiTarget.bUseWeaponRadius = true;
	CylinderMultiTarget.fTargetHeight = default.PoisonSpitHeight;
	CylinderMultiTarget.bUseOnlyGroundTiles = true;
	Template.AbilityMultiTargetStyle = CylinderMultiTarget;

	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeDead = true;
	Template.AbilityShooterConditions.AddItem(UnitPropertyCondition); 
	Template.AddShooterEffectExclusions();

	InputTrigger = new class'X2AbilityTrigger_PlayerInput';
	Template.AbilityTriggers.AddItem(InputTrigger);
	
	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_AlwaysShow;
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_viper_poisonspit";
	Template.bUseAmmoAsChargesForHUD = false;

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.CinescriptCameraType = "Viper_PoisonSpit";

	Template.TargetingMethod = class'X2TargetingMethod_ViperSpit';

	// Cooldown on the ability
	Cooldown = new class'X2AbilityCooldown_LocalAndGlobal';
	Cooldown.iNumTurns = 3;
	Cooldown.NumGlobalTurns = 1;
	Template.AbilityCooldown = Cooldown;

	// This action is considered 'hostile' and can be interrupted!
	Template.Hostility = eHostility_Offensive;
	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;

	return Template;
}

// Copied from X2StatusEffects::CreatePoisonedStatusEffect() and customized
static function X2Effect_PersistentStatChange CreatePA_PoisonStatusEffect()
{
	local X2Effect_PersistentStatChange     PersistentStatChangeEffect;
	local X2Effect_ApplyWeaponDamage              DamageEffect;
	local X2Condition_UnitProperty UnitPropCondition;

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.EffectName = class'X2StatusEffects'.default.PoisonedName;
	PersistentStatChangeEffect.DuplicateResponse = eDupe_Refresh;
	PersistentStatChangeEffect.BuildPersistentEffect(class'X2StatusEffects'.default.POISONED_TURNS,, false,,eGameRule_PlayerTurnBegin);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Penalty, class'X2StatusEffects'.default.PoisonedFriendlyName, class'X2StatusEffects'.default.PoisonedFriendlyDesc, "img:///UILibrary_PerkIcons.UIPerk_poisoned");
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.BasicSpitMobility);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense, default.BasicSpitAim);
	PersistentStatChangeEffect.iInitialShedChance = class'X2StatusEffects'.default.POISONED_INITIAL_SHED;
	PersistentStatChangeEffect.iPerTurnShedChance = 10; // class'X2StatusEffects'.default.POISONED_PER_TURN_SHED;
	PersistentStatChangeEffect.VisualizationFn = class'X2StatusEffects'.static.PoisonedVisualization;
	PersistentStatChangeEffect.EffectTickedVisualizationFn = class'X2StatusEffects'.static.PoisonedVisualizationTicked;
	PersistentStatChangeEffect.EffectRemovedVisualizationFn = class'X2StatusEffects'.static.PoisonedVisualizationRemoved;
	PersistentStatChangeEffect.DamageTypes.AddItem('Poison');
	PersistentStatChangeEffect.bRemoveWhenTargetDies = true;

	if (class'X2StatusEffects'.default.PoisonEnteredParticle_Name != "")
	{
		PersistentStatChangeEffect.VFXTemplateName = class'X2StatusEffects'.default.PoisonEnteredParticle_Name;
		PersistentStatChangeEffect.VFXSocket = class'X2StatusEffects'.default.PoisonEnteredSocket_Name;
		PersistentStatChangeEffect.VFXSocketsArrayName = class'X2StatusEffects'.default.PoisonEnteredSocketsArray_Name;
	}

	UnitPropCondition = new class'X2Condition_UnitProperty';
	UnitPropCondition.ExcludeFriendlyToSource = false;
	UnitPropCondition.ExcludeRobotic = true;
	PersistentStatChangeEffect.TargetConditions.AddItem(UnitPropCondition);

	DamageEffect = new class'X2Effect_ApplyWeaponDamage';
	DamageEffect.EffectDamageValue.Damage = default.BasicSpitDamage;
	DamageEffect.EffectDamageValue.DamageType = 'Poison';
	DamageEffect.bIgnoreBaseDamage = true;
	DamageEffect.bBypassShields = true; // added for PA
	DamageEffect.DamageTypes.AddItem('Poison');
	PersistentStatChangeEffect.ApplyOnTick.AddItem(DamageEffect);

	return PersistentStatChangeEffect;
}

//------------------------------------------------------------------------------
// Enhanced Spit
// The ability does nothing, except display an icon in the lower left corner
// The magic happens in PA_PoisonSpit OwnerHasSoldierAbilities
//------------------------------------------------------------------------------

static function X2AbilityTemplate PA_EnhancedSpit()
{
	local X2AbilityTemplate Template;
	local X2Effect_PersistentStatChange EnhancedEffect;
	local X2AbilityTrigger_UnitPostBeginPlay Trigger;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_EnhancedSpit');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_poisonspit";
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	// from RobotImmunities, always show icon in lower left
 	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
 	Template.AbilityTriggers.AddItem(Trigger);
	EnhancedEffect = new class'X2Effect_PersistentStatChange';
	EnhancedEffect.BuildPersistentEffect(1, true, true, true);
	EnhancedEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage,,, Template.AbilitySourceName);
	EnhancedEffect.AddPersistentStatChange(eStat_HP, 0);
	Template.AddTargetEffect(EnhancedEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

// Applies effects on top of basic damage, does not need its own visualization
static function X2Effect_PersistentStatChange CreateEnhancedStatusEffect()
{
	local X2Effect_PersistentStatChange     PersistentStatChangeEffect;
	local X2Effect_ApplyWeaponDamage              DamageEffect;
	local X2Condition_UnitProperty UnitPropCondition;

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.EffectName = class'X2StatusEffects'.default.PoisonedName;
	PersistentStatChangeEffect.DuplicateResponse = eDupe_Allow; // key point to add over basic damage
	PersistentStatChangeEffect.BuildPersistentEffect(class'X2StatusEffects'.default.POISONED_TURNS,, false,,eGameRule_PlayerTurnBegin);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.EnhancedSpitMobility);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense, default.EnhancedSpitAim);
	PersistentStatChangeEffect.iInitialShedChance = class'X2StatusEffects'.default.POISONED_INITIAL_SHED;
	PersistentStatChangeEffect.iPerTurnShedChance = 10; // class'X2StatusEffects'.default.POISONED_PER_TURN_SHED;
	PersistentStatChangeEffect.DamageTypes.AddItem('Poison');
	PersistentStatChangeEffect.bRemoveWhenTargetDies = true;

	UnitPropCondition = new class'X2Condition_UnitProperty';
	UnitPropCondition.ExcludeFriendlyToSource = false;
	UnitPropCondition.ExcludeRobotic = true;
	PersistentStatChangeEffect.TargetConditions.AddItem(UnitPropCondition);

	DamageEffect = new class'X2Effect_ApplyWeaponDamage';
	DamageEffect.EffectDamageValue.Damage = default.EnhancedSpitDamage;
	DamageEffect.EffectDamageValue.DamageType = 'Poison';
	DamageEffect.bIgnoreBaseDamage = true;
	DamageEffect.bBypassShields = true; // added for PA
	DamageEffect.DamageTypes.AddItem('Poison');
	PersistentStatChangeEffect.ApplyOnTick.AddItem(DamageEffect);

	return PersistentStatChangeEffect;
}


//------------------------------------------------------------------------------
// Molt
//------------------------------------------------------------------------------


static function X2AbilityTemplate PA_ViperMolt()
{
	local X2AbilityTemplate						Template;
	local X2AbilityCost_ActionPoints			ActionPointCost;
	local X2AbilityCooldown						Cooldown;
	local X2Condition_UnitEffects				ExcludeEffects;
	local PA_MoltCondition						Condition;
	
	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_ViperMolt');
	
	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bFreeCost = true;
	Template.AbilityCosts.AddItem(ActionPointCost);
	
	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.ViperMoltCooldown;
	Template.AbilityCooldown = Cooldown;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	
	// Rather than the normal shooter exclusion conditions, we're just going to exclude Carry Unit and Bound, as well as adding Mind Control
	ExcludeEffects = new class'X2Condition_UnitEffects';
	ExcludeEffects.AddExcludeEffect(class'X2Effect_MindControl'.default.EffectName, 'AA_UnitIsMindControlled');
	ExcludeEffects.AddExcludeEffect(class'X2Ability_CarryUnit'.default.CarryUnitEffectName, 'AA_CarryingUnit');
	ExcludeEffects.AddExcludeEffect(class'X2AbilityTemplateManager'.default.BoundName, 'AA_UnitIsBound');
	Template.AbilityShooterConditions.AddItem(ExcludeEffects);
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);

	Condition = new class'PA_MoltCondition';
	Template.AbilityTargetConditions.AddItem(Condition);

	// Remove all the things
	Template.AddTargetEffect(static.RemoveAllEffectsByDamageType(GetViperMoltDamageTypeNames()));
	
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	Template.IconImage = "img:///UILibrary_PlayableAdvent.Viper_Molt";
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_CORPORAL_PRIORITY;
	Template.Hostility = eHostility_Defensive;
	Template.bDisplayInUITooltip = false;
	Template.bLimitTargetIcons = true;
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.ActivationSpeech = 'CombatStim';
	
	Template.bShowActivation = true;
	Template.bSkipFireAction = true;
	Template.bDontDisplayInAbilitySummary = false;
	Template.CustomSelfFireAnim = 'FF_FireMedkitSelf';
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	
	return Template;
}

// This is straight from the Gremlin heal, but it takes care of all the stuff Molt should cleanse
static function X2Effect_RemoveEffectsByDamageType RemoveAllEffectsByDamageType(array<name> DamageTypeNames)
{
	local X2Effect_RemoveEffectsByDamageType RemoveEffectTypes;
	local name DamageTypeName;

	RemoveEffectTypes = new class'X2Effect_RemoveEffectsByDamageType';
	foreach DamageTypeNames(DamageTypeName)
	{
		RemoveEffectTypes.DamageTypesToRemove.AddItem(DamageTypeName);
	}

	return RemoveEffectTypes;
}

static function array<name> GetViperMoltDamageTypeNames()
{
	local array<name> DamageTypeNames;

	DamageTypeNames.Length = 0;
	DamageTypeNames.AddItem('Fire');
	DamageTypeNames.AddItem('Poison');
	DamageTypeNames.AddItem(class'X2Effect_ParthenogenicPoison'.default.ParthenogenicPoisonType);
	DamageTypeNames.AddItem('Acid');

	return DamageTypeNames;
}

//------------------------------------------------------------------------------
// Blend In
//------------------------------------------------------------------------------

static function X2AbilityTemplate PA_ViperBlendIn()
{
	local X2AbilityTemplate Template;
	local X2Effect_RangerStealth StealthEffect;
	local X2AbilityCooldown Cooldown;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_ViperBlendIn');

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.Hostility = eHostility_Neutral;
	Template.IconImage = "img:///UILibrary_PlayableAdvent.Viper_BlendIn";
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_COLONEL_PRIORITY;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.AbilityCosts.AddItem(default.FreeActionCost);

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = 3;
	Template.AbilityCooldown = Cooldown;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityShooterConditions.AddItem(new class'X2Condition_Stealth');

	StealthEffect = new class'X2Effect_RangerStealth';
	StealthEffect.BuildPersistentEffect(1, true, true, false, eGameRule_PlayerTurnEnd);
	StealthEffect.SetDisplayInfo(ePerkBuff_Bonus, Template.LocFriendlyName, Template.GetMyHelpText(), Template.IconImage, true);
	StealthEffect.bRemoveWhenTargetConcealmentBroken = true;
	Template.AddTargetEffect(StealthEffect);

	Template.AddTargetEffect(class'X2Effect_Spotted'.static.CreateUnspottedEffect());

	Template.ActivationSpeech = 'ActivateConcealment';
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.bSkipFireAction = true;

	return Template;
}

static function X2AbilityTemplate PA_ViperSlither()
{
	local X2AbilityTemplate Template;
	local X2Effect_PersistentStatChange SlitherEffect;
	local X2AbilityCooldown Cooldown;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_ViperSlither');

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.Hostility = eHostility_Neutral;
	Template.IconImage = "img:///UILibrary_PlayableAdvent.Viper_Slither";
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_COLONEL_PRIORITY;
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.AbilityCosts.AddItem(default.FreeActionCost);
	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = 4;
	Template.AbilityCooldown = Cooldown;
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	SlitherEffect = new class'X2Effect_PersistentStatChange';
	SlitherEffect.BuildPersistentEffect(2, false, false, false, eGameRule_PlayerTurnBegin);
	SlitherEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, , , Template.AbilitySourceName);
	SlitherEffect.AddPersistentStatChange(eStat_Mobility, 4);
	SlitherEffect.AddPersistentStatChange(eStat_Defense, 20);
	Template.AddTargetEffect(SlitherEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;

	return Template;
}

static function X2AbilityTemplate AddBlasterMaster()
{
	local X2AbilityTemplate				Template;
	local X2Effect_AddGrenade			ItemEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'BlasterMaster');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_muton_aliengrenade"; 
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);
	Template.bIsPassive = true;

	ItemEffect = new class 'X2Effect_AddGrenade';
	ItemEffect.DataName = 'MutonGrenade';
	Template.AddTargetEffect (ItemEffect);

	Template.bCrossClassEligible = false;
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

static function X2DataTemplate SuckerPunch()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2AbilityToHitCalc_StandardMelee  StandardMelee;
	local X2Effect_ApplyWeaponDamage        WeaponDamageEffect;
	local X2Condition_UnitEffects           UnitEffectsCondition;
	local X2Condition_UnitProperty			UnitPropertyCondition;
	local X2Effect_Stunned				    StunnedEffect;
	local X2AbilityCooldown				    Cooldown;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'SuckerPunch');

	Template.bDontDisplayInAbilitySummary = false;
	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_AlwaysShow;
	Template.CustomFireAnim = 'FF_Melee';
	Template.CustomMovingFireAnim = 'MV_Melee';	
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.CinescriptCameraType = "Spark_Strike";
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ability_CripplingBlow";
	Template.AbilityConfirmSound = "TacticalUI_SwordConfirm";

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);
	
	Cooldown = new class'X2AbilityCooldown';
    Cooldown.iNumTurns = 3;
    Template.AbilityCooldown = Cooldown;

	StandardMelee = new class'X2AbilityToHitCalc_StandardMelee';
	StandardMelee.BuiltInHitMod = 10;
	Template.AbilityToHitCalc = StandardMelee;

	Template.AbilityTargetStyle = new class'X2AbilityTarget_MovingMelee';
	Template.TargetingMethod = class'X2TargetingMethod_MeleePath';

	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.AbilityTriggers.AddItem(new class'X2AbilityTrigger_EndOfMove');


	// Target Conditions
	//
	//Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);
	Template.AbilityTargetConditions.AddItem(default.MeleeVisibilityCondition);
	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeFriendlyToSource = true;
	UnitPropertyCondition.ExcludeRobotic = false;
	Template.AbilityTargetConditions.AddItem(UnitPropertyCondition);

	// Shooter Conditions
	//
	UnitEffectsCondition = new class'X2Condition_UnitEffects';
	UnitEffectsCondition.AddExcludeEffect(class'X2AbilityTemplateManager'.default.BoundName, 'AA_UnitIsBound');
	UnitEffectsCondition.AddExcludeEffect(class'X2Ability_CarryUnit'.default.CarryUnitEffectName, 'AA_CarryingUnit');
	Template.AbilityShooterConditions.AddItem(UnitEffectsCondition);
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	
	// Damage Effect
	//
	WeaponDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	WeaponDamageEffect.EffectDamageValue.Damage = 8;
	WeaponDamageEffect.EffectDamageValue.Spread = 2;
	WeaponDamageEffect.EffectDamageValue.DamageType = 'Melee';
	Template.AddTargetEffect(WeaponDamageEffect);
	
	StunnedEffect = class'X2StatusEffects'.static.CreateStunnedStatusEffect(2, 100);
	StunnedEffect.bRemoveWhenSourceDies = false;
	Template.AddTargetEffect(StunnedEffect);
	
	Template.bAllowBonusWeaponEffects = false;
	Template.bSkipMoveStop = true;
	
	// Voice events
	//
	Template.SourceMissSpeech = 'SwordMiss';

	Template.BuildNewGameStateFn = TypicalMoveEndAbility_BuildGameState;
	Template.BuildInterruptGameStateFn = TypicalMoveEndAbility_BuildInterruptGameState;

	return Template;
}

static function X2AbilityTemplate AddCrossOut()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2AbilityToHitCalc_StandardMelee  StandardMelee;
	local X2Effect_ApplyWeaponDamage        WeaponDamageEffect;
	local array<name>                       SkipExclusions;
	local X2Condition_UnitProperty			UnitPropertyCondition;
	local X2Condition_UnitStatCheck			UnitStatCheckCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'CrossOut');	

	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_AlwaysShow;
	Template.CustomFireAnim = 'FF_Melee';
	Template.CustomMovingFireAnim = 'MV_Melee';	
	Template.BuildNewGameStateFn = TypicalMoveEndAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.BuildInterruptGameStateFn = TypicalMoveEndAbility_BuildInterruptGameState;	
	Template.CinescriptCameraType = "Spark_Strike";
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ability_Smash";
	Template.bHideOnClassUnlock = false;
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_SQUADDIE_PRIORITY;
	Template.AbilityConfirmSound = "TacticalUI_SwordConfirm";

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = false;
	Template.AbilityCosts.AddItem(ActionPointCost);
	
	Template.AbilityToHitCalc = default.DeadEye;

	Template.AbilityTargetStyle = new class'X2AbilityTarget_MovingMelee';
	Template.TargetingMethod = class'X2TargetingMethod_MeleePath';
	
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.AbilityTriggers.AddItem(new class'X2AbilityTrigger_EndOfMove');

	// Target Conditions
	//
	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);
	Template.AbilityTargetConditions.AddItem(default.MeleeVisibilityCondition);

	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeFullHealth = true;
	Template.AbilityTargetConditions.AddItem(UnitPropertyCondition);

	UnitStatCheckCondition = new class'X2Condition_UnitStatCheck';
	UnitStatCheckCondition.AddCheckStat(eStat_HP, 6, eCheck_LessThanOrEqual);
	Template.AbilityTargetConditions.AddItem(UnitStatCheckCondition);

	// Shooter Conditions
	//
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	SkipExclusions.AddItem(class'X2StatusEffects'.default.BurningName);
	Template.AddShooterEffectExclusions(SkipExclusions);

	// Damage Effect
	//
	WeaponDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	WeaponDamageEffect.EffectDamageValue.Damage = 15;
	WeaponDamageEffect.EffectDamageValue.DamageType = 'Melee';
	Template.AddTargetEffect(WeaponDamageEffect);

	Template.bAllowBonusWeaponEffects = false;
	Template.bSkipMoveStop = true;
	
	// Voice events
	//
	Template.SourceMissSpeech = 'SwordMiss';

	Template.SuperConcealmentLoss = class'X2AbilityTemplateManager'.default.SuperConcealmentStandardShotLoss;
	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotChosenActivationIncreasePerUse;
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.MeleeLostSpawnIncreasePerUse;
	Template.bFrameEvenWhenUnitIsHidden = true;

	return Template;
}

static function X2AbilityTemplate Pugilistic()
{
	local X2AbilityTemplate						Template;
	local X2Effect_ToHitModifier                HitModEffect;

	// Icon Properties
	Template= new(None, string('Pugilistic')) class'X2AbilityTemplate'; Template.SetTemplateName('Pugilistic');;;
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ability_Cooperation";

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	HitModEffect = new class'X2Effect_ToHitModifier';
	HitModEffect.AddEffectHitModifier(eHit_Success, 30, Template.LocFriendlyName, , true, false, true, true);
	HitModEffect.BuildPersistentEffect(1, true, false, false);
	HitModEffect.EffectName = 'Pugilistic';
	Template.AddTargetEffect(HitModEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	//  NOTE: No visualization on purpose!

	return Template;
}

static function X2AbilityTemplate AddGrandstand()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2Condition_UnitProperty          PropertyCondition;
	local X2Effect_PersistentStatChange     PersistentStatChangeEffect;
	local X2AbilityTrigger_PlayerInput      InputTrigger;
	local array<name>                       SkipExclusions;
	
	`CREATE_X2ABILITY_TEMPLATE(Template, 'Grandstand');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_beserk";
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.HUNKER_DOWN_PRIORITY;
	Template.bDisplayInUITooltip = true;

	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_ShowIfAvailable;
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = GrandstandAbility_BuildVisualization;

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);
	
	PropertyCondition = new class'X2Condition_UnitProperty';	
	PropertyCondition.ExcludeDead = true;                           // Can't hunkerdown while dead
	PropertyCondition.ExcludeFriendlyToSource = false;              // Self targeted
	Template.AbilityShooterConditions.AddItem(PropertyCondition);

	SkipExclusions.AddItem(class'X2StatusEffects'.default.BurningName);
	SkipExclusions.AddItem(class'X2AbilityTemplateManager'.default.DisorientedName);
	Template.AddShooterEffectExclusions(SkipExclusions);
	
	Template.AbilityToHitCalc = default.DeadEye;
	
	Template.AbilityTargetStyle = default.SelfTarget;

	InputTrigger = new class'X2AbilityTrigger_PlayerInput';
	Template.AbilityTriggers.AddItem(InputTrigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.EffectName = 'Grandstand';
	PersistentStatChangeEffect.BuildPersistentEffect(1 ,,,,eGameRule_PlayerTurnBegin);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Bonus, Template.LocFriendlyName, Template.GetMyHelpText(), Template.IconImage);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, 70);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, 2);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, -50);
	PersistentStatChangeEffect.DuplicateResponse = eDupe_Refresh;
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.NonAggressiveChosenActivationIncreasePerUse;

	Template.Hostility = eHostility_Defensive;
	Template.ConcealmentRule = eConceal_AlwaysEvenWithObjective;

	Template.bDontDisplayInAbilitySummary = true;

	return Template;
}

simulated function GrandstandAbility_BuildVisualization(XComGameState VisualizeGameState)
{
	local XComGameStateHistory History;
	local XComGameStateContext_Ability  Context;
	local StateObjectReference          InteractingUnitRef;
	local X2AbilityTemplate             AbilityTemplate;
	local XComGameState_Unit            UnitState;

	local VisualizationActionMetadata        EmptyTrack;
	local VisualizationActionMetadata        ActionMetadata;
	local X2Action_PlayAnimation			PlayAnimation;
	//local int EffectIndex;
	//local name ApplyResult;
//
	local X2Action_PlaySoundAndFlyOver SoundAndFlyOver;

	History = `XCOMHISTORY;

	Context = XComGameStateContext_Ability(VisualizeGameState.GetContext());
	InteractingUnitRef = Context.InputContext.SourceObject;

	//Configure the visualization track for the shooter
	//****************************************************************************************	
	ActionMetadata = EmptyTrack;
	ActionMetadata.StateObject_OldState = History.GetGameStateForObjectID(InteractingUnitRef.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	ActionMetadata.StateObject_NewState = VisualizeGameState.GetGameStateForObjectID(InteractingUnitRef.ObjectID);
	ActionMetadata.VisualizeActor = History.GetVisualizer(InteractingUnitRef.ObjectID);

	UnitState = XComGameState_Unit(ActionMetadata.StateObject_NewState);

	PlayAnimation = X2Action_PlayAnimation(class'X2Action_PlayAnimation'.static.AddToVisualizationTree(ActionMetadata, VisualizeGameState.GetContext(), false, ActionMetadata.LastActionAdded));
	//PlayAnimation.Params.AnimName = 'NO_Rage';
	PlayAnimation.Params.AnimName = 'HL_Flinch';
	
	//Civilians on the neutral team are not allowed to have sound + flyover for hunker down
	if( UnitState.GetTeam() != eTeam_Neutral )
	{
		
		SoundAndFlyOver = X2Action_PlaySoundAndFlyOver(class'X2Action_PlaySoundAndFlyOver'.static.AddToVisualizationTree(ActionMetadata, Context, false, ActionMetadata.LastActionAdded));
		AbilityTemplate = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager().FindAbilityTemplate(Context.InputContext.AbilityTemplateName);
		SoundAndFlyOver.SetSoundAndFlyOverParameters(SoundCue'SoundUI.HunkerDownCue', AbilityTemplate.LocFlyOverText, 'Grandstand', eColor_Good, AbilityTemplate.IconImage, 1.0, true);
	}
	//****************************************************************************************

}

static function X2AbilityTemplate AddMutonTaunt()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2Condition_UnitProperty          PropertyCondition;
	local X2Effect_PersistentStatChange     PersistentStatChangeEffect;
	local X2AbilityTrigger_PlayerInput      InputTrigger;
	local array<name>                       SkipExclusions;
	
	`CREATE_X2ABILITY_TEMPLATE(Template, 'MutonTaunt');
	Template.IconImage = "img:///KetarosPkg_Abilities.UIPerk_CeaseFire";
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.HUNKER_DOWN_PRIORITY;
	Template.bDisplayInUITooltip = true;

	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_ShowIfAvailable;
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = MutonTauntAbility_BuildVisualization;

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);
	
	PropertyCondition = new class'X2Condition_UnitProperty';	
	PropertyCondition.ExcludeDead = true;                           // Can't hunkerdown while dead
	PropertyCondition.ExcludeFriendlyToSource = false;              // Self targeted
	Template.AbilityShooterConditions.AddItem(PropertyCondition);

	SkipExclusions.AddItem(class'X2StatusEffects'.default.BurningName);
	SkipExclusions.AddItem(class'X2AbilityTemplateManager'.default.DisorientedName);
	Template.AddShooterEffectExclusions(SkipExclusions);
	
	Template.AbilityToHitCalc = default.DeadEye;
	
	Template.AbilityTargetStyle = default.SelfTarget;

	InputTrigger = new class'X2AbilityTrigger_PlayerInput';
	Template.AbilityTriggers.AddItem(InputTrigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.EffectName = 'MutonTaunt';
	PersistentStatChangeEffect.BuildPersistentEffect(1 ,,,,eGameRule_PlayerTurnBegin);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Bonus, Template.LocFriendlyName, Template.GetMyHelpText(), Template.IconImage);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, 70);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, -30);
	PersistentStatChangeEffect.DuplicateResponse = eDupe_Refresh;
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.NonAggressiveChosenActivationIncreasePerUse;

	Template.Hostility = eHostility_Defensive;
	Template.ConcealmentRule = eConceal_AlwaysEvenWithObjective;

	Template.bDontDisplayInAbilitySummary = true;

	return Template;
}

simulated function MutonTauntAbility_BuildVisualization(XComGameState VisualizeGameState)
{
	local XComGameStateHistory History;
	local XComGameStateContext_Ability  Context;
	local StateObjectReference          InteractingUnitRef;
	local X2AbilityTemplate             AbilityTemplate;
	local XComGameState_Unit            UnitState;

	local VisualizationActionMetadata        EmptyTrack;
	local VisualizationActionMetadata        ActionMetadata;
	local X2Action_PlayAnimation			PlayAnimation;
	//local int EffectIndex;
	//local name ApplyResult;
//
	local X2Action_PlaySoundAndFlyOver SoundAndFlyOver;

	History = `XCOMHISTORY;

	Context = XComGameStateContext_Ability(VisualizeGameState.GetContext());
	InteractingUnitRef = Context.InputContext.SourceObject;

	//Configure the visualization track for the shooter
	//****************************************************************************************	
	ActionMetadata = EmptyTrack;
	ActionMetadata.StateObject_OldState = History.GetGameStateForObjectID(InteractingUnitRef.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	ActionMetadata.StateObject_NewState = VisualizeGameState.GetGameStateForObjectID(InteractingUnitRef.ObjectID);
	ActionMetadata.VisualizeActor = History.GetVisualizer(InteractingUnitRef.ObjectID);

	UnitState = XComGameState_Unit(ActionMetadata.StateObject_NewState);

	PlayAnimation = X2Action_PlayAnimation(class'X2Action_PlayAnimation'.static.AddToVisualizationTree(ActionMetadata, VisualizeGameState.GetContext(), false, ActionMetadata.LastActionAdded));
	//PlayAnimation.Params.AnimName = 'NO_Rage';
	PlayAnimation.Params.AnimName = 'HL_SignalPositive';
	
	//Civilians on the neutral team are not allowed to have sound + flyover for hunker down
	if( UnitState.GetTeam() != eTeam_Neutral )
	{
		
		SoundAndFlyOver = X2Action_PlaySoundAndFlyOver(class'X2Action_PlaySoundAndFlyOver'.static.AddToVisualizationTree(ActionMetadata, Context, false, ActionMetadata.LastActionAdded));
		AbilityTemplate = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager().FindAbilityTemplate(Context.InputContext.AbilityTemplateName);
		SoundAndFlyOver.SetSoundAndFlyOverParameters(SoundCue'SoundUI.HunkerDownCue', AbilityTemplate.LocFlyOverText, 'MutonTaunt', eColor_Good, AbilityTemplate.IconImage, 1.0, true);
	}
	//****************************************************************************************

}

static function X2AbilityTemplate ExcessiveForce()
{

	local X2AbilityTemplate										Template;
	local X2Condition_WOTC_APA_Class_ValidWeaponCategory		RifleCondition, CannonCondition;
	local X2Effect_WOTC_APA_Class_AddAbilitiesToTarget			RifleAbilityEffect, CannonAbilityEffect;


	Template = PurePassive('ExcessiveForce', "img:///KetarosPkg_Abilities.UIPerk_gatling",, 'eAbilitySource_Perk');


	// Create effect to add Marauder when equipped with a Rifle
	RifleCondition = new class'X2Condition_WOTC_APA_Class_ValidWeaponCategory';
	RifleCondition.AllowedWeaponCategories.AddItem('PA_MutonGunCat');
	RifleCondition.bCheckSpecificSlot = true;
	RifleCondition.SpecificSlot = eInvSlot_PrimaryWeapon;

	RifleAbilityEffect = new class'X2Effect_WOTC_APA_Class_AddAbilitiesToTarget';
	RifleAbilityEffect.AddAbilities.AddItem('SkirmisherStrike');
	RifleAbilityEffect.ApplyToWeaponSlot = eInvSlot_PrimaryWeapon;
	RifleAbilityEffect.TargetConditions.AddItem(RifleCondition);
	Template.AddTargetEffect(RifleAbilityEffect);


	// Create effect to add Traverse Fire when equipped with a Cannon
	CannonCondition = new class'X2Condition_WOTC_APA_Class_ValidWeaponCategory';
	CannonCondition.AllowedWeaponCategories.AddItem('PA_MutonCannonCat');
	CannonCondition.bCheckSpecificSlot = true;
	CannonCondition.SpecificSlot = eInvSlot_PrimaryWeapon;

	CannonAbilityEffect = new class'X2Effect_WOTC_APA_Class_AddAbilitiesToTarget';
	CannonAbilityEffect.AddAbilities.AddItem('TraverseFire');
	CannonAbilityEffect.ApplyToWeaponSlot = eInvSlot_PrimaryWeapon;
	CannonAbilityEffect.TargetConditions.AddItem(CannonCondition);
	Template.AddTargetEffect(CannonAbilityEffect);


	return Template;
}

static function X2AbilityTemplate ChargeIn()
{

	local X2AbilityTemplate										Template;
	local X2Condition_WOTC_APA_Class_ValidWeaponCategory		RifleCondition;
	local X2Effect_WOTC_APA_Class_AddAbilitiesToTarget			RifleAbilityEffect;

	Template = PurePassive('ChargeIn', "img:///UILibrary_MZChimeraIcons.Ability_BatteringRam",, 'eAbilitySource_Perk');
	Template.AdditionalAbilities.AddItem('RunAndGun_LW'); // The Muton gets Run And Gun regardless of weapon choice
	// Create effect to add Extra Conditioning when equipped with a Rifle
	RifleCondition = new class'X2Condition_WOTC_APA_Class_ValidWeaponCategory';
	RifleCondition.AllowedWeaponCategories.AddItem('PA_MutonGunCat');
	RifleCondition.bCheckSpecificSlot = true;
	RifleCondition.SpecificSlot = eInvSlot_PrimaryWeapon;

	RifleAbilityEffect = new class'X2Effect_WOTC_APA_Class_AddAbilitiesToTarget';
	RifleAbilityEffect.AddAbilities.AddItem('ExtraConditioning');
	RifleAbilityEffect.TargetConditions.AddItem(RifleCondition);
	Template.AddTargetEffect(RifleAbilityEffect);

		return Template;
}

static function X2AbilityTemplate BayonetMaster()
{

	local X2AbilityTemplate										Template;
	local X2Condition_WOTC_APA_Class_ValidWeaponCategory		RifleCondition, CannonCondition;
	local X2Effect_WOTC_APA_Class_AddAbilitiesToTarget			RifleAbilityEffect, CannonAbilityEffect;


	Template = PurePassive('BayonetMaster', "img:///UILibrary_MZChimeraIcons.Ability_Knife",, 'eAbilitySource_Perk');
	// Create effect to add +15 aim and crit chance for melee when equipped with a Rifle
	RifleCondition = new class'X2Condition_WOTC_APA_Class_ValidWeaponCategory';
	RifleCondition.AllowedWeaponCategories.AddItem('PA_MutonGunCat');
	RifleCondition.bCheckSpecificSlot = true;
	RifleCondition.SpecificSlot = eInvSlot_PrimaryWeapon;

	RifleAbilityEffect = new class'X2Effect_WOTC_APA_Class_AddAbilitiesToTarget';
	RifleAbilityEffect.AddAbilities.AddItem('BayonetMasterRifle');
	RifleAbilityEffect.TargetConditions.AddItem(RifleCondition);
	Template.AddTargetEffect(RifleAbilityEffect);


	// Create effect to add +15 aim for melee when equipped with a Cannon
	CannonCondition = new class'X2Condition_WOTC_APA_Class_ValidWeaponCategory';
	CannonCondition.AllowedWeaponCategories.AddItem('PA_MutonCannonCat');
	CannonCondition.bCheckSpecificSlot = true;
	CannonCondition.SpecificSlot = eInvSlot_PrimaryWeapon;

	CannonAbilityEffect = new class'X2Effect_WOTC_APA_Class_AddAbilitiesToTarget';
	CannonAbilityEffect.AddAbilities.AddItem('BayonetMasterCannon');
	CannonAbilityEffect.TargetConditions.AddItem(CannonCondition);
	Template.AddTargetEffect(CannonAbilityEffect);


	return Template;
}

static function X2AbilityTemplate BayonetMasterRifle()
{

	local X2AbilityTemplate										Template;
	local X2Effect_ToHitModifier								ModifierEffect;
	

	Template= new(None, string('BayonetMasterRifle')) class'X2AbilityTemplate'; Template.SetTemplateName('BayonetMasterRifle');;;
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ability_Knife";

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	ModifierEffect = new class'X2Effect_ToHitModifier';
	ModifierEffect.BuildPersistentEffect(1, true, false);
	ModifierEffect.AddEffectHitModifier(eHit_Success, 15, Template.LocFriendlyName,, true, false, true, true);
	ModifierEffect.AddEffectHitModifier(eHit_Crit, 15, Template.LocFriendlyName,, true, false, true, true);
	Template.AddTargetEffect(ModifierEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;

}

static function X2AbilityTemplate BayonetMasterCannon()
{

	local X2AbilityTemplate										Template;
	local X2Effect_ToHitModifier								ModifierEffect;
	

	Template= new(None, string('BayonetMasterCannon')) class'X2AbilityTemplate'; Template.SetTemplateName('BayonetMasterCannon');;;
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ability_Knife";

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	ModifierEffect = new class'X2Effect_ToHitModifier';
	ModifierEffect.BuildPersistentEffect(1, true, false);
	ModifierEffect.AddEffectHitModifier(eHit_Success, 15, Template.LocFriendlyName,, true, false, true, true);
	Template.AddTargetEffect(ModifierEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

static function X2AbilityTemplate HuntDown()
{

	local X2AbilityTemplate										Template;

	Template = PurePassive('HuntDown', "img:///KetarosPkg_Abilities.UIPerk_tiger",, 'eAbilitySource_Perk');
	Template.AdditionalAbilities.AddItem('ABB_Parkour');
	Template.AdditionalAbilities.AddItem('Battlespace');

		return Template;
}

static function X2AbilityTemplate Necromancer()
{

	local X2AbilityTemplate										Template;

	Template = PurePassive('Necromancer', "img:///UILibrary_MZChimeraIcons.Ability_Zombie",, 'eAbilitySource_Perk');
	Template.AdditionalAbilities.AddItem('PsiReanimationMP');

		return Template;
}

static function X2AbilityTemplate Apparition()
{

	local X2AbilityTemplate										Template;

	Template = PurePassive('Apparition', "img:///UILibrary_PerkIcons.UIPerk_ghost",, 'eAbilitySource_Perk');
	Template.AdditionalAbilities.AddItem('MZTeleport');
	Template.AdditionalAbilities.AddItem('ShadowOps_Fade');
	Template.AdditionalAbilities.AddItem('WallPhasing');

		return Template;
}

static function X2AbilityTemplate ThrashB()
{
	local X2AbilityTemplate                 Template;

	Template = PurePassive('ThrashB', "img:///KetarosPkg_Abilities.UIPerk_hulk", false, 'eAbilitySource_Perk');
	Template.DefaultSourceItemSlot = eInvSlot_Unknown;
	Template.AdditionalAbilities.AddItem('ThrashBAttack');
	return Template;
}

static function X2AbilityTemplate ThrashBAttack()
{
	local X2AbilityTemplate							Template;
	local X2AbilityToHitCalc_StandardMelee			ToHitCalc;
	local X2AbilityTrigger_EventListener			Trigger;
	local X2Effect_ApplyWeaponDamage				PhysicalDamageEffect;
	local X2Effect_Persistent						BladestormTargetEffect;
	local X2Condition_UnitEffectsWithAbilitySource	BladestormTargetCondition;
	local X2Condition_UnitProperty					SourceNotConcealedCondition;
	local X2Condition_Visibility					TargetVisibilityCondition;
	local X2Condition_UnitEffects					UnitEffectsCondition;
	local X2Condition_UnitProperty					ExcludeSquadmatesCondition;
	local X2Condition_UnitProperty					AdjacencyCondition;
	local X2Effect_ImmediateAbilityActivation		BrainDamageAbilityEffect;
	local X2Effect_Knockback						KnockbackEffect;
	local X2Condition_NotItsOwnTurn					NotItsOwnTurnCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'ThrashBAttack');

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.IconImage = "img:///KetarosPkg_Abilities.UIPerk_hulk";
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_CAPTAIN_PRIORITY;

	ToHitCalc = new class'X2AbilityToHitCalc_StandardMelee';
	ToHitCalc.bReactionFire = true;
	Template.AbilityToHitCalc = ToHitCalc;
	Template.AbilityTargetStyle = default.SimpleSingleMeleeTarget;

	//  trigger on movement
	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.EventID = 'ObjectMoved';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.Filter = eFilter_None;
	Trigger.ListenerData.EventFn = class'XComGameState_Ability'.static.TypicalOverwatchListener;
	Template.AbilityTriggers.AddItem(Trigger);
	//  trigger on an attack
	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.EventID = 'AbilityActivated';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.Filter = eFilter_None;
	Trigger.ListenerData.EventFn = class'XComGameState_Ability'.static.TypicalAttackListener;
	Template.AbilityTriggers.AddItem(Trigger);

	//  it may be the case that enemy movement caused a concealment break, which made Bladestorm applicable - attempt to trigger afterwards
	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.EventID = 'UnitConcealmentBroken';
	Trigger.ListenerData.Filter = eFilter_Unit;
	Trigger.ListenerData.EventFn = ThrashConcealmentListener;
	Trigger.ListenerData.Priority = 55;
	Template.AbilityTriggers.AddItem(Trigger);
	
	Template.AbilityTargetConditions.AddItem(default.LivingHostileUnitDisallowMindControlProperty);
	TargetVisibilityCondition = new class'X2Condition_Visibility';
	TargetVisibilityCondition.bRequireGameplayVisible = true;
	TargetVisibilityCondition.bRequireBasicVisibility = true;
	TargetVisibilityCondition.bDisablePeeksOnMovement = true; //Don't use peek tiles for over watch shots	
	Template.AbilityTargetConditions.AddItem(TargetVisibilityCondition);
	Template.AbilityTargetConditions.AddItem(class'X2Ability_DefaultAbilitySet'.static.OverwatchTargetEffectsCondition());
	// Adding exclusion condition to prevent friendly bladestorm fire when panicked.
	ExcludeSquadmatesCondition = new class'X2Condition_UnitProperty';
	ExcludeSquadmatesCondition.ExcludeSquadmates = true;
	Template.AbilityTargetConditions.AddItem(ExcludeSquadmatesCondition);
		// Target Conditions
	AdjacencyCondition = new class'X2Condition_UnitProperty';
	AdjacencyCondition.RequireWithinRange = true;
	AdjacencyCondition.WithinRange = 144; //1.5 tiles in Unreal units, allows attacks on the diag
	Template.AbilityTargetConditions.AddItem(AdjacencyCondition);

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);	
	Template.AddShooterEffectExclusions();

	//Don't trigger when the source is concealed
	SourceNotConcealedCondition = new class'X2Condition_UnitProperty';
	SourceNotConcealedCondition.ExcludeConcealed = true;
	Template.AbilityShooterConditions.AddItem(SourceNotConcealedCondition);

	// Don't trigger if the unit has vanished
	UnitEffectsCondition = new class'X2Condition_UnitEffects';
	UnitEffectsCondition.AddExcludeEffect('Vanish', 'AA_UnitIsConcealed');
	UnitEffectsCondition.AddExcludeEffect('VanishingWind', 'AA_UnitIsConcealed');
	Template.AbilityShooterConditions.AddItem(UnitEffectsCondition);

	PhysicalDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	PhysicalDamageEffect.EffectDamageValue = class'X2Item_DefaultWeapons'.default.BERSERKER_MELEEATTACK_BASEDAMAGE;
	PhysicalDamageEffect.EffectDamageValue.DamageType = 'Melee';
	PhysicalDamageEffect.HideVisualizationOfResultsAdditional.AddItem('AA_HitResultFailure');
	Template.AddTargetEffect(PhysicalDamageEffect);

	//Impairing effects need to come after the damage. This is needed for proper visualization ordering.
	//Effect on a successful melee attack is triggering the BrainDamage Ability
	BrainDamageAbilityEffect = new class 'X2Effect_ImmediateAbilityActivation';
	BrainDamageAbilityEffect.BuildPersistentEffect(1, false, true, , eGameRule_PlayerTurnBegin);
	BrainDamageAbilityEffect.EffectName = 'ImmediateBrainDamage';
	// NOTICE: For now StunLancer, Muton, and Berserker all use this ability. This may change.
	BrainDamageAbilityEffect.AbilityName = class'X2Ability_Impairing'.default.ImpairingAbilityName;
	BrainDamageAbilityEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, true, , Template.AbilitySourceName);
	BrainDamageAbilityEffect.bRemoveWhenTargetDies = true;
	BrainDamageAbilityEffect.VisualizationFn = class'X2Ability_Impairing'.static.ImpairingAbilityEffectTriggeredVisualization;
	Template.AddTargetEffect(BrainDamageAbilityEffect);

	KnockbackEffect = new class'X2Effect_Knockback';
	KnockbackEffect.KnockbackDistance = 5; //Knockback 5 meters
	Template.AddTargetEffect(KnockbackEffect);

	//Prevent repeatedly hammering on a unit with Bladestorm triggers.
	//(This effect does nothing, but enables many-to-many marking of which Bladestorm attacks have already occurred each turn.)
	BladestormTargetEffect = new class'X2Effect_Persistent';
	BladestormTargetEffect.BuildPersistentEffect(1, false, true, true, eGameRule_PlayerTurnEnd);
	BladestormTargetEffect.EffectName = 'ThrashATarget';
	BladestormTargetEffect.bApplyOnMiss = true; //Only one chance, even if you miss (prevents crazy flailing counter-attack chains with a Muton, for example)
	Template.AddTargetEffect(BladestormTargetEffect);
	
	BladestormTargetCondition = new class'X2Condition_UnitEffectsWithAbilitySource';
	BladestormTargetCondition.AddExcludeEffect('ThrashATarget', 'AA_DuplicateEffectIgnored');
	Template.AbilityTargetConditions.AddItem(BladestormTargetCondition);

	Template.CustomFireAnim = 'FF_Melee';
	Template.CustomMovingFireAnim = 'MV_Melee';	

	NotItsOwnTurnCondition = new class'X2Condition_NotItsOwnTurn';
	Template.AbilityShooterConditions.AddItem(NotItsOwnTurnCondition);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = Thrash_BuildVisualization;
	Template.bShowActivation = true;

	Template.SuperConcealmentLoss = class'X2AbilityTemplateManager'.default.SuperConcealmentStandardShotLoss;
	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.NormalChosenActivationIncreasePerUse;
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.MeleeLostSpawnIncreasePerUse;

	//BEGIN AUTOGENERATED CODE: Template Overrides 'BladestormAttack'
	Template.bFrameEvenWhenUnitIsHidden = true;
	Template.DefaultSourceItemSlot = eInvSlot_Unknown;
	//END AUTOGENERATED CODE: Template Overrides 'BladestormAttack'

	return Template;
}

static function X2AbilityTemplate ThrashA()
{
	local X2AbilityTemplate                 Template;

	Template = PurePassive('ThrashA', "img:///KetarosPkg_Abilities.UIPerk_hulk", false, 'eAbilitySource_Perk');
	Template.DefaultSourceItemSlot = eInvSlot_Unknown;
	Template.AdditionalAbilities.AddItem('ThrashAAttack');
	return Template;
}

static function X2AbilityTemplate ThrashAAttack()
{
	local X2AbilityTemplate							Template;
	local X2AbilityToHitCalc_StandardMelee			ToHitCalc;
	local X2AbilityTrigger_EventListener			Trigger;
	local X2Effect_ApplyWeaponDamage				PhysicalDamageEffect;
	local X2Effect_Persistent						BladestormTargetEffect;
	local X2Condition_UnitEffectsWithAbilitySource	BladestormTargetCondition;
	local X2Condition_UnitProperty					SourceNotConcealedCondition;
	local X2Condition_Visibility					TargetVisibilityCondition;
	local X2Condition_UnitEffects					UnitEffectsCondition;
	local X2Condition_UnitProperty					ExcludeSquadmatesCondition;
	local X2Condition_UnitProperty					AdjacencyCondition;
	local X2AbilityMultiTarget_Radius				RadiusMultiTarget;
	local X2Condition_NotItsOwnTurn					NotItsOwnTurnCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'ThrashAAttack');

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.IconImage = "img:///KetarosPkg_Abilities.UIPerk_hulk";
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_CAPTAIN_PRIORITY;

	ToHitCalc = new class'X2AbilityToHitCalc_StandardMelee';
	ToHitCalc.bReactionFire = true;
	ToHitCalc.BuiltInHitMod = -15;
	Template.AbilityToHitCalc = ToHitCalc;
	Template.AbilityTargetStyle = default.SimpleSingleMeleeTarget;

	//  trigger on movement
	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.EventID = 'ObjectMoved';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.Filter = eFilter_None;
	Trigger.ListenerData.EventFn = class'XComGameState_Ability'.static.TypicalOverwatchListener;
	Template.AbilityTriggers.AddItem(Trigger);
	//  trigger on an attack
	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.EventID = 'AbilityActivated';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.Filter = eFilter_None;
	Trigger.ListenerData.EventFn = class'XComGameState_Ability'.static.TypicalAttackListener;
	Template.AbilityTriggers.AddItem(Trigger);

	//  it may be the case that enemy movement caused a concealment break, which made Bladestorm applicable - attempt to trigger afterwards
	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.EventID = 'UnitConcealmentBroken';
	Trigger.ListenerData.Filter = eFilter_Unit;
	Trigger.ListenerData.EventFn = ThrashConcealmentListener;
	Trigger.ListenerData.Priority = 55;
	Template.AbilityTriggers.AddItem(Trigger);
	
	Template.AbilityTargetConditions.AddItem(default.LivingHostileUnitDisallowMindControlProperty);
	TargetVisibilityCondition = new class'X2Condition_Visibility';
	TargetVisibilityCondition.bRequireGameplayVisible = true;
	TargetVisibilityCondition.bRequireBasicVisibility = true;
	TargetVisibilityCondition.bDisablePeeksOnMovement = true; //Don't use peek tiles for over watch shots	
	Template.AbilityTargetConditions.AddItem(TargetVisibilityCondition);
	Template.AbilityTargetConditions.AddItem(class'X2Ability_DefaultAbilitySet'.static.OverwatchTargetEffectsCondition());
	// Adding exclusion condition to prevent friendly bladestorm fire when panicked.
	ExcludeSquadmatesCondition = new class'X2Condition_UnitProperty';
	ExcludeSquadmatesCondition.ExcludeSquadmates = true;
	Template.AbilityTargetConditions.AddItem(ExcludeSquadmatesCondition);
		// Target Conditions
	AdjacencyCondition = new class'X2Condition_UnitProperty';
	AdjacencyCondition.RequireWithinRange = true;
	AdjacencyCondition.WithinRange = 144; //1.5 tiles in Unreal units, allows attacks on the diag
	Template.AbilityTargetConditions.AddItem(AdjacencyCondition);

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);	
	Template.AddShooterEffectExclusions();

	//Don't trigger when the source is concealed
	SourceNotConcealedCondition = new class'X2Condition_UnitProperty';
	SourceNotConcealedCondition.ExcludeConcealed = true;
	Template.AbilityShooterConditions.AddItem(SourceNotConcealedCondition);

	// Don't trigger if the unit has vanished
	UnitEffectsCondition = new class'X2Condition_UnitEffects';
	UnitEffectsCondition.AddExcludeEffect('Vanish', 'AA_UnitIsConcealed');
	UnitEffectsCondition.AddExcludeEffect('VanishingWind', 'AA_UnitIsConcealed');
	Template.AbilityShooterConditions.AddItem(UnitEffectsCondition);

	PhysicalDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	PhysicalDamageEffect.EffectDamageValue = class'X2Item_DefaultWeapons'.default.ANDROMEDONROBOT_MELEEATTACK_BASEDAMAGE;
	PhysicalDamageEffect.EffectDamageValue.DamageType = 'Melee';
	// This also deals environmental damage
	PhysicalDamageEffect.EnvironmentalDamageAmount = 30;
	Template.AddTargetEffect(PhysicalDamageEffect);

	//Prevent repeatedly hammering on a unit with Bladestorm triggers.
	//(This effect does nothing, but enables many-to-many marking of which Bladestorm attacks have already occurred each turn.)
	BladestormTargetEffect = new class'X2Effect_Persistent';
	BladestormTargetEffect.BuildPersistentEffect(1, false, true, true, eGameRule_PlayerTurnEnd);
	BladestormTargetEffect.EffectName = 'ThrashATarget';
	BladestormTargetEffect.bApplyOnMiss = true; //Only one chance, even if you miss (prevents crazy flailing counter-attack chains with a Muton, for example)
	Template.AddTargetEffect(BladestormTargetEffect);
	
	BladestormTargetCondition = new class'X2Condition_UnitEffectsWithAbilitySource';
	BladestormTargetCondition.AddExcludeEffect('ThrashATarget', 'AA_DuplicateEffectIgnored');
	Template.AbilityTargetConditions.AddItem(BladestormTargetCondition);

	Template.CustomFireAnim = 'FF_Melee';
	Template.CustomMovingFireAnim = 'MV_Melee';	

	NotItsOwnTurnCondition = new class'X2Condition_NotItsOwnTurn';
	Template.AbilityShooterConditions.AddItem(NotItsOwnTurnCondition);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = Thrash_BuildVisualization;
	Template.bShowActivation = true;

	Template.SuperConcealmentLoss = class'X2AbilityTemplateManager'.default.SuperConcealmentStandardShotLoss;
	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.NormalChosenActivationIncreasePerUse;
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.MeleeLostSpawnIncreasePerUse;

	//BEGIN AUTOGENERATED CODE: Template Overrides 'BladestormAttack'
	Template.bFrameEvenWhenUnitIsHidden = true;
	Template.DefaultSourceItemSlot = eInvSlot_Unknown;
	//END AUTOGENERATED CODE: Template Overrides 'BladestormAttack'

	return Template;
}

static function EventListenerReturn ThrashConcealmentListener(Object EventData, Object EventSource, XComGameState GameState, Name Event, Object CallbackData)
{
	local XComGameStateContext_Ability AbilityContext;
	local XComGameState_Unit ConcealmentBrokenUnit;
	local StateObjectReference BladestormRef;
	local XComGameState_Ability BladestormState;
	local XComGameStateHistory History;

	History = `XCOMHISTORY;

	ConcealmentBrokenUnit = XComGameState_Unit(EventSource);	
	if (ConcealmentBrokenUnit == None)
		return ELR_NoInterrupt;

	//Do not trigger if the Bladestorm Ranger himself moved to cause the concealment break - only when an enemy moved and caused it.
	AbilityContext = XComGameStateContext_Ability(GameState.GetContext().GetFirstStateInEventChain().GetContext());
	if (AbilityContext != None && AbilityContext.InputContext.SourceObject != ConcealmentBrokenUnit.ConcealmentBrokenByUnitRef)
		return ELR_NoInterrupt;

	BladestormRef = ConcealmentBrokenUnit.FindAbility('ThrashAttack');
	if (BladestormRef.ObjectID == 0)
		return ELR_NoInterrupt;

	BladestormState = XComGameState_Ability(History.GetGameStateForObjectID(BladestormRef.ObjectID));
	if (BladestormState == None)
		return ELR_NoInterrupt;
	
	BladestormState.AbilityTriggerAgainstSingleTarget(ConcealmentBrokenUnit.ConcealmentBrokenByUnitRef, false);
	return ELR_NoInterrupt;
}

simulated function Thrash_BuildVisualization(XComGameState VisualizeGameState)
{
	// Build the first shot of Bladestorm's visualization
	TypicalAbility_BuildVisualization(VisualizeGameState);
}

static function X2AbilityTemplate MutonGrenadePocket()
{

	local X2AbilityTemplate			Template;

	Template = PurePassive('MutonGrenadePocket', "img:///KetarosPkg_Abilities.UIPerk_grenade");
	
	return Template;
}

static function X2DataTemplate CreatePABayonetAbility(name TemplateName, bool bForCounterattack)
{
	// Because the Bayonet is a real weapon, the damage for it is in the weapon defintion. This just creates the capacity for the skill to exist.
	local X2AbilityTemplate Template;
	local X2AbilityCost_ActionPoints ActionPointCost;
	local X2AbilityToHitCalc_StandardMelee MeleeHitCalc;
	local X2Effect_ApplyWeaponDamage PhysicalDamageEffect;
	local X2Effect_SetUnitValue SetUnitValEffect;
	local X2Effect_ImmediateAbilityActivation ImpairingAbilityEffect;
	local X2Effect_RemoveEffects RemoveEffects;

	`CREATE_X2ABILITY_TEMPLATE(Template, TemplateName);
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_muton_bayonet";

	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.Hostility = eHostility_Offensive;

	Template.AdditionalAbilities.AddItem(class'X2Ability_Impairing'.default.ImpairingAbilityName);

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;

	if (bForCounterattack)
	{
		ActionPointCost.AllowedTypes.AddItem(class'X2CharacterTemplateManager'.default.CounterattackActionPoint);
		Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
		Template.bDontDisplayInAbilitySummary = true;
	}

	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);

	MeleeHitCalc = new class'X2AbilityToHitCalc_StandardMelee';
	Template.AbilityToHitCalc = MeleeHitCalc;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AddShooterEffectExclusions();

	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);
	Template.AbilityTargetConditions.AddItem(default.GameplayVisibilityCondition);

	// Damage Effect
	//
	PhysicalDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	Template.AddTargetEffect(PhysicalDamageEffect);

	//Impairing effects need to come after the damage. This is needed for proper visualization ordering.
	//Effect on a successful melee attack is triggering the Apply Impairing Effect Ability
	ImpairingAbilityEffect = new class 'X2Effect_ImmediateAbilityActivation';
	ImpairingAbilityEffect.BuildPersistentEffect(1, false, true, , eGameRule_PlayerTurnBegin);
	ImpairingAbilityEffect.EffectName = 'ImmediateStunImpair';
	ImpairingAbilityEffect.AbilityName = class'X2Ability_Impairing'.default.ImpairingAbilityName;
	ImpairingAbilityEffect.bRemoveWhenTargetDies = true;
	ImpairingAbilityEffect.VisualizationFn = class'X2Ability_Impairing'.static.ImpairingAbilityEffectTriggeredVisualization;
	Template.AddTargetEffect(ImpairingAbilityEffect);

	// The Muton gets to counterattack once
	SetUnitValEffect = new class'X2Effect_SetUnitValue';
	SetUnitValEffect.UnitName = class'X2Ability'.default.CounterattackDodgeEffectName;
	SetUnitValEffect.NewValueToSet = 0;
	SetUnitValEffect.CleanupType = eCleanup_BeginTurn;
	SetUnitValEffect.bApplyOnHit = true;
	SetUnitValEffect.bApplyOnMiss = true;
	Template.AddShooterEffect(SetUnitValEffect);

	// Remove the dodge increase (happens with a counter attack, which is one time per turn)
	RemoveEffects = new class'X2Effect_RemoveEffects';
	RemoveEffects.EffectNamesToRemove.AddItem(class'X2Ability'.default.CounterattackDodgeEffectName);
	RemoveEffects.bApplyOnHit = true;
	RemoveEffects.bApplyOnMiss = true;
	Template.AddShooterEffect(RemoveEffects);

	Template.AbilityTargetStyle = default.SimpleSingleMeleeTarget;

	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;

	//Custom vis merge for counter attack since we want to visualize with the original attack
	if (bForCounterattack)
		Template.MergeVisualizationFn = class'X2Ability_Muton'.static.CounterAttack_MergeVisualization;	

	if (!bForCounterattack) //Counterattack is non-interruptible (bad things happen to the visualizer otherwise)
		Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;

	Template.CinescriptCameraType = "Muton_Punch";

	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.MeleeLostSpawnIncreasePerUse;
		
	//BEGIN AUTOGENERATED CODE: Template Overrides 'Bayonet'
	//BEGIN AUTOGENERATED CODE: Template Overrides 'CounterattackBayonet'	
	Template.bFrameEvenWhenUnitIsHidden = true;	
	//END AUTOGENERATED CODE: Template Overrides 'CounterattackBayonet'
	//END AUTOGENERATED CODE: Template Overrides 'Bayonet'
	
	return Template;
}

static function X2AbilityTemplate AddPABayonetChargeAbility()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2AbilityToHitCalc_StandardMelee  StandardMelee;
	local X2Effect_ApplyWeaponDamage        WeaponDamageEffect;
	local array<name>                       SkipExclusions;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PABayonetCharge');

	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_AlwaysShow;
	Template.BuildNewGameStateFn = TypicalMoveEndAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.BuildInterruptGameStateFn = TypicalMoveEndAbility_BuildInterruptGameState;	
	Template.CinescriptCameraType = "Ranger_Reaper";
	Template.IconImage = "img:///UILibrary_LWAlienPack.LWCenturion_AbilityBayonetCharge32";
	Template.bHideOnClassUnlock = false;
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_SQUADDIE_PRIORITY;
	Template.AbilityConfirmSound = "TacticalUI_SwordConfirm";

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);
	
	StandardMelee = new class'X2AbilityToHitCalc_StandardMelee';
	Template.AbilityToHitCalc = StandardMelee;

	Template.AbilityTargetStyle = new class'X2AbilityTarget_MovingMelee';
	Template.TargetingMethod = class'X2TargetingMethod_MeleePath';

	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.AbilityTriggers.AddItem(new class'X2AbilityTrigger_EndOfMove');

	// Target Conditions
	//
	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);
	Template.AbilityTargetConditions.AddItem(default.MeleeVisibilityCondition);

	// Shooter Conditions
	//
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	SkipExclusions.AddItem(class'X2StatusEffects'.default.BurningName);
	Template.AddShooterEffectExclusions(SkipExclusions);

	// Damage Effect
	//
	WeaponDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	Template.AddTargetEffect(WeaponDamageEffect);

	Template.bAllowBonusWeaponEffects = true;
	Template.bSkipMoveStop = true;
	
	// Voice events
	//
	Template.SourceMissSpeech = 'SwordMiss';

	Template.SuperConcealmentLoss = class'X2AbilityTemplateManager'.default.SuperConcealmentStandardShotLoss;
	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotChosenActivationIncreasePerUse;
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.MeleeLostSpawnIncreasePerUse;
	Template.bFrameEvenWhenUnitIsHidden = true;

	return Template;
}

static function X2AbilityTemplate PAShakeUp()
{
	local X2AbilityTemplate     Template;
	local X2AbilityCost_ActionPoints ActionPointCost;
	local X2AbilityCooldown     Cooldown;
	local X2Effect_Panicked     PanicEffect;
	local X2AbilityTargetStyle				TargetStyle;
	local X2Condition_UnitProperty			MultiTargetProperty;
	local X2AbilityMultiTarget_Radius		RadiusMultiTarget;
	local X2Condition_UnitProperty ShooterCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PAShakeUp');

	Template.IconImage = "img:///UILibrary_DLC2Images.UIPerk_beserker_faithbreaker";
	
	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = false;
	Template.AbilityCosts.AddItem(ActionPointCost);

	TargetStyle = new class 'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.PAShakeUp_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	Template.Hostility = eHostility_Offensive;
	Template.AbilityToHitCalc = default.Deadeye;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.AddShooterEffectExclusions();

	ShooterCondition=new class'X2Condition_UnitProperty';
	ShooterCondition.ExcludeConcealed = true;
	Template.AbilityShooterConditions.AddItem(ShooterCondition);

	RadiusMultiTarget = new class'X2AbilityMultiTarget_Radius';
	RadiusMultiTarget.fTargetRadius = 27;
	RadiusMultiTarget.bIgnoreBlockingCover = true;
	//RadiusMultiTarget.bAcceptEnemyUnits = true;
	Template.AbilityMultiTargetStyle = RadiusMultiTarget;

	Template.AbilityMultiTargetConditions.AddItem(new class'X2Condition_Panic');

	MultiTargetProperty = new class'X2Condition_UnitProperty';
	MultiTargetProperty.ExcludeAlive=false;
	MultiTargetProperty.ExcludeDead=true;
	MultiTargetProperty.ExcludeFriendlyToSource=true;
	MultiTargetProperty.ExcludeHostileToSource=false;
	MultiTargetProperty.TreatMindControlledSquadmateAsHostile=true;
	MultiTargetProperty.FailOnNonUnits=true;
	MultiTargetProperty.ExcludeRobotic = true;
	Template.AbilityMultiTargetConditions.AddItem(default.GameplayVisibilityCondition);
	Template.AbilityMultiTargetConditions.AddItem(MultiTargetProperty);

	PanicEffect = class'X2StatusEffects'.static.CreatePanickedStatusEffect();
	PanicEffect.ApplyChanceFn = PAShakeUpApplyChance;
	PanicEffect.VisualizationFn = PAShakeUp_PanickedVisualization;
	Template.AddMultiTargetEffect(PanicEffect);

	Template.bSkipFireAction = true;
	Template.bShowActivation = true;
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = WarCry_BuildVisualization;
	Template.bShowPostActivation = true;
	Template.CinescriptCameraType = "AdvShieldBearer_EnergyShieldArmor";
	Template.bFriendlyFireWarning = false;

	class'X2Ability_DLC_Day60AlienRulers'.static.RemoveMimicBeaconsFromTargets(Template);

//BEGIN AUTOGENERATED CODE: Template Overrides 'Faithbreaker'
	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'Faithbreaker'
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotLostSpawnIncreasePerUse;
	return Template;
}

function WarCry_BuildVisualization(XComGameState VisualizeGameState)
{
	local XComGameStateHistory				History;
	local XComGameStateContext_Ability		context;
	local StateObjectReference				InteractingUnitRef;
	local VisualizationActionMetadata		EmptyTrack, BuildTrack, TargetTrack;
	local X2Action_PlayAnimation			PlayAnimationAction;
	local X2Action_PlaySoundAndFlyOver		SoundAndFlyover, SoundAndFlyoverTarget;
	local XComGameState_Ability				Ability;
	local XComGameState_Effect				EffectState;
	local XComGameState_Unit				UnitState;

	History = `XCOMHISTORY;
	context = XComGameStateContext_Ability(VisualizeGameState.GetContext());
	Ability = XComGameState_Ability(History.GetGameStateForObjectID(context.InputContext.AbilityRef.ObjectID, 1, VisualizeGameState.HistoryIndex - 1));
	InteractingUnitRef = context.InputContext.SourceObject;
	BuildTrack = EmptyTrack;
	BuildTrack.StateObject_OldState = History.GetGameStateForObjectID(InteractingUnitRef.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	BuildTrack.StateObject_NewState = VisualizeGameState.GetGameStateForObjectID(InteractingUnitRef.ObjectID);
	BuildTrack.VisualizeActor = History.GetVisualizer(InteractingUnitRef.ObjectID);

	SoundAndFlyover = X2Action_PlaySoundAndFlyOver(class'X2Action_PlaySoundAndFlyOver'.static.AddToVisualizationTree(BuildTrack, context, false, BuildTrack.LastActionAdded));
	SoundAndFlyover.SetSoundAndFlyOverParameters(none, Ability.GetMyTemplate().LocFlyOverText, 'None', eColor_Alien);

	PlayAnimationAction = X2Action_PlayAnimation(class'X2Action_PlayAnimation'.static.AddToVisualizationTree(BuildTrack, context, false, BuildTrack.LastActionAdded));
	PlayAnimationAction.Params.AnimName = 'HL_WarCry';
	PlayAnimationAction.bFinishAnimationWait = true;

	//foreach VisualizeGameState.IterateByClassType(class'XComGameState_Effect', EffectState)
	//{
		//if (EffectState.GetX2Effect().EffectName == class'X2Effect_WarCry'.default.EffectName)
		//{
				//TargetTrack = EmptyTrack;
				//UnitState = XComGameState_Unit(VisualizeGameState.GetGameStateForObjectID(EffectState.ApplyEffectParameters.TargetStateObjectRef.ObjectID));
				//if ((UnitState != none) && (EffectState.StatChanges.Length > 0))
				//{
					//TargetTrack.StateObject_NewState = UnitState;
					//TargetTrack.StateObject_OldState = History.GetGameStateForObjectID(UnitState.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
					//TargetTrack.VisualizeActor = UnitState.GetVisualizer();
					//SoundandFlyoverTarget = X2Action_PlaySoundAndFlyOver(class'X2Action_PlaySoundAndFlyOver'.static.AddToVisualizationTree(TargetTrack, context, false, TargetTrack.LastActionAdded));
					//SoundandFlyoverTarget.SetSoundAndFlyOverParameters(none, Ability.GetMyTemplate().LocFlyOverText, 'None', eColor_Alien);
				//}
		//}
	//}

}

function name PAShakeUpApplyChance(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState)
{
	//  this mimics the panic hit roll without actually BEING the panic hit roll
	local XComGameState_Unit TargetUnit, SourceUnit;
	local name ImmuneName;
	local int TargetRoll, RandRoll;
	local int Value, BadGuysValue;

	SourceUnit = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(ApplyEffectParameters.SourceStateObjectRef.ObjectID));
	TargetUnit = XComGameState_Unit(kNewTargetState);

	if (TargetUnit != none && SourceUnit != none)
	{
		Value = CountVisibleUnitsForUnit(SourceUnit);

		foreach class'X2AbilityToHitCalc_PanicCheck'.default.PanicImmunityAbilities(ImmuneName)
		{
			if (TargetUnit.FindAbility(ImmuneName).ObjectID != 0)
			{
				return 'AA_UnitIsImmune';
			}
			if (default.PAShakeUp_BerserkerImmunity) {
				if (TargetUnit.GetMyTemplate().CharacterGroupName == 'Berserker')
				{
				return 'AA_UnitIsImmune';
				}
			}
		}

		BadGuysValue = Value * default.PAShakeUp_DECREASE_PER_VISIBLE_ENEMY;

		TargetRoll = default.PAShakeUp_BASE_CHANCE - BadGuysValue;
		RandRoll = `SYNC_RAND(100);
		if (RandRoll < TargetRoll)
		{
			return 'AA_Success';
		}
	}

	return 'AA_EffectChanceFailed';
}

simulated function int CountVisibleUnitsForUnit(XComGameState_Unit SourceUnit, bool bSquadSight = false)
{
    local X2GameRulesetVisibilityManager VisibilityMgr;    
    local array<StateObjectReference> VisibleUnits;
	local array<X2Condition> RequiredConditions;
    local StateObjectReference UnitRef;
    local int Count;

    VisibilityMgr = `TACTICALRULES.VisibilityMgr;

	//Set default conditions (visible units need to be alive and game play visible) if no conditions were specified
	if( RequiredConditions.Length == 0 )
	{
		RequiredConditions = class'X2TacticalVisibilityHelpers'.default.LivingGameplayVisibleFilter;
	}

	if (bSquadSight)
	{
    		class'X2TacticalVisibilityHelpers'.static.GetAllVisibleObjectsForPlayer(SourceUnit.ControllingPlayer.ObjectID, VisibleUnits, RequiredConditions, -1);
	}
	else
	{
		VisibilityMgr.GetAllVisibleToSource(SourceUnit.ObjectID, VisibleUnits, class'XComGameState_Unit', -1, RequiredConditions);
	}


    foreach VisibleUnits(UnitRef)
    {
        if (SourceUnit.TargetIsEnemy(UnitRef.ObjectID, -1))
        {
            Count++;
        }
    }

    return Count;
}

static function PAShakeUp_PanickedVisualization(XComGameState VisualizeGameState, out VisualizationActionMetadata ActionMetadata, const name EffectApplyResult)
{
	local XComGameState_Unit UnitState;

	UnitState = XComGameState_Unit(ActionMetadata.StateObject_NewState);
	if (UnitState == none)
	{
		return;
	}

	if (!UnitState.IsCivilian() && EffectApplyResult != 'AA_Success')
	{
		class'X2StatusEffects'.static.AddEffectSoundAndFlyOverToTrack(ActionMetadata, VisualizeGameState.GetContext(), class'X2Effect_Panicked'.default.EffectFailedFriendlyName, '', eColor_Good, class'UIUtilities_Image'.const.UnitStatus_Panicked);
	}
}

DefaultProperties
{
}

static function X2AbilityTemplate PAFearStriker()
{
	local X2AbilityTemplate     Template;
	local X2AbilityCost_ActionPoints ActionPointCost;
	local X2AbilityCooldown     Cooldown;
	local X2Effect_Panicked     PanicEffect;
	local X2AbilityTargetStyle				TargetStyle;
	local X2Condition_UnitProperty			MultiTargetProperty;
	local X2AbilityMultiTarget_Radius		RadiusMultiTarget;
	local X2Condition_UnitProperty ShooterCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PAFearStriker');

	Template.IconImage = "img:///UILibrary_DLC2Images.UIPerk_beserker_faithbreaker";
	
	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = false;
	Template.AbilityCosts.AddItem(ActionPointCost);

	TargetStyle = new class 'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.PAFearStriker_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	Template.Hostility = eHostility_Offensive;
	Template.AbilityToHitCalc = default.Deadeye;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.AddShooterEffectExclusions();

	ShooterCondition=new class'X2Condition_UnitProperty';
	ShooterCondition.ExcludeConcealed = true;
	Template.AbilityShooterConditions.AddItem(ShooterCondition);

	RadiusMultiTarget = new class'X2AbilityMultiTarget_Radius';
	RadiusMultiTarget.fTargetRadius = 27;
	RadiusMultiTarget.bIgnoreBlockingCover = true;
	//RadiusMultiTarget.bAcceptEnemyUnits = true;
	Template.AbilityMultiTargetStyle = RadiusMultiTarget;

	Template.AbilityMultiTargetConditions.AddItem(new class'X2Condition_Panic');

	MultiTargetProperty = new class'X2Condition_UnitProperty';
	MultiTargetProperty.ExcludeAlive=false;
	MultiTargetProperty.ExcludeDead=true;
	MultiTargetProperty.ExcludeFriendlyToSource=true;
	MultiTargetProperty.ExcludeHostileToSource=false;
	MultiTargetProperty.TreatMindControlledSquadmateAsHostile=true;
	MultiTargetProperty.FailOnNonUnits=true;
	MultiTargetProperty.ExcludeRobotic = true;
	Template.AbilityMultiTargetConditions.AddItem(default.GameplayVisibilityCondition);
	Template.AbilityMultiTargetConditions.AddItem(MultiTargetProperty);

	PanicEffect = class'X2StatusEffects'.static.CreatePanickedStatusEffect();
	PanicEffect.ApplyChanceFn = PAFearStrikerApplyChance;
	PanicEffect.VisualizationFn = PAFearStriker_PanickedVisualization;
	Template.AddMultiTargetEffect(PanicEffect);

	Template.bSkipFireAction = true;
	Template.bShowActivation = true;
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = WarCry_BuildVisualization;
	Template.bShowPostActivation = true;
	Template.CinescriptCameraType = "AdvShieldBearer_EnergyShieldArmor";
	Template.bFriendlyFireWarning = false;

	class'X2Ability_DLC_Day60AlienRulers'.static.RemoveMimicBeaconsFromTargets(Template);

//BEGIN AUTOGENERATED CODE: Template Overrides 'Faithbreaker'
	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'Faithbreaker'
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotLostSpawnIncreasePerUse;
	return Template;
}

function name PAFearStrikerApplyChance(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState)
{
	//  this mimics the panic hit roll without actually BEING the panic hit roll
	local XComGameState_Unit TargetUnit, SourceUnit;
	local name ImmuneName;
	local int TargetRoll, RandRoll;
	local int Value, BadGuysValue;

	SourceUnit = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(ApplyEffectParameters.SourceStateObjectRef.ObjectID));
	TargetUnit = XComGameState_Unit(kNewTargetState);

	if (TargetUnit != none && SourceUnit != none)
	{
		Value = CountVisibleUnitsForUnit(SourceUnit);

		foreach class'X2AbilityToHitCalc_PanicCheck'.default.PanicImmunityAbilities(ImmuneName)
		{
			if (TargetUnit.FindAbility(ImmuneName).ObjectID != 0)
			{
				return 'AA_UnitIsImmune';
			}
		}

		BadGuysValue = Value * default.PAFearStriker_DECREASE_PER_VISIBLE_ENEMY;

		TargetRoll = default.PAFearStriker_BASE_CHANCE - BadGuysValue;
		RandRoll = `SYNC_RAND(100);
		if (RandRoll < TargetRoll)
		{
			return 'AA_Success';
		}
	}

	return 'AA_EffectChanceFailed';
}

static function PAFearStriker_PanickedVisualization(XComGameState VisualizeGameState, out VisualizationActionMetadata ActionMetadata, const name EffectApplyResult)
{
	local XComGameState_Unit UnitState;

	UnitState = XComGameState_Unit(ActionMetadata.StateObject_NewState);
	if (UnitState == none)
	{
		return;
	}

	if (!UnitState.IsCivilian() && EffectApplyResult != 'AA_Success')
	{
		class'X2StatusEffects'.static.AddEffectSoundAndFlyOverToTrack(ActionMetadata, VisualizeGameState.GetContext(), class'X2Effect_Panicked'.default.EffectFailedFriendlyName, '', eColor_Good, class'UIUtilities_Image'.const.UnitStatus_Panicked);
	}
}

DefaultProperties
{
}

static function X2AbilityTemplate PABrandishClaws()
{
	local X2AbilityTemplate     Template;
	local X2AbilityCost_ActionPoints ActionPointCost;
	local X2AbilityCooldown     Cooldown;
	local X2Effect_Panicked     PanicEffect;
	local X2AbilityTargetStyle				TargetStyle;
	local X2Condition_UnitProperty			MultiTargetProperty;
	local X2AbilityMultiTarget_Radius		RadiusMultiTarget;
	local X2Condition_UnitProperty ShooterCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PABrandishClaws');

	Template.IconImage = "img:///KetarosPkg_Abilities.UIPerk_tiger";
	
	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = false;
	Template.AbilityCosts.AddItem(ActionPointCost);

	TargetStyle = new class 'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.PABrandishClaws_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	Template.Hostility = eHostility_Offensive;
	Template.AbilityToHitCalc = default.Deadeye;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.AddShooterEffectExclusions();

	ShooterCondition=new class'X2Condition_UnitProperty';
	ShooterCondition.ExcludeConcealed = true;
	Template.AbilityShooterConditions.AddItem(ShooterCondition);

	RadiusMultiTarget = new class'X2AbilityMultiTarget_Radius';
	RadiusMultiTarget.fTargetRadius = 27;
	RadiusMultiTarget.bIgnoreBlockingCover = true;
	//RadiusMultiTarget.bAcceptEnemyUnits = true;
	Template.AbilityMultiTargetStyle = RadiusMultiTarget;

	Template.AbilityMultiTargetConditions.AddItem(new class'X2Condition_Panic');

	MultiTargetProperty = new class'X2Condition_UnitProperty';
	MultiTargetProperty.ExcludeAlive=false;
	MultiTargetProperty.ExcludeDead=true;
	MultiTargetProperty.ExcludeFriendlyToSource=true;
	MultiTargetProperty.ExcludeHostileToSource=false;
	MultiTargetProperty.TreatMindControlledSquadmateAsHostile=true;
	MultiTargetProperty.FailOnNonUnits=true;
	MultiTargetProperty.ExcludeRobotic = true;
	Template.AbilityMultiTargetConditions.AddItem(default.GameplayVisibilityCondition);
	Template.AbilityMultiTargetConditions.AddItem(MultiTargetProperty);

	PanicEffect = class'X2StatusEffects'.static.CreatePanickedStatusEffect();
	PanicEffect.ApplyChanceFn = PABrandishClawsApplyChance;
	PanicEffect.VisualizationFn = PABrandishClaws_PanickedVisualization;
	Template.AddMultiTargetEffect(PanicEffect);

	Template.bSkipFireAction = true;
	Template.bShowActivation = true;
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = PABrandishClaws_BuildVisualization;
	Template.bShowPostActivation = true;
	Template.CinescriptCameraType = "AdvShieldBearer_EnergyShieldArmor";
	Template.bFriendlyFireWarning = false;

	class'X2Ability_DLC_Day60AlienRulers'.static.RemoveMimicBeaconsFromTargets(Template);

//BEGIN AUTOGENERATED CODE: Template Overrides 'Faithbreaker'
	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'Faithbreaker'
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotLostSpawnIncreasePerUse;
	return Template;
}

function PABrandishClaws_BuildVisualization(XComGameState VisualizeGameState)
{
	local XComGameStateHistory				History;
	local XComGameStateContext_Ability		context;
	local StateObjectReference				InteractingUnitRef;
	local VisualizationActionMetadata		EmptyTrack, BuildTrack, TargetTrack;
	local X2Action_PlayAnimation			PlayAnimationAction;
	local X2Action_PlaySoundAndFlyOver		SoundAndFlyover, SoundAndFlyoverTarget;
	local XComGameState_Ability				Ability;
	local XComGameState_Effect				EffectState;
	local XComGameState_Unit				UnitState;

	History = `XCOMHISTORY;
	context = XComGameStateContext_Ability(VisualizeGameState.GetContext());
	Ability = XComGameState_Ability(History.GetGameStateForObjectID(context.InputContext.AbilityRef.ObjectID, 1, VisualizeGameState.HistoryIndex - 1));
	InteractingUnitRef = context.InputContext.SourceObject;
	BuildTrack = EmptyTrack;
	BuildTrack.StateObject_OldState = History.GetGameStateForObjectID(InteractingUnitRef.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	BuildTrack.StateObject_NewState = VisualizeGameState.GetGameStateForObjectID(InteractingUnitRef.ObjectID);
	BuildTrack.VisualizeActor = History.GetVisualizer(InteractingUnitRef.ObjectID);

	SoundAndFlyover = X2Action_PlaySoundAndFlyOver(class'X2Action_PlaySoundAndFlyOver'.static.AddToVisualizationTree(BuildTrack, context, false, BuildTrack.LastActionAdded));
	SoundAndFlyover.SetSoundAndFlyOverParameters(none, Ability.GetMyTemplate().LocFlyOverText, 'None', eColor_Alien);

	PlayAnimationAction = X2Action_PlayAnimation(class'X2Action_PlayAnimation'.static.AddToVisualizationTree(BuildTrack, context, false, BuildTrack.LastActionAdded));
	PlayAnimationAction.Params.AnimName = 'HL_SignalPositive';
	PlayAnimationAction.bFinishAnimationWait = true;

	//foreach VisualizeGameState.IterateByClassType(class'XComGameState_Effect', EffectState)
	//{
		//if (EffectState.GetX2Effect().EffectName == class'X2Effect_WarCry'.default.EffectName)
		//{
				//TargetTrack = EmptyTrack;
				//UnitState = XComGameState_Unit(VisualizeGameState.GetGameStateForObjectID(EffectState.ApplyEffectParameters.TargetStateObjectRef.ObjectID));
				//if ((UnitState != none) && (EffectState.StatChanges.Length > 0))
				//{
					//TargetTrack.StateObject_NewState = UnitState;
					//TargetTrack.StateObject_OldState = History.GetGameStateForObjectID(UnitState.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
					//TargetTrack.VisualizeActor = UnitState.GetVisualizer();
					//SoundandFlyoverTarget = X2Action_PlaySoundAndFlyOver(class'X2Action_PlaySoundAndFlyOver'.static.AddToVisualizationTree(TargetTrack, context, false, TargetTrack.LastActionAdded));
					//SoundandFlyoverTarget.SetSoundAndFlyOverParameters(none, Ability.GetMyTemplate().LocFlyOverText, 'None', eColor_Alien);
				//}
		//}
	//}

}

function name PABrandishClawsApplyChance(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState)
{
	//  this mimics the panic hit roll without actually BEING the panic hit roll
	local XComGameState_Unit TargetUnit, SourceUnit;
	local name ImmuneName;
	local int TargetRoll, RandRoll;
	local int Value, BadGuysValue;

	SourceUnit = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(ApplyEffectParameters.SourceStateObjectRef.ObjectID));
	TargetUnit = XComGameState_Unit(kNewTargetState);

	if (TargetUnit != none && SourceUnit != none)
	{
		Value = CountVisibleUnitsForUnit(SourceUnit);

		foreach class'X2AbilityToHitCalc_PanicCheck'.default.PanicImmunityAbilities(ImmuneName)
		{
			if (TargetUnit.FindAbility(ImmuneName).ObjectID != 0)
			{
				return 'AA_UnitIsImmune';
			}
		}

		BadGuysValue = Value * default.PABrandishClaws_DECREASE_PER_VISIBLE_ENEMY;

		TargetRoll = default.PABrandishClaws_BASE_CHANCE - BadGuysValue;
		RandRoll = `SYNC_RAND(100);
		if (RandRoll < TargetRoll)
		{
			return 'AA_Success';
		}
	}

	return 'AA_EffectChanceFailed';
}

static function PABrandishClaws_PanickedVisualization(XComGameState VisualizeGameState, out VisualizationActionMetadata ActionMetadata, const name EffectApplyResult)
{
	local XComGameState_Unit UnitState;

	UnitState = XComGameState_Unit(ActionMetadata.StateObject_NewState);
	if (UnitState == none)
	{
		return;
	}

	if (!UnitState.IsCivilian() && EffectApplyResult != 'AA_Success')
	{
		class'X2StatusEffects'.static.AddEffectSoundAndFlyOverToTrack(ActionMetadata, VisualizeGameState.GetContext(), class'X2Effect_Panicked'.default.EffectFailedFriendlyName, '', eColor_Good, class'UIUtilities_Image'.const.UnitStatus_Panicked);
	}
}

DefaultProperties
{
}

static function X2AbilityTemplate PAPainTrainB()
{

	local X2AbilityTemplate										Template;

	Template = PurePassive('PAPainTrainB', "img:///UILibrary_MZChimeraIcons.Ability_BatteringRam",, 'eAbilitySource_Perk');
	Template.AdditionalAbilities.AddItem('DevastatingPunchMP');

		return Template;
}

static function X2AbilityTemplate PAPainTrainA()
{

	local X2AbilityTemplate										Template;

	Template = PurePassive('PAPainTrainA', "img:///UILibrary_MZChimeraIcons.Ability_BatteringRam",, 'eAbilitySource_Perk');
	Template.AdditionalAbilities.AddItem('BigDamnPunchMP');

		return Template;
}

// ---------------------- Busted ability code below, I might work on it again sometime ---------------------
// static function X2AbilityTemplate BattleSuitGolem()
// {
// 	local X2AbilityTemplate Template;
// 	local X2AbilityCost_ActionPoints ActionPointCost;
// 	local X2AbilityCooldown Cooldown;
// 	local X2Condition_UnitProperty UnitPropertyCondition;
// 	local X2Condition_Visibility TargetVisibilityCondition;
// 	local X2Effect_SpawnBattleSuitGolem SpawnGolemEffect;
// 	local X2Condition_UnitValue UnitValue;
// 	local X2Condition_UnitEffects ExcludeEffects;
// 	local X2Condition_UnitType UnitTypeCondition;
// 
// 	`CREATE_X2ABILITY_TEMPLATE(Template, 'BattleSuitGolem');
// 	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_andromedon_robotbattlesuit";
// 
// 	Template.AbilitySourceName = 'eAbilitySource_Psionic';
// 	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
// 	Template.Hostility = eHostility_Offensive;
// 	Template.CustomFireAnim = 'HL_Psi_SelfCastA'; // Going with this animation so human Psions can use it too if you're insane

	// Cost of the ability
// 	ActionPointCost = new class'X2AbilityCost_ActionPoints';
// 	ActionPointCost.iNumPoints = 1;
// 	ActionPointCost.bConsumeAllPoints = true;
// 	Template.AbilityCosts.AddItem(ActionPointCost);

	// Cooldown on the ability
// 	Cooldown = new class'X2AbilityCooldown';
// 	Cooldown.iNumTurns = 7;
// 	Template.AbilityCooldown = Cooldown;

// 	Template.AbilityTargetStyle = new class'X2AbilityTarget_Single';
// 	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

// 	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);// Prevent ability from being available when dead
// 	Template.AddShooterEffectExclusions();

	// This ability is only valid if the target has not yet been turned into a zombie
// 	UnitValue = new class'X2Condition_UnitValue';
// 	UnitValue.AddCheckValue(class'X2Effect_SpawnBattleSuitGolem'.default.TurnedGolemName, 1, eCheck_LessThan);
// 	Template.AbilityTargetConditions.AddItem(UnitValue);

// 	ExcludeEffects = new class'X2Condition_UnitEffects';
// 	ExcludeEffects.AddExcludeEffect(class'X2Ability_CarryUnit'.default.CarryUnitEffectName, 'AA_UnitIsImmune');
// 	ExcludeEffects.AddExcludeEffect(class'X2AbilityTemplateManager'.default.BeingCarriedEffectName, 'AA_UnitIsImmune');
// 	Template.AbilityTargetConditions.AddItem(ExcludeEffects);

	//UnitTypeCondition = new class'X2Condition_UnitType';
	//UnitTypeCondition.IncludeTypes = default.BattleSuitGolemTemplates;
	//Template.AbilityTargetConditions.AddItem(UnitTypeCondition);

	// The unit must be organic, dead, and an alien
// 	UnitPropertyCondition = new class'X2Condition_UnitProperty';
// 	UnitPropertyCondition.ExcludeDead = false;
// 	UnitPropertyCondition.ExcludeAlive = true;
// 	UnitPropertyCondition.ExcludeRobotic = false;
// 	UnitPropertyCondition.ExcludeOrganic = false;
// 	UnitPropertyCondition.ExcludeAlien = false;
// 	UnitPropertyCondition.ExcludeCivilian = true;
// 	UnitPropertyCondition.ExcludeCosmetic = true;
// 	UnitPropertyCondition.ExcludeFriendlyToSource = false;
// 	UnitPropertyCondition.ExcludeHostileToSource = false;
// 	UnitPropertyCondition.FailOnNonUnits = true;
// 	Template.AbilityTargetConditions.AddItem(UnitPropertyCondition);
// 	Template.AbilityTargetConditions.AddItem(new class'PA_Condition_BattleSuitGolem');

	// Must be able to see the dead unit to reanimate it
// 	TargetVisibilityCondition = new class'X2Condition_Visibility';
// 	TargetVisibilityCondition.bRequireGameplayVisible = true;
// 	Template.AbilityTargetConditions.AddItem(TargetVisibilityCondition);

	// Add dead eye to guarantee the reanimation occurs
// 	Template.AbilityToHitCalc = default.DeadEye;

	// The target will now be turned into a zombie
// 	SpawnGolemEffect = new class'X2Effect_SpawnBattleSuitGolem';
// 	SpawnGolemEffect.UnitToSpawnName = 'AndromedonRobotMP';
// 	SpawnGolemEffect.BuildPersistentEffect(1, true);
// 	Template.AddTargetEffect(SpawnGolemEffect);

// 	Template.bSkipPerkActivationActions = true;
// 	Template.bSkipPerkActivationActionsSync = false;
// 	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
// 	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;
// 	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
// 	Template.CinescriptCameraType = "Sectoid_PsiReanimation";
//BEGIN AUTOGENERATED CODE: Template Overrides 'PsiReanimationMP'
// 	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'PsiReanimationMP'

// 	return Template;
// }

//This below ability is functionally identical to Charge Servos from Buildable Units, but has a different animation for Berserkers
static function X2AbilityTemplate PARecklessCharge()
{
	local X2AbilityTemplate Template;
	local X2AbilityCooldown                     Cooldown;
	local X2AbilityCost_ActionPoints        AbilityActionPointCost;
	local X2Effect_GrantActionPoints ActionPointEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PARecklessCharge');

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.CustomFireAnim = 'HL_Sniff';
	Template.Hostility = eHostility_Neutral;
	Template.IconImage = "img:///UILibrary_DLC3Images.UIPerk_spark_overdrive";

	AbilityActionPointCost = new class'X2AbilityCost_ActionPoints';
	AbilityActionPointCost.iNumPoints = 2;
	AbilityActionPointCost.bConsumeAllPoints = false;
	Template.AbilityCosts.AddItem(AbilityActionPointCost);

	// Grants the movement action points
	ActionPointEffect = new class'X2Effect_GrantActionPoints';
	ActionPointEffect.NumActionPoints = 3;
	ActionPointEffect.PointType = class'X2CharacterTemplateManager'.default.MoveActionPoint;
	Template.AddTargetEffect(ActionPointEffect);
	
	// Cannot be used while burning, etc.
	Template.AddShooterEffectExclusions();

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = 2;
	Template.AbilityCooldown = Cooldown;

	Template.AbilityTargetStyle = default.SelfTarget;	
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	// Show a flyover when activated
	Template.bShowActivation = true;

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;

    return Template;
}

//This below ability is functionally identical to Charge Servos from Buildable Units, but has a different animation for Andromedons
static function X2AbilityTemplate PAChargeServos()
{
	local X2AbilityTemplate Template;
	local X2AbilityCooldown                     Cooldown;
	local X2AbilityCost_ActionPoints        AbilityActionPointCost;
	local X2Effect_GrantActionPoints ActionPointEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PAChargeServos');

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.CustomFireAnim = 'HL_SignalPoint';
	Template.Hostility = eHostility_Neutral;
	Template.IconImage = "img:///UILibrary_DLC3Images.UIPerk_spark_overdrive";

	AbilityActionPointCost = new class'X2AbilityCost_ActionPoints';
	AbilityActionPointCost.iNumPoints = 2;
	AbilityActionPointCost.bConsumeAllPoints = false;
	Template.AbilityCosts.AddItem(AbilityActionPointCost);

	// Grants the movement action points
	ActionPointEffect = new class'X2Effect_GrantActionPoints';
	ActionPointEffect.NumActionPoints = 3;
	ActionPointEffect.PointType = class'X2CharacterTemplateManager'.default.MoveActionPoint;
	Template.AddTargetEffect(ActionPointEffect);
	
	// Cannot be used while burning, etc.
	Template.AddShooterEffectExclusions();

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = 2;
	Template.AbilityCooldown = Cooldown;

	Template.AbilityTargetStyle = default.SelfTarget;	
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	// Show a flyover when activated
	Template.bShowActivation = true;

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;

    return Template;
}

//This below ability is functionally identical to Charge Servos from Buildable Units, but has a different animation for Archons
static function X2AbilityTemplate PATurboBoost()
{
	local X2AbilityTemplate Template;
	local X2AbilityCooldown                     Cooldown;
	local X2AbilityCost_ActionPoints        AbilityActionPointCost;
	local X2Effect_GrantActionPoints ActionPointEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PATurboBoost');

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.CustomFireAnim = 'NO_Berserk';
	Template.Hostility = eHostility_Neutral;
	Template.IconImage = "img:///UILibrary_DLC3Images.UIPerk_spark_overdrive";

	AbilityActionPointCost = new class'X2AbilityCost_ActionPoints';
	AbilityActionPointCost.iNumPoints = 2;
	AbilityActionPointCost.bConsumeAllPoints = false;
	Template.AbilityCosts.AddItem(AbilityActionPointCost);

	// Grants the movement action points
	ActionPointEffect = new class'X2Effect_GrantActionPoints';
	ActionPointEffect.NumActionPoints = 3;
	ActionPointEffect.PointType = class'X2CharacterTemplateManager'.default.MoveActionPoint;
	Template.AddTargetEffect(ActionPointEffect);
	
	// Cannot be used while burning, etc.
	Template.AddShooterEffectExclusions();

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = 2;
	Template.AbilityCooldown = Cooldown;

	Template.AbilityTargetStyle = default.SelfTarget;	
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	// Show a flyover when activated
	Template.bShowActivation = true;

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;

    return Template;
}

//This ability below is just Favid's Stimulate ability with a new animation for Berserkers
static function X2AbilityTemplate PAWakeUpCall()
{
	local X2AbilityTemplate                     Template;
	local X2Effect_RemoveEffectsByDamageType	RemoveEffects;
    local X2Condition_UnitProperty              TargetCondition;
    local X2Condition_UnitStatCheck             UnitStatCheckCondition;

	// Removes most mental effects
	RemoveEffects = new class'X2Effect_RemoveEffectsByDamageType';
	RemoveEffects.EffectNamesToRemove.AddItem(class'X2AbilityTemplateManager'.default.DisorientedName);
	RemoveEffects.EffectNamesToRemove.AddItem(class'X2AbilityTemplateManager'.default.PanickedName);
	RemoveEffects.EffectNamesToRemove.AddItem(class'X2StatusEffects'.default.UnconsciousName);

	// Create template using a helper function
	Template = TargetedBuff('PAWakeUpCall', "img:///UILibrary_FavidsPerkPack.Perk_Ph_Stimulate", false, RemoveEffects, class'UIUtilities_Tactical'.const.MEDIKIT_HEAL_PRIORITY + 1, eCost_Single);
    
    // TargetedBuff() adds a condition that the target must be living; we need to remove that because Unconscious targets are not considered to be living
    Template.AbilityTargetConditions.Length = 0;

    // Restore action points to a stunned target
	Template.AddTargetEffect(new class'X2Effect_RestoreActionPoints'); 

	// Once per turn
	AddCooldown(Template, 1);

	// Target must be suffering from a mental impairment
	Template.AbilityTargetConditions.AddItem(new class'X2Condition_RevivalProtocol');
    
    // Target must be within range and friendly
	TargetCondition = new class'X2Condition_UnitProperty';
	TargetCondition.ExcludeHostileToSource = true;
	TargetCondition.ExcludeFriendlyToSource = false;
	TargetCondition.RequireSquadmates = true;
	TargetCondition.ExcludeDead = false; //See comment below...
	TargetCondition.RequireWithinRange = true;
	TargetCondition.WithinRange = 144;
	Template.AbilityTargetConditions.AddItem(TargetCondition);

	// Hack: Do this instead of ExcludeDead, to only exclude properly-dead or bleeding-out units.
	UnitStatCheckCondition = new class'X2Condition_UnitStatCheck';
	UnitStatCheckCondition.AddCheckStat(eStat_HP, 0, eCheck_GreaterThan);
	Template.AbilityTargetConditions.AddItem(UnitStatCheckCondition);
    
    // Target must be visible
	Template.AbilityTargetConditions.AddItem(default.GameplayVisibilityCondition);

	Template.bLimitTargetIcons = true;
	//Template.ActivationSpeech = 'StabilizingAlly';
    
	Template.CustomFireAnim = 'HL_SignalPositive';
	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.NonAggressiveChosenActivationIncreasePerUse;

	return Template;
}

static function X2AbilityTemplate PAOmen()
{
	local XMBEffect_DoNotConsumeAllPoints Effect;

	Effect = new class'XMBEffect_DoNotConsumeAllPoints';
	Effect.AbilityNames = default.PAOmenAbilityNames;

	return Passive('PAOmen', "img:///UILibrary_MZChimeraIcons.Ability_ImpendingDoom", false, Effect);
}

static function X2AbilityTemplate PABenkeisSwiftness()
{

	local X2AbilityTemplate										Template;

	Template = PurePassive('PABenkeisSwiftness', "img:///KetarosPkg_Abilities.UIPerk_bridge",, 'eAbilitySource_Perk');
	Template.AdditionalAbilities.AddItem('SwordSlice_LW');

		return Template;
}

static function X2AbilityTemplate PASeriousBomber()
{

	local X2AbilityTemplate										Template;

	Template = PurePassive('PASeriousBomber', "img:///KetarosPkg_Abilities.UIPerk_bomb",, 'eAbilitySource_Perk');
	Template.AdditionalAbilities.AddItem('BlazingPinionsStage1');

		return Template;
}

//This is almost an exact clone of the Archon King's Icarus Drop, but with a new name so that Bradford's incessant barking isn't triggered
static function X2AbilityTemplate CreatePAIcarusDropGrabAbility()
{
	local X2AbilityTemplate Template;
	local X2AbilityCost_ActionPoints ActionPointCost;
	local X2Condition_UnitProperty UnitPropertyCondition;
	local X2AbilityTarget_MovingMelee MeleeTarget;
	local X2Condition_UnitEffects ExcludeEffects;
	local X2Effect_PersistentStatChange IcarusDropGrabberEffect;
	local X2Effect_Sustained SustainedEffect;
	local X2Effect_AdditionalAnimSets AdditionalAnimSetsEffect;
	local X2AbilityCooldown Cooldown;
	local X2Effect_DamageImmunity DamageImmunity;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PAIcarusDropGrab');
	Template.IconImage = "img:///UILibrary_DLC2Images.UIPerk_archon_icarusdrop";
	Template.Hostility = eHostility_Offensive;
	Template.AbilitySourceName = 'eAbilitySource_Standard';

	Template.AdditionalAbilities.AddItem('IcarusDropSlam');
	Template.AdditionalAbilities.AddItem(class'X2Ability_Impairing'.default.ImpairingAbilityName);

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = false;
	Template.AbilityCosts.AddItem(ActionPointCost);

	// Cooldown on the ability
	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.ICARUS_DROP_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SimpleSingleMeleeTarget;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);

	// The shooter must not already be grabbing a unit
	ExcludeEffects = new class'X2Condition_UnitEffects';
	ExcludeEffects.AddExcludeEffect(default.IcarusDropGrabberEffectName, 'AA_UnitIsBound');
	Template.AbilityShooterConditions.AddItem(ExcludeEffects);

	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeDead = true;
	UnitPropertyCondition.ExcludeFriendlyToSource = true;
	UnitPropertyCondition.FailOnNonUnits = true;
	UnitPropertyCondition.ExcludeRobotic = true;
	UnitPropertyCondition.ExcludeAlien = true;
	UnitPropertyCondition.ExcludeTurret = true;
	UnitPropertyCondition.FailOnNonUnits = true;
	Template.AbilityTargetConditions.AddItem(UnitPropertyCondition);
	Template.AbilityTargetConditions.AddItem(default.MeleeVisibilityCondition);

	// The target must not have a cocoon on top of it
	ExcludeEffects = new class'X2Condition_UnitEffects';
	ExcludeEffects.AddExcludeEffect(class'X2Ability_ChryssalidCocoon'.default.GestationStage1EffectName, 'AA_UnitHasCocoonOnIt');
	ExcludeEffects.AddExcludeEffect(class'X2Ability_ChryssalidCocoon'.default.GestationStage2EffectName, 'AA_UnitHasCocoonOnIt');
	ExcludeEffects.AddExcludeEffect(default.IcarusDropGrabbeeEffect_SustainedName, 'AA_UnitIsBound');
	Template.AbilityTargetConditions.AddItem(ExcludeEffects);

	MeleeTarget = new class'X2AbilityTarget_MovingMelee';
	Template.AbilityTargetStyle = MeleeTarget;

	Template.TargetingMethod = class'X2TargetingMethod_MeleePath';

	Template.AbilityTriggers.AddItem(new class'X2AbilityTrigger_PlayerInput');
	Template.AbilityTriggers.AddItem(new class'X2AbilityTrigger_EndOfMove');

	DamageImmunity = new class'X2Effect_DamageImmunity';
	DamageImmunity.BuildPersistentEffect(1, true, true, true);
	DamageImmunity.ImmuneTypes.AddItem(class'X2Item_DefaultDamageTypes'.default.KnockbackDamageType);
	DamageImmunity.EffectName = default.IcarusDropGrabberDamageImmunityEffectName;
	Template.AddShooterEffect(DamageImmunity);

	IcarusDropGrabberEffect = new class'X2Effect_PersistentStatChange';
	IcarusDropGrabberEffect.BuildPersistentEffect(1, true, true);
	IcarusDropGrabberEffect.DuplicateResponse = eDupe_Ignore;
	IcarusDropGrabberEffect.EffectName = default.IcarusDropGrabberEffectName;
	IcarusDropGrabberEffect.EffectAddedFn = IcarusDropGrab_EffectAdded;
	IcarusDropGrabberEffect.CustomIdleOverrideAnim = 'NO_IcarusDrop_Loop';
	IcarusDropGrabberEffect.AddPersistentStatChange(eStat_Dodge, default.ICARUS_DROP_GRAB_DEFENSE);
	IcarusDropGrabberEffect.AddPersistentStatChange(eStat_Defense, default.ICARUS_DROP_GRAB_DEFENSE);
	Template.AddShooterEffect(IcarusDropGrabberEffect);

	// Add to the target the sustained bind effect
	SustainedEffect = new class'X2Effect_Sustained';
	SustainedEffect.FragileAmount = default.ICARUS_DROP_FRAGILE_AMOUNT;
	SustainedEffect.EffectName = default.IcarusDropGrabbeeEffect_SustainedName;
	SustainedEffect.EffectRemovedSourceVisualizationFn = IcarusGrabRelease_Source_BuildVisualization;
	SustainedEffect.EffectRemovedVisualizationFn = IcarusGrabRelease_Target_BuildVisualization;
	SustainedEffect.BuildPersistentEffect(1, true, true, true, eGameRule_PlayerTurnBegin);
	SustainedEffect.bBringRemoveVisualizationForward = true;
	SustainedEffect.EffectAddedFn = IcarusDropGrab_EffectAdded;
	SustainedEffect.EffectRemovedFn = IcarusDropGrabee_EffectRemoved;
	SustainedEffect.RegisterAdditionalEventsLikeImpair.AddItem('AffectedByStasis');
	SustainedEffect.RegisterAdditionalEventsLikeImpair.AddItem('StunStrikeActivated');
	SustainedEffect.CustomIdleOverrideAnim = 'NO_IcarusDrop_Loop';

	// This source effect needs to be set as a child on the sustain effect
	SustainedEffect.EffectsToRemoveFromSource.AddItem(default.IcarusDropGrabberEffectName);
	SustainedEffect.EffectsToRemoveFromSource.AddItem(default.IcarusDropGrabberDamageImmunityEffectName);

	SustainedEffect.EffectsToRemoveFromSource.AddItem(default.IcarusDropGrabbeeAnimSetEffectName);

	// All child effects to the sustained effect have been added, submit
	Template.AddTargetEffect(SustainedEffect);

	// The target may not have the required animsets, so add them on
	AdditionalAnimSetsEffect = new class'X2Effect_AdditionalAnimSets';
	AdditionalAnimSetsEffect.EffectName = default.IcarusDropGrabbeeAnimSetEffectName;
	AdditionalAnimSetsEffect.AddAnimSetWithPath("DLC_60_Soldier_IcarusDrop_ANIM.Anims.AS_IcarusDrop");
	Template.AddTargetEffect(AdditionalAnimSetsEffect);

	Template.BuildNewGameStateFn = TypicalMoveEndAbility_BuildGameState;
	Template.BuildInterruptGameStateFn = TypicalMoveEndAbility_BuildInterruptGameState;
	Template.BuildVisualizationFn = IcarusDropGrab_BuildVisualization;
	Template.BuildAffectedVisualizationSyncFn = IcarusDropGrab_BuildVisualizationSync;

	Template.CinescriptCameraType = "ArchonKing_IcarusDropGrab";

	// we're going to use a movement follow cam in the action, so don't frame the ability
	Template.FrameAbilityCameraType = eCameraFraming_Never; 

//BEGIN AUTOGENERATED CODE: Template Overrides 'IcarusDropGrab'
	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'IcarusDropGrab'
	class'X2Ability_DLC_Day60AlienRulers'.static.RemoveMimicBeaconsFromTargets(Template);
	return Template;
}

static function IcarusDropGrab_EffectAdded(X2Effect_Persistent PersistentEffect, const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState)
{
	local XComGameState_Unit UnitState;
	local TTile Tile, StartTileLocation, EndTileLocation, EnviroDmgEndTileLoc;
	local XComGameState_EnvironmentDamage WorldDamage;
	local XComWorldData World;
	local X2EventManager EventManager;

	World = `XWORLD;
	EventManager = `XEVENTMGR;

	UnitState = XComGameState_Unit(kNewTargetState);
	`assert(UnitState != none);

	// TODO: Need to find an open tile in the sky
	// solve the path to get him to the fire location
	StartTileLocation = UnitState.TileLocation;
	EndTileLocation = UnitState.TileLocation;
	EndTileLocation.Z = Min(UnitState.TileLocation.Z + (World.WORLD_FloorHeightsPerLevel * default.ICARUS_DROP_FLY_HEIGHT_MODIFIER), (World.NumZ - 1));

	// Move the target to this space
	UnitState.SetVisibilityLocation(EndTileLocation);

	// The flight may not goto the highest point, so add some damage above to clear floors
	EnviroDmgEndTileLoc = EndTileLocation;
	EnviroDmgEndTileLoc.Z += default.ICARUS_DROP_TILE_DMG_HEIGHT_MODIFIER;
	Tile = StartTileLocation;
	while(Tile != EnviroDmgEndTileLoc)
	{
		++Tile.Z;

		WorldDamage = XComGameState_EnvironmentDamage(NewGameState.CreateNewStateObject(class'XComGameState_EnvironmentDamage'));

		WorldDamage.DamageTypeTemplateName = 'NoFireExplosion';
		WorldDamage.DamageCause = UnitState.GetReference();
		WorldDamage.DamageSource = WorldDamage.DamageCause;
		WorldDamage.bRadialDamage = false;
		WorldDamage.HitLocationTile = Tile;
		WorldDamage.DamageTiles.AddItem(WorldDamage.HitLocationTile);

		WorldDamage.DamageDirection.X = 0.0f;
		WorldDamage.DamageDirection.Y = 0.0f;
		WorldDamage.DamageDirection.Z = -1.0f;

		WorldDamage.DamageAmount = 30;
		WorldDamage.PhysImpulse = 10;
	}

	EventManager.TriggerEvent('ObjectMoved', UnitState, UnitState, NewGameState);
	EventManager.TriggerEvent('UnitMoveFinished', UnitState, UnitState, NewGameState);
}

static function IcarusDropGrabee_EffectRemoved(X2Effect_Persistent PersistentEffect, const out EffectAppliedData ApplyEffectParameters, XComGameState NewGameState, bool bCleansed)
{
	local XComGameState_Unit TargetUnitState;
	local vector TargetLocation, LandingLocation;
	local TTile EndTileLocation;
	local XComWorldData World;
	local X2EventManager EventManager;

	World = `XWORLD;
	EventManager = `XEVENTMGR;

	TargetUnitState = XComGameState_Unit(NewGameState.GetGameStateForObjectID(ApplyEffectParameters.TargetStateObjectRef.ObjectID));
	if( TargetUnitState == none )
	{
		TargetUnitState = XComGameState_Unit(NewGameState.ModifyStateObject(class'XComGameState_Unit', ApplyEffectParameters.TargetStateObjectRef.ObjectID));
	}

	TargetLocation = World.GetPositionFromTileCoordinates(TargetUnitState.TileLocation);

	LandingLocation = TargetLocation;
	LandingLocation.Z = World.GetFloorZForPosition(TargetLocation, true);
	EndTileLocation = World.GetTileCoordinatesFromPosition(LandingLocation);

	// Move the target to this space
	TargetUnitState.SetVisibilityLocation(EndTileLocation);

	EventManager.TriggerEvent('ObjectMoved', TargetUnitState, TargetUnitState, NewGameState);
	EventManager.TriggerEvent('UnitMoveFinished', TargetUnitState, TargetUnitState, NewGameState);
}

simulated function IcarusGrabRelease_Source_BuildVisualization(XComGameState VisualizeGameState, out VisualizationActionMetadata ActionMetadata, const name EffectApplyResult)
{
	local XComGameStateHistory History;
	local XComGameState_Effect SustainedEffectState;
	local XComGameState_Unit OldUnitState, TargetState;
	local X2Action_DLC_Day60IcarusDropRelease ReleaseAction;
	local XComGameStateVisualizationMgr VisualizationMgr;
	local X2Action TargetDropAction;

	if( ActionMetadata.VisualizeActor != None )
	{
		VisualizationMgr = `XCOMVISUALIZATIONMGR;
		History = `XCOMHISTORY;

		OldUnitState = XComGameState_Unit(ActionMetadata.StateObject_OldState);
		SustainedEffectState = OldUnitState.GetUnitApplyingEffectState(default.IcarusDropGrabbeeEffect_SustainedName);
		`assert(SustainedEffectState != none);
		TargetState = XComGameState_Unit(History.GetGameStateForObjectID(SustainedEffectState.ApplyEffectParameters.TargetStateObjectRef.ObjectID));
		`assert(TargetState != none);

		TargetDropAction = VisualizationMgr.GetNodeOfType(VisualizationMgr.BuildVisTree, class'X2Action_DLC_Day60IcarusDropRelease_Target', , TargetState.ObjectID);
		if( TargetDropAction == none )
		{
			TargetDropAction = VisualizationMgr.GetNodeOfType(VisualizationMgr.VisualizationTree, class'X2Action_DLC_Day60IcarusDropRelease_Target', , TargetState.ObjectID);
		}

		if( TargetDropAction != none )
		{
			ReleaseAction = X2Action_DLC_Day60IcarusDropRelease(class'X2Action_DLC_Day60IcarusDropRelease'.static.AddToVisualizationTree(ActionMetadata, VisualizeGameState.GetContext(), false, , TargetDropAction.ParentActions));
		}
		else
		{
			ReleaseAction = X2Action_DLC_Day60IcarusDropRelease(class'X2Action_DLC_Day60IcarusDropRelease'.static.AddToVisualizationTree(ActionMetadata, VisualizeGameState.GetContext(), false, ActionMetadata.LastActionAdded));
		}

		ReleaseAction.PartnerRef = TargetState.GetReference();
		ReleaseAction.AddInputEvent('Visualizer_AbilityHit');
		ReleaseAction.AddInputEvent('Visualizer_ProjectileHit');
	}
}

simulated function IcarusGrabRelease_Target_BuildVisualization(XComGameState VisualizeGameState, out VisualizationActionMetadata ActionMetadata, const name EffectApplyResult)
{
	local XComGameStateVisualizationMgr VisualizationMgr;
	local array<X2Action> FoundActions;
	local XComGameState_Effect SustainedEffectState;
	local XComGameState_Unit OldUnitState;
	local X2Action_Fire TestAction;
	local int i;
	local XComGameStateContext_Ability AbilityContext;
	local X2Action ParentAction;
	local X2Action_DLC_Day60IcarusDropRelease_Target ReleaseAction;

	if(ActionMetadata.VisualizeActor != None)
	{
		VisualizationMgr = `XCOMVISUALIZATIONMGR;

		VisualizationMgr.GetNodesOfType(VisualizationMgr.VisualizationTree, class'X2Action_Fire', FoundActions);

		OldUnitState = XComGameState_Unit(ActionMetadata.StateObject_OldState);
		SustainedEffectState = OldUnitState.GetUnitAffectedByEffectState(default.IcarusDropGrabbeeEffect_SustainedName);

		ParentAction = ActionMetadata.LastActionAdded;
		for( i = 0; i < FoundActions.Length; ++i )
		{
			TestAction = X2Action_Fire(FoundActions[i]);
			AbilityContext = XComGameStateContext_Ability(TestAction.StateChangeContext);
			if( !TestAction.bCompleted &&
				((AbilityContext.InputContext.PrimaryTarget == SustainedEffectState.ApplyEffectParameters.SourceStateObjectRef) /*||
				(AbilityContext.InputContext.MultiTargets.FindItem('ObjectID', SustainedEffectState.ApplyEffectParameters.SourceStateObjectRef.ObjectID) != INDEX_NONE)*/) )
			{
				ParentAction = TestAction;
				break;
			}
		}

		ReleaseAction = X2Action_DLC_Day60IcarusDropRelease_Target(class'X2Action_DLC_Day60IcarusDropRelease_Target'.static.AddToVisualizationTree(ActionMetadata, VisualizeGameState.GetContext(), false, ParentAction));
		ReleaseAction.AddInputEvent('Visualizer_AbilityHit');
		ReleaseAction.AddInputEvent('Visualizer_ProjectileHit');
	}
}

function IcarusDropGrab_BuildVisualization(XComGameState VisualizeGameState)
{
	local XComGameStateHistory History;
	local XComGameStateContext_Ability AbilityContext;
	local VisualizationActionMetadata EmptyTrack;
	local VisualizationActionMetadata ActionMetadata;
	local X2Action_PlaySoundAndFlyOver SoundAndFlyOver;
	local XComGameState_Ability AbilityState;
	local int i;	
	local XComGameState_EnvironmentDamage DamageEventStateObject;
	local X2Action_MoveEnd MoveEndAction;
	local XComGameStateVisualizationMgr VisualizationMgr;

	History = `XCOMHISTORY;
	VisualizationMgr = `XCOMVISUALIZATIONMGR;

	AbilityContext = XComGameStateContext_Ability(VisualizeGameState.GetContext());

	// first build any movement visualization
	if( AbilityContext.InputContext.MovementPaths.Length > 0 )
	{
		class'X2Ability_DefaultAbilitySet'.static.MoveAbility_BuildVisualization(VisualizeGameState);
	}

	//Configure the visualization track for the shooter
	//****************************************************************************************
	ActionMetadata = EmptyTrack;

	ActionMetadata.StateObject_OldState = History.GetGameStateForObjectID(AbilityContext.InputContext.SourceObject.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	ActionMetadata.StateObject_NewState = VisualizeGameState.GetGameStateForObjectID(AbilityContext.InputContext.SourceObject.ObjectID);
	ActionMetadata.VisualizeActor = History.GetVisualizer(AbilityContext.InputContext.SourceObject.ObjectID);

	MoveEndAction = X2Action_MoveEnd(VisualizationMgr.GetNodeOfType(VisualizationMgr.BuildVisTree, class'X2Action_MoveEnd', ActionMetadata.VisualizeActor));
	if (MoveEndAction != none)
	{
		MoveEndAction.IgnoreDestinationMismatch = true;
		MoveEndAction.bNotifyEnvironmentDamage = false;
	}

	ActionMetadata.AdditionalVisualizeActors.AddItem(History.GetVisualizer(AbilityContext.InputContext.PrimaryTarget.ObjectID));

	class'X2Action_ExitCover'.static.AddToVisualizationTree(ActionMetadata, AbilityContext);
	class'X2Action_DLC_Day60IcarusDropGrab'.static.AddToVisualizationTree(ActionMetadata, AbilityContext);

	for( i = 0; i < AbilityContext.ResultContext.ShooterEffectResults.Effects.Length; ++i )
	{
		AbilityContext.ResultContext.ShooterEffectResults.Effects[i].AddX2ActionsForVisualization(VisualizeGameState, ActionMetadata, AbilityContext.ResultContext.ShooterEffectResults.ApplyResults[i]);
	}

	AbilityState = XComGameState_Ability(History.GetGameStateForObjectID(AbilityContext.InputContext.AbilityRef.ObjectID));
	SoundAndFlyOver = X2Action_PlaySoundAndFlyOver(class'X2Action_PlaySoundAndFlyOver'.static.AddToVisualizationTree(ActionMetadata, AbilityContext));
	SoundAndFlyOver.SetSoundAndFlyOverParameters(None, "", AbilityState.GetMyTemplate().ActivationSpeech, eColor_Good);

		//****************************************************************************************

	//Configure the visualization track for the target
	//****************************************************************************************
	ActionMetadata = EmptyTrack;
	ActionMetadata.StateObject_OldState = History.GetGameStateForObjectID(AbilityContext.InputContext.PrimaryTarget.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	ActionMetadata.StateObject_NewState = VisualizeGameState.GetGameStateForObjectID(AbilityContext.InputContext.PrimaryTarget.ObjectID);
	ActionMetadata.VisualizeActor = History.GetVisualizer(AbilityContext.InputContext.PrimaryTarget.ObjectID);

	class'X2Action_UpdateAnimations'.static.AddToVisualizationTree(ActionMetadata, AbilityContext);

	//****************************************************************************************

	if( AbilityContext.InputContext.MovementPaths.Length == 0 )
	{
		// add visualization of environment damage
		foreach VisualizeGameState.IterateByClassType( class'XComGameState_EnvironmentDamage', DamageEventStateObject )
		{
			ActionMetadata = EmptyTrack;
			ActionMetadata.StateObject_OldState = DamageEventStateObject;
			ActionMetadata.StateObject_NewState = DamageEventStateObject;
			ActionMetadata.VisualizeActor = `XCOMHISTORY.GetVisualizer(DamageEventStateObject.ObjectID);
			class'X2Action_WaitForAbilityEffect'.static.AddToVisualizationTree(ActionMetadata, AbilityContext);
			class'X2Action_ApplyWeaponDamageToTerrain'.static.AddToVisualizationTree(ActionMetadata, AbilityContext);			
		}
	}
}

simulated function IcarusDropGrab_BuildVisualizationSync(name EffectName, XComGameState VisualizeGameState, out VisualizationActionMetadata ActionMetadata)
{
	local X2Action_ExitCover ExitCoverAction;	

	if( EffectName == default.IcarusDropGrabberEffectName )
	{
		ExitCoverAction = X2Action_ExitCover(class'X2Action_ExitCover'.static.AddToVisualizationTree(ActionMetadata, VisualizeGameState.GetContext()));
		ExitCoverAction.bIsForSuppression = true;   // Not really a supression, but this bool keeps the sync from being forced to finish before the action has completed
		class'X2Action_DLC_Day60IcarusDropGrab'.static.AddToVisualizationTree(ActionMetadata, VisualizeGameState.GetContext());
	}

	if( EffectName == default.IcarusDropGrabbeeEffect_SustainedName )
	{
		class'X2Action_UpdateAnimations'.static.AddToVisualizationTree(ActionMetadata, VisualizeGameState.GetContext());
	}
}

static function X2AbilityTemplate CreateIcarusDropSlamAbility()
{
	local X2AbilityTemplate Template;
	local X2AbilityCost_ActionPoints ActionPointCost;
	local X2AbilityTarget_MovingMelee MeleeTarget;
	local X2Condition_UnitEffectsWithAbilitySource RequiredEffects;
	local X2Condition_UnitEffects ExcludeEffects;
	local X2Effect_Persistent IcarusDropSlammerEffect;
	local X2Effect_ImmediateAbilityActivation ImpairingAbilityEffect;
	local X2Effect_ApplyWeaponDamage DamageEffect;
	local X2Effect_RemoveEffects RemoveEffects;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'IcarusDropSlam');
	Template.IconImage = "img:///UILibrary_DLC2Images.UIPerk_archon_icarusdrop";
	Template.Hostility = eHostility_Neutral;
	Template.AbilitySourceName = 'eAbilitySource_Standard';

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = false;
	Template.AbilityCosts.AddItem(ActionPointCost);

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SimpleSingleMeleeTarget;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);

	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);

	// The Shooter must have a unit that it is grabing
	RequiredEffects = new class'X2Condition_UnitEffectsWithAbilitySource';
	RequiredEffects.AddRequireEffect(default.IcarusDropGrabbeeEffect_SustainedName, 'AA_UnitIsBound');
	Template.AbilityTargetConditions.AddItem(RequiredEffects);

	// The target must not have a cocoon on top of it
	ExcludeEffects = new class'X2Condition_UnitEffects';
	ExcludeEffects.AddExcludeEffect(class'X2Ability_ChryssalidCocoon'.default.GestationStage1EffectName, 'AA_UnitHasCocoonOnIt');
	ExcludeEffects.AddExcludeEffect(class'X2Ability_ChryssalidCocoon'.default.GestationStage2EffectName, 'AA_UnitHasCocoonOnIt');
	Template.AbilityTargetConditions.AddItem(ExcludeEffects);

	MeleeTarget = new class'X2AbilityTarget_MovingMelee';
	MeleeTarget.MovementRangeAdjustment = 0;

	Template.AbilityTriggers.AddItem(new class'X2AbilityTrigger_PlayerInput');

	IcarusDropSlammerEffect = new class'X2Effect_Persistent';
	IcarusDropSlammerEffect.BuildPersistentEffect(1, false, true);
	IcarusDropSlammerEffect.EffectName = 'IcarusDropSlammerEffect';
	IcarusDropSlammerEffect.EffectAddedFn = IcarusDropSlammer_EffectAdded;
	Template.AddShooterEffect(IcarusDropSlammerEffect);

	DamageEffect = new class'X2Effect_ApplyWeaponDamage';
	DamageEffect.bIgnoreBaseDamage = true;
	DamageEffect.EffectDamageValue = class'X2Item_DLC_Day60Weapons'.default.ARCHONKING_ICARUS_DROP_BASEDAMAGE;
	Template.AddTargetEffect(DamageEffect);

	// Target Effects
	//Impairing effects need to come after the damage. This is needed for proper visualization ordering.
	//Effect on a successful slam attack is triggering the Apply Impairing Effect Ability
	ImpairingAbilityEffect = new class 'X2Effect_ImmediateAbilityActivation';
	ImpairingAbilityEffect.BuildPersistentEffect(1, false, true, , eGameRule_PlayerTurnBegin);
	ImpairingAbilityEffect.EffectName = 'ImmediateStunImpair';
	ImpairingAbilityEffect.AbilityName = class'X2Ability_Impairing'.default.ImpairingAbilityName;
	ImpairingAbilityEffect.VisualizationFn = class'X2Ability_Impairing'.static.ImpairingAbilityEffectTriggeredVisualization;
	Template.AddTargetEffect(ImpairingAbilityEffect);

	RemoveEffects = new class'X2Effect_RemoveEffects';
	RemoveEffects.EffectNamesToRemove.AddItem(default.IcarusDropGrabbeeEffect_SustainedName);
	Template.AddTargetEffect(RemoveEffects);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = IcarusDropSlam_BuildVisualization;

	Template.CinescriptCameraType = "ArchonKing_IcarusDropSlam";

	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotLostSpawnIncreasePerUse;
	
	return Template;
}

static function IcarusDropSlammer_EffectAdded(X2Effect_Persistent PersistentEffect, const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState)
{
	local XComGameState_Unit SourceUnitState;
	local vector TargetLocation, LandingLocation;
	local TTile EndTileLocation;
	local XComWorldData World;
	local X2EventManager EventManager;

	World = `XWORLD;
	EventManager = `XEVENTMGR;

	SourceUnitState = XComGameState_Unit(kNewTargetState);
	`assert(SourceUnitState != none);

	// TODO: Need to find an open tile in the sky
	// solve the path to get him to the fire location
	// Find a valid landing location
	TargetLocation = World.GetPositionFromTileCoordinates(SourceUnitState.TileLocation);

	LandingLocation = TargetLocation;
	LandingLocation.Z = World.GetFloorZForPosition(TargetLocation, true);
	EndTileLocation = World.GetTileCoordinatesFromPosition(LandingLocation);

	// Move the target to this space
	SourceUnitState.SetVisibilityLocation(EndTileLocation);

//	`SHAPEMGR.DrawSphere(LandingLocation, vect(15,15,15), MakeLinearColor(1,0,0,1), true);

	EventManager.TriggerEvent('ObjectMoved', SourceUnitState, SourceUnitState, NewGameState);
	EventManager.TriggerEvent('UnitMoveFinished', SourceUnitState, SourceUnitState, NewGameState);
}

static function IcarusDropSlammee_EffectAdded(X2Effect_Persistent PersistentEffect, const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState)
{
	local XComGameState_Unit TargetUnitState;
	local vector TargetLocation, LandingLocation;
	local TTile EndTileLocation;
	local XComWorldData World;
	local X2EventManager EventManager;

	World = `XWORLD;
	EventManager = `XEVENTMGR;

	TargetUnitState = XComGameState_Unit(kNewTargetState);
	`assert(TargetUnitState != none);

	// TODO: Need to find an open tile in the sky
	// solve the path to get him to the fire location
	TargetLocation = World.GetPositionFromTileCoordinates(TargetUnitState.TileLocation);

	LandingLocation = TargetLocation;
	LandingLocation.Z = World.GetFloorZForPosition(TargetLocation, true);
	EndTileLocation = World.GetTileCoordinatesFromPosition(LandingLocation);

	// Move the target to this space
	TargetUnitState.SetVisibilityLocation(EndTileLocation);

	EventManager.TriggerEvent('ObjectMoved', TargetUnitState, TargetUnitState, NewGameState);
	EventManager.TriggerEvent('UnitMoveFinished', TargetUnitState, TargetUnitState, NewGameState);
}

function IcarusDropSlam_BuildVisualization(XComGameState VisualizeGameState)
{
	local XComGameStateHistory History;
	local XComGameStateContext_Ability AbilityContext;
	local VisualizationActionMetadata	EmptyTrack;
	local VisualizationActionMetadata	ActionMetadata;
	local XComGameState_Ability Ability;
	local X2Action_PlaySoundAndFlyOver SoundAndFlyover;
	local X2VisualizerInterface TargetVisualizerInterface;	
	local int i;

	History = `XCOMHISTORY;

	AbilityContext = XComGameStateContext_Ability(VisualizeGameState.GetContext());

	//Configure the visualization track for the shooter
	//****************************************************************************************
	ActionMetadata = EmptyTrack;
	ActionMetadata.StateObject_OldState = History.GetGameStateForObjectID(AbilityContext.InputContext.SourceObject.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	ActionMetadata.StateObject_NewState = VisualizeGameState.GetGameStateForObjectID(AbilityContext.InputContext.SourceObject.ObjectID);
	ActionMetadata.VisualizeActor = History.GetVisualizer(AbilityContext.InputContext.SourceObject.ObjectID);
	ActionMetadata.AdditionalVisualizeActors.AddItem(History.GetVisualizer(AbilityContext.InputContext.PrimaryTarget.ObjectID));

	class'X2Action_DLC_Day60IcarusDropSlam'.static.AddToVisualizationTree(ActionMetadata, AbilityContext);

	Ability = XComGameState_Ability(History.GetGameStateForObjectID(AbilityContext.InputContext.AbilityRef.ObjectID));
	SoundAndFlyOver = X2Action_PlaySoundAndFlyOver(class'X2Action_PlaySoundAndFlyOver'.static.AddToVisualizationTree(ActionMetadata, AbilityContext));
	SoundAndFlyOver.SetSoundAndFlyOverParameters(None, "", Ability.GetMyTemplate().ActivationSpeech, eColor_Good);

		//****************************************************************************************

	//Configure the visualization track for the target
	//****************************************************************************************
	ActionMetadata = EmptyTrack;
	ActionMetadata.StateObject_OldState = History.GetGameStateForObjectID(AbilityContext.InputContext.PrimaryTarget.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	ActionMetadata.StateObject_NewState = VisualizeGameState.GetGameStateForObjectID(AbilityContext.InputContext.PrimaryTarget.ObjectID);
	ActionMetadata.VisualizeActor = History.GetVisualizer(AbilityContext.InputContext.PrimaryTarget.ObjectID);	

	for( i = 0; i < AbilityContext.ResultContext.TargetEffectResults.Effects.Length; ++i )
	{
		// Loop over the target effects and do their visualizations
		// Except skip the X2Effect_RemoveEffects, we are dealing with that viaualization
		// during the slam action above
		if( X2Effect_RemoveEffects(AbilityContext.ResultContext.TargetEffectResults.Effects[i]) == none )
		{
			AbilityContext.ResultContext.TargetEffectResults.Effects[i].AddX2ActionsForVisualization(VisualizeGameState, ActionMetadata, AbilityContext.ResultContext.TargetEffectResults.ApplyResults[i]);

			// If this is the X2Effect_ApplyWeaponDamage, deal with possible death/unconscious visualization
			// Then wait for the slam to finish
			if( X2Effect_ApplyWeaponDamage(AbilityContext.ResultContext.TargetEffectResults.Effects[i]) != none )
			{
				TargetVisualizerInterface = X2VisualizerInterface(ActionMetadata.VisualizeActor);
				if( TargetVisualizerInterface != none )
				{
					//Allow the visualizer to do any custom processing based on the new game state. For example, units will create a death action when they reach 0 HP.
					TargetVisualizerInterface.BuildAbilityEffectsVisualization(VisualizeGameState, ActionMetadata);
				}
			}
		}
	}

		//****************************************************************************************
}

defaultproperties
{
	IcarusDropGrabbeeAnimSetEffectName="IcarusDropGrabbeeAnimSetEffect"
	IcarusDropGrabbeeEffect_SustainedName="IcarusDropGrabbeeEffect_Sustained"
	IcarusDropGrabberEffectName="IcarusDropGrabberEffect"
	IcarusDropGrabberDamageImmunityEffectName="IcarusDropGrabberDamageImmunityEffect"
}

static function X2AbilityTemplate PADangerZone()
{
	local X2Effect_PADangerZone Effect;

	Effect = new class'X2Effect_PADangerZone';
	Effect.BonusAbilityName = 'DangerZone';
	Effect.AbilityNames = default.PADangerZoneAbilityName;
	Effect.BonusRadius = default.PADangerZoneAbilityBonusRadius;

	return Passive('PADangerZone', "img:///KetarosPkg_Abilities.UIPerk_radiation", false, Effect);
}

static function X2AbilityTemplate PAPackAlpha()
{
	local X2AbilityTemplate				Template;
	local X2AbilityCost_ActionPoints	ActionPointCost;
	local X2AbilityCooldown             Cooldown;
	local X2Effect_GrantActionPoints	ActionPointEffect;
	local X2Condition_UnitProperty      TargetCondition;
	
	`CREATE_X2ABILITY_TEMPLATE(Template, 'PAPackAlpha');

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ability_ShrugItOff";
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_CORPORAL_PRIORITY;
	Template.Hostility = eHostility_Defensive;
	Template.bLimitTargetIcons = true;
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;

	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.AllowedTypes.RemoveItem(class'X2CharacterTemplateManager'.default.SkirmisherInterruptActionPoint);
	Template.AbilityCosts.AddItem(ActionPointCost);

	Cooldown = New class'X2AbilityCooldown';
	Cooldown.iNumTurns = 6;
	Template.AbilityCooldown = Cooldown;

	Template.AbilityToHitCalc = default.DeadEye;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AddShooterEffectExclusions();

	TargetCondition = new class'X2Condition_UnitProperty';
	TargetCondition.ExcludeHostileToSource = true;
	TargetCondition.ExcludeFriendlyToSource = false;
	TargetCondition.RequireSquadmates = true;
	TargetCondition.FailOnNonUnits = true;
	TargetCondition.ExcludeDead = true;
	TargetCondition.ExcludeRobotic = false;
	TargetCondition.ExcludeUnableToAct = true;
	Template.AbilityTargetConditions.AddItem(TargetCondition);
	Template.AbilityTargetConditions.AddItem(default.GameplayVisibilityCondition);

	ActionPointEffect = new class'X2Effect_GrantActionPoints';
	ActionPointEffect.NumActionPoints = 2;
	ActionPointEffect.PointType = class'X2CharacterTemplateManager'.default.StandardActionPoint;
	ActionPointEffect.bSelectUnit = true;
	Template.AddTargetEffect(ActionPointEffect);

	Template.AbilityTargetStyle = default.SimpleSingleTarget;

	Template.bShowActivation = true;
//BEGIN AUTOGENERATED CODE: Template Overrides 'CombatPresence'
	Template.bSkipFireAction = false;
	Template.bSkipExitCoverWhenFiring = true;
	//Template.AbilityConfirmSound = "Combat_Presence_Activate";
	Template.CustomFireAnim = 'NO_Rage';
	//Template.ActivationSpeech = 'CombatPresence';
	Template.CinescriptCameraType = "Skirmisher_CombatPresence";
//END AUTOGENERATED CODE: Template Overrides 'CombatPresence'
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;

	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.NonAggressiveChosenActivationIncreasePerUse;
	
	return Template;
}

static function X2AbilityTemplate PARumblingTank()
{
	local X2AbilityTemplate						Template;
	local X2AbilityTargetStyle                  TargetStyle;
	local X2AbilityTrigger						Trigger;
	local X2EFfect_PersistentStatChange			HPEffect;
	local X2EFfect_PersistentStatChange			ArmorEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PARumblingTank');

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.IconImage = "img:///KetarosPkg_Abilities.UIPerk_tank";

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	ArmorEffect = new class'X2Effect_PersistentStatChange';
	ArmorEffect.BuildPersistentEffect(1, true, false);
	HPEffect.AddPersistentStatChange(eStat_ArmorMitigation, 1);
	ArmorEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyHelpText(), Template.IconImage,,,Template.AbilitySourceName);
	Template.AddTargetEffect(ArmorEffect);

	HPEffect = new class'X2Effect_PersistentStatChange';
	HPEffect.BuildPersistentEffect(1, true, false);
	HPEffect.AddPersistentStatChange(eStat_ShieldHP, 3);
	Template.AddTargetEFfect(HPEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	//  NOTE: No visualization on purpose!

	Template.bCrossClassEligible = false;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, 1);
	

	return Template;
}

//static function X2AbilityTemplate AddPACombatReadinessA()
//{
//	local X2AbilityTemplate						Template;
//	local X2Effect_PersistentStatChange			StatChangeEffect;
//	local X2AbilityCost_ActionPoints	ActionPointCost;

//	`CREATE_X2ABILITY_TEMPLATE(Template, 'PACombatReadinessA');
//BEGIN AUTOGENERATED CODE: Template Overrides 'FullThrottle'
//	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ability_BattleMadness";
	//Template.ActivationSpeech = 'FullThrottle';
//END AUTOGENERATED CODE: Template Overrides 'FullThrottle'

//	ActionPointCost = new class'X2AbilityCost_ActionPoints';
//	ActionPointCost.iNumPoints = 1;
//	ActionPointCost.bConsumeAllPoints = false;
//	Template.AbilityCosts.AddItem(ActionPointCost);

//	Template.AbilitySourceName = 'eAbilitySource_Perk';
//	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
//	Template.Hostility = eHostility_Neutral;

//	Template.AbilityToHitCalc = default.DeadEye;
//	Template.AbilityTargetStyle = default.SelfTarget;
	
//	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

//	StatChangeEffect = new class'X2Effect_PersistentStatChange';
//	StatChangeEffect.AddPersistentStatChange(eStat_Dodge, 5);
//	StatChangeEffect.AddPersistentStatChange(eStat_Mobility, 1);	
//	StatChangeEffect.BuildPersistentEffect(3, false, true, false, eGameRule_PlayerTurnEnd);
//	StatChangeEffect.DuplicateResponse = eDupe_Allow;
//	StatChangeEffect.SetDisplayInfo(ePerkBuff_Bonus, Template.LocFriendlyName, default.PACombatReadinessBonusText, Template.IconImage, true, , Template.AbilitySourceName);
//	StatChangeEffect.EffectName = 'WiredUp';
//	Template.AddTargetEffect(StatChangeEffect);

//	Template.CustomFireAnim = 'HL_SignalNegative';

//	Template.bSkipFireAction = true;
//	Template.bShowActivation = true;
//	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
//	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
//	Template.AdditionalAbilities.AddItem('PACombatReadinessAPassive');

//	return Template;
//}

//static function X2AbilityTemplate PACombatReadinessAPassive()
//{
//	local X2AbilityTemplate		Template;

//	Template = PurePassive('PACombatReadinessPassive', "img:///UILibrary_MZChimeraIcons.Ability_BattleMadness", , 'eAbilitySource_Perk');

//	return Template;
//}

static function X2AbilityTemplate AddPACombatReadinessA()
{
	local X2AbilityTemplate Template;
	local X2AbilityCost_ActionPoints ActionPointCost;
	local X2Condition_UnitProperty UnitPropertyCondition;
	local X2AbilityTrigger_PlayerInput InputTrigger;
	local X2Effect_PersistentStatChange			StatChangeEffect;
	local X2Condition_UnitProperty          SourceConcealedCondition;

    //Only work when the source is concealed
    SourceConcealedCondition = new class'X2Condition_UnitProperty';
    SourceConcealedCondition.ExcludeFriendlyToSource = false;
    SourceConcealedCondition.IsConcealed = true;
    Template.AbilityShooterConditions.AddItem(SourceConcealedCondition);

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PACombatReadinessA');
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ability_BattleMadness";

	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.Hostility = eHostility_Defensive;

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);

	//Can't use while dead
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);

	// Add dead eye to guarantee
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;

	InputTrigger = new class'X2AbilityTrigger_PlayerInput';
	Template.AbilityTriggers.AddItem(InputTrigger);

	StatChangeEffect = new class'X2Effect_PersistentStatChange';
	StatChangeEffect.AddPersistentStatChange(eStat_Dodge, 5);
	StatChangeEffect.AddPersistentStatChange(eStat_Mobility, 2);	
	StatChangeEffect.BuildPersistentEffect(2, false, true, false, eGameRule_PlayerTurnEnd);
	StatChangeEffect.DuplicateResponse = eDupe_Refresh;
	StatChangeEffect.bStackOnRefresh = true;
	StatChangeEffect.bForceReapplyOnRefresh = true;
	StatChangeEffect.SetDisplayInfo(ePerkBuff_Bonus, Template.LocFriendlyName, default.PACombatReadinessBonusText, Template.IconImage, true, , Template.AbilitySourceName);
	StatChangeEffect.EffectName = 'WiredUp';
	Template.AddTargetEffect(StatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
    
	Template.CustomFireAnim = 'HL_SignalNegative';

	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotLostSpawnIncreasePerUse;
	
	return Template;
}

//static function X2AbilityTemplate AddPACombatReadinessB()
//{
//	local X2AbilityTemplate						Template;
//	local X2Effect_PersistentStatChange			StatChangeEffect;
//	local X2AbilityCost_ActionPoints	ActionPointCost;

//	`CREATE_X2ABILITY_TEMPLATE(Template, 'PACombatReadinessB');
//BEGIN AUTOGENERATED CODE: Template Overrides 'FullThrottle'
//	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ability_BattleMadness";
	//Template.ActivationSpeech = 'FullThrottle';
//END AUTOGENERATED CODE: Template Overrides 'FullThrottle'

//	ActionPointCost = new class'X2AbilityCost_ActionPoints';
//	ActionPointCost.iNumPoints = 1;
//	ActionPointCost.bConsumeAllPoints = false;
//	Template.AbilityCosts.AddItem(ActionPointCost);

//	Template.AbilitySourceName = 'eAbilitySource_Perk';
//	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
//	Template.Hostility = eHostility_Neutral;

//	Template.AbilityToHitCalc = default.DeadEye;
//	Template.AbilityTargetStyle = default.SelfTarget;
	
//	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

//	StatChangeEffect = new class'X2Effect_PersistentStatChange';
//	StatChangeEffect.AddPersistentStatChange(eStat_Dodge, 5);
//	StatChangeEffect.AddPersistentStatChange(eStat_Mobility, 1);	
//	StatChangeEffect.BuildPersistentEffect(3, false, true, false, eGameRule_PlayerTurnEnd);
//	StatChangeEffect.DuplicateResponse = eDupe_Allow;
//	StatChangeEffect.SetDisplayInfo(ePerkBuff_Bonus, Template.LocFriendlyName, default.PACombatReadinessBonusText, Template.IconImage, true, , Template.AbilitySourceName);
//	StatChangeEffect.EffectName = 'PumpedUp';
//	Template.AddTargetEffect(StatChangeEffect);

//	Template.CustomFireAnim = 'HL_Sniff';

//	Template.bSkipFireAction = true;
//	Template.bShowActivation = true;
//	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
//	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
//	Template.AdditionalAbilities.AddItem('PACombatReadinessBPassive');

//	return Template;
//}

//static function X2AbilityTemplate PACombatReadinessBPassive()
//{
//	local X2AbilityTemplate		Template;

//	Template = PurePassive('PACombatReadinessPassive', "img:///UILibrary_MZChimeraIcons.Ability_BattleMadness", , 'eAbilitySource_Perk');

//	return Template;
//}

static function X2AbilityTemplate AddPACombatReadinessB()
{
	local X2AbilityTemplate Template;
	local X2AbilityCost_ActionPoints ActionPointCost;
	local X2Condition_UnitProperty UnitPropertyCondition;
	local X2AbilityTrigger_PlayerInput InputTrigger;
	local X2Effect_PersistentStatChange			StatChangeEffect;
	local X2Condition_UnitProperty          SourceConcealedCondition;

    //Only work when the source is concealed
    SourceConcealedCondition = new class'X2Condition_UnitProperty';
    SourceConcealedCondition.ExcludeFriendlyToSource = false;
    SourceConcealedCondition.IsConcealed = true;
    Template.AbilityShooterConditions.AddItem(SourceConcealedCondition);

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PACombatReadinessB');
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ability_BattleMadness";

	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.Hostility = eHostility_Defensive;

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);

	//Can't use while dead
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);

	// Add dead eye to guarantee
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;

	InputTrigger = new class'X2AbilityTrigger_PlayerInput';
	Template.AbilityTriggers.AddItem(InputTrigger);

	StatChangeEffect = new class'X2Effect_PersistentStatChange';
	StatChangeEffect.AddPersistentStatChange(eStat_Dodge, 5);
	StatChangeEffect.AddPersistentStatChange(eStat_Mobility, 2);	
	StatChangeEffect.BuildPersistentEffect(2, false, true, false, eGameRule_PlayerTurnEnd);
	StatChangeEffect.DuplicateResponse = eDupe_Refresh;
	StatChangeEffect.bStackOnRefresh = true;
	StatChangeEffect.bForceReapplyOnRefresh = true;
	StatChangeEffect.SetDisplayInfo(ePerkBuff_Bonus, Template.LocFriendlyName, default.PACombatReadinessBonusText, Template.IconImage, true, , Template.AbilitySourceName);
	StatChangeEffect.EffectName = 'PumpedUp';
	Template.AddTargetEffect(StatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
    
	Template.CustomFireAnim = 'HL_Sniff';

	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotLostSpawnIncreasePerUse;
	
	return Template;
}

static function X2AbilityTemplate Serpentine()
{
	local XMBEffect_AbilityCostRefund Effect;
	local XMBCondition_AbilityName AbilityNameCondition;
	
	// Create an effect that will refund the cost of the action
	Effect = new class'XMBEffect_AbilityCostRefund';
	Effect.EffectName = 'Serpentine';
	Effect.TriggeredEvent = 'Serpentine';

	// The bonus only applies to specified abilities
	AbilityNameCondition = new class'XMBCondition_AbilityName';
	AbilityNameCondition.IncludeAbilityNames = default.SERPENTINE_ABILITIES;
	Effect.AbilityTargetConditions.AddItem(AbilityNameCondition);

	// Create the template using a helper function
	return Passive('Serpentine', "img:///UILibrary_MZChimeraIcons.Ability_BindRelease", false, Effect);
}

static function X2AbilityTemplate PAVoidFlood()
{
	local X2AbilityTemplate										Template;

	Template = PurePassive('PAVoidFlood', "img:///UILibrary_MZChimeraIcons.Ability_PsiDomain",, 'eAbilitySource_Perk');
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
    Template.bDisplayInUITooltip = false;
    Template.bDisplayInUITacticalText = false;
    Template.Hostility = eHostility_Neutral;
	Template.AdditionalAbilities.AddItem('PAVoidFloodEffect');
	Template.AdditionalAbilities.AddItem('VoidRift');

		return Template;
}

static function X2AbilityTemplate PAVoidFloodEffect()
{
	local X2Effect_PADangerZone Effect;

	Effect = new class'X2Effect_PADangerZone';
	Effect.BonusAbilityName = 'VoidFlood';
	Effect.AbilityNames = default.PAVoidFloodAbilityName;
	Effect.BonusRadius = default.PAVoidFloodAbilityBonusRadius;
	//Template.AdditionalAbilities.AddItem('VoidRift');

	return Passive('PAVoidFlood', "img:///UILibrary_MZChimeraIcons.Ability_PsiDomain", false, Effect);
}

//static function X2AbilityTemplate PAAbductor()
//{

//	local X2AbilityTemplate										Template;

//	Template = PurePassive('PAAbductor', "img:///KetarosPkg_Abilities.UIPerk_abduction",, 'eAbilitySource_Perk');
//	Template.AdditionalAbilities.AddItem('Domination');

//	return Template;
//}

static function X2AbilityTemplate PAAbductor()
{
	local X2AbilityTemplate             Template;
	local X2AbilityCost_ActionPoints    ActionPointCost;
	local X2Condition_UnitProperty      UnitPropertyCondition;
	local X2Effect_MindControl          MindControlEffect;
	local X2Effect_StunRecover			StunRecoverEffect;
	local X2Condition_UnitEffects       EffectCondition;
	local X2AbilityCharges              Charges;
	local X2AbilityCost_Charges         ChargeCost;
	local X2AbilityCooldown             Cooldown;
	local X2Condition_UnitImmunities	UnitImmunityCondition;
	local X2AbilityToHitCalc_StatCheck_UnitVsUnit StatCheck;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PAAbductor');

	Template.IconImage = "img:///KetarosPkg_Abilities.UIPerk_abduction";
	Template.AbilitySourceName = 'eAbilitySource_Psionic';
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_MAJOR_PRIORITY;
	Template.Hostility = eHostility_Offensive;

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);

	Charges = new class'X2AbilityCharges';
	Charges.InitialCharges = 2;
	Template.AbilityCharges = Charges;

	ChargeCost = new class'X2AbilityCost_Charges';
	ChargeCost.NumCharges = 1;
	ChargeCost.bOnlyOnHit = true;
	Template.AbilityCosts.AddItem(ChargeCost);

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = 7;
	Template.AbilityCooldown = Cooldown;
	
	StatCheck = new class'X2AbilityToHitCalc_StatCheck_UnitVsUnit';
	StatCheck.BaseValue = 50;
	Template.AbilityToHitCalc = StatCheck;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AddShooterEffectExclusions();

	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeDead = true;
	UnitPropertyCondition.ExcludeFriendlyToSource = true;
	UnitPropertyCondition.ExcludeRobotic = true;
	UnitPropertyCondition.FailOnNonUnits = true;
	Template.AbilityTargetConditions.AddItem(UnitPropertyCondition);	
	Template.AbilityTargetConditions.AddItem(default.GameplayVisibilityCondition);

	EffectCondition = new class'X2Condition_UnitEffects';
	EffectCondition.AddExcludeEffect(class'X2Effect_MindControl'.default.EffectName, 'AA_UnitIsMindControlled');
	Template.AbilityTargetConditions.AddItem(EffectCondition);

	UnitImmunityCondition = new class'X2Condition_UnitImmunities';
	UnitImmunityCondition.AddExcludeDamageType('Mental');
	UnitImmunityCondition.bOnlyOnCharacterTemplate = true;
	Template.AbilityTargetConditions.AddItem(UnitImmunityCondition);

	//  mind control target
	MindControlEffect = class'X2StatusEffects'.static.CreateMindControlStatusEffect(1, false, true);
	Template.AddTargetEffect(MindControlEffect);

	StunRecoverEffect = class'X2StatusEffects'.static.CreateStunRecoverEffect();
	Template.AddTargetEffect(StunRecoverEffect);

	Template.AddTargetEffect(class'X2StatusEffects'.static.CreateMindControlRemoveEffects());

	Template.AbilityTargetStyle = default.SimpleSingleTarget;
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	Template.ActivationSpeech = 'Domination';
	Template.SourceMissSpeech = 'SoldierFailsControl';

	Template.CustomFireAnim = 'HL_Psi_MindControl';
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;
	Template.CinescriptCameraType = "Psionic_FireAtUnit";

	Template.SuperConcealmentLoss = class'X2AbilityTemplateManager'.default.SuperConcealmentStandardShotLoss;
	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotChosenActivationIncreasePerUse;
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotLostSpawnIncreasePerUse;
//BEGIN AUTOGENERATED CODE: Template Overrides 'Domination'
	Template.bFrameEvenWhenUnitIsHidden = true;
	Template.AbilityConfirmSound = "TacticalUI_ActivateAbility";
//END AUTOGENERATED CODE: Template Overrides 'Domination'
	
	return Template;
}

static function X2AbilityTemplate Create_AnimSet_Passive(name TemplateName, string AnimSetPath)
{
    local X2AbilityTemplate                 Template;
    local X2Effect_AdditionalAnimSets        AnimSetEffect;

    `CREATE_X2ABILITY_TEMPLATE(Template, TemplateName);

    Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
    Template.bDisplayInUITooltip = false;
    Template.bDisplayInUITacticalText = false;
    Template.bDontDisplayInAbilitySummary = true;
    Template.Hostility = eHostility_Neutral;
    Template.bUniqueSource = true;

    Template.AbilityToHitCalc = default.DeadEye;
    Template.AbilityTargetStyle = default.SelfTarget;
    Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);
    
    AnimSetEffect = new class'X2Effect_AdditionalAnimSets';
    AnimSetEffect.AddAnimSetWithPath(AnimSetPath);
    AnimSetEffect.BuildPersistentEffect(1, true, false, false);
    Template.AddTargetEffect(AnimSetEffect);

    Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

    return Template;
}

static function X2AbilityTemplate PARangeFinder()
{

	local X2AbilityTemplate										Template;

	Template = PurePassive('PARangeFinder', "img:///UILibrary_MZChimeraIcons.WeaponMod_ScopeSuperior",, 'eAbilitySource_Perk');
	Template.AdditionalAbilities.AddItem('Squadsight');
	Template.AdditionalAbilities.AddItem('LongWatch');

		return Template;
}

static function X2AbilityTemplate PA_NoScope()
{
	local X2AbilityTemplate                 Template;	
	local X2AbilityCost_Ammo                AmmoCost;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2Effect_Knockback				KnockbackEffect;
	local X2Condition_Visibility            VisibilityCondition;
	local X2AbilityToHitCalc_StandardAim	StandardAim;
	local X2AbilityCooldown					Cooldown;
	local array<name>                       SkipExclusions;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_NoScope');

	// Icon Properties
	//Template.bDontDisplayInAbilitySummary = false;
	Template.IconImage = "img:///KetarosPkg_Abilities.UIPerk_SniperRifle02";
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.STANDARD_SHOT_PRIORITY;
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.DisplayTargetHitChance = true;
	Template.AbilitySourceName = 'eAbilitySource_Standard';                                       // color of the icon
	// Activated by a button press; additionally, tells the AI this is an activatable
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.DefaultSourceItemSlot = eInvSlot_PrimaryWeapon;

	SkipExclusions.AddItem(class'X2AbilityTemplateManager'.default.DisorientedName);
	Template.AddShooterEffectExclusions(SkipExclusions);

	// Targeting Details
	// Can only shoot visible enemies
	VisibilityCondition = new class'X2Condition_Visibility';
	VisibilityCondition.bRequireGameplayVisible = true;
	VisibilityCondition.bAllowSquadsight = false;
	Template.AbilityTargetConditions.AddItem(VisibilityCondition);
	// Can't target dead; Can't target friendlies
	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);
	// Can't shoot while dead
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	// Only at single targets that are in range.
	Template.AbilityTargetStyle = default.SimpleSingleTarget;

	// Action Point
	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = false;
	Template.AbilityCosts.AddItem(ActionPointCost);	

	AmmoCost = new class'X2AbilityCost_Ammo';
	AmmoCost.iAmmo = 1;
	Template.AbilityCosts.AddItem(AmmoCost);

	Template.bAllowAmmoEffects = true; // 	
	Template.bAllowBonusWeaponEffects = true;

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = 1;
	Template.AbilityCooldown = Cooldown;

	// Weapon Upgrade Compatibility
	Template.bAllowFreeFireWeaponUpgrade = true;                        // Flag that permits action to become 'free action' via 'Hair Trigger' or similar upgrade / effects

	//  Put holo target effect first because if the target dies from this shot, it will be too late to notify the effect.
	Template.AddTargetEffect(class'X2Ability_Chosen'.static.HoloTargetEffect());
	Template.AddTargetEffect(class'X2Ability_GrenadierAbilitySet'.static.HoloTargetEffect());
	//  Various Soldier ability specific effects - effects check for the ability before applying	
	Template.AddTargetEffect(class'X2Ability_GrenadierAbilitySet'.static.ShredderDamageEffect());
	
	// Damage Effect
	Template.AddTargetEffect(default.WeaponUpgradeMissDamage);

	// Hit Calculation (Different weapons now have different calculations for range)
	StandardAim = new class'X2AbilityToHitCalc_StandardAim';
	StandardAim.bAllowCrit = false;
	Template.AbilityToHitCalc = StandardAim;
		
	// Targeting Method
	Template.TargetingMethod = class'X2TargetingMethod_OverTheShoulder';
	Template.bUsesFiringCamera = true;
	Template.CinescriptCameraType = "StandardGunFiring";	

	Template.AssociatedPassives.AddItem('HoloTargeting');

	// MAKE IT LIVE!
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;	
	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;

	Template.bDisplayInUITooltip = true;
	Template.bDisplayInUITacticalText = true;

	KnockbackEffect = new class'X2Effect_Knockback';
	KnockbackEffect.KnockbackDistance = 2;
	Template.AddTargetEffect(KnockbackEffect);

	class'X2StrategyElement_XpackDarkEvents'.static.AddStilettoRoundsEffect(Template);

	Template.PostActivationEvents.AddItem('StandardShotActivated');

	Template.SuperConcealmentLoss = class'X2AbilityTemplateManager'.default.SuperConcealmentStandardShotLoss;
	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotChosenActivationIncreasePerUse;
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotLostSpawnIncreasePerUse;

	Template.bFrameEvenWhenUnitIsHidden = true;

	return Template;	
}

static function X2AbilityTemplate AlloyKnuckleGuards()
{
	local XMBEffect_ConditionalBonus AlloyKnuckleGuardsEffect;

	AlloyKnuckleGuardsEffect = new class'XMBEffect_ConditionalBonus';
	AlloyKnuckleGuardsEffect.AddDamageModifier(3);
	AlloyKnuckleGuardsEffect.AbilityTargetConditions.AddItem(default.MeleeCondition);

	// TODO: icon
	return Passive('AlloyKnuckleGuards', "img:///KetarosPkg_Abilities.UIPerk_knuckles", true, AlloyKnuckleGuardsEffect);
}

static function X2AbilityTemplate EleriumKnuckleGuards()
{
	local XMBEffect_ConditionalBonus EleriumKnuckleGuardsEffect;

	EleriumKnuckleGuardsEffect = new class'XMBEffect_ConditionalBonus';
	EleriumKnuckleGuardsEffect.AddDamageModifier(6);
	EleriumKnuckleGuardsEffect.AbilityTargetConditions.AddItem(default.MeleeCondition);

	// TODO: icon
	return Passive('EleriumKnuckleGuards', "img:///KetarosPkg_Abilities.UIPerk_knuckles", true, EleriumKnuckleGuardsEffect);
}

static function X2AbilityTemplate AlloyClawCovers()
{
	local XMBEffect_ConditionalBonus AlloyClawCoversEffect;

	AlloyClawCoversEffect = new class'XMBEffect_ConditionalBonus';
	AlloyClawCoversEffect.AddDamageModifier(3);
	AlloyClawCoversEffect.AbilityTargetConditions.AddItem(default.MeleeCondition);

	// TODO: icon
	return Passive('AlloyClawCovers', "img:///UILibrary_PerkIcons.UIPerk_chryssalid_chargeandslash", true, AlloyClawCoversEffect);
}

static function X2AbilityTemplate EleriumClawCovers()
{
	local XMBEffect_ConditionalBonus EleriumClawCoversEffect;

	EleriumClawCoversEffect = new class'XMBEffect_ConditionalBonus';
	EleriumClawCoversEffect.AddDamageModifier(6);
	EleriumClawCoversEffect.AbilityTargetConditions.AddItem(default.MeleeCondition);

	// TODO: icon
	return Passive('EleriumClawCovers', "img:///UILibrary_PerkIcons.UIPerk_chryssalid_chargeandslash", true, EleriumClawCoversEffect);
}

static function X2DataTemplate PAMutonPunch()
{
    local X2AbilityTemplate Template;
    local X2AbilityCost_ActionPoints ActionPointCost;
    local X2AbilityToHitCalc_StandardMelee MeleeHitCalc;
    local X2Condition_UnitProperty AdjacencyCondition;
    local X2Effect_ApplyWeaponDamage PhysicalDamageEffect;
    local X2AbilityTarget_MovingMelee MeleeTarget;
    local X2AbilityMultiTarget_Radius RadiusMultiTarget;
    local array<name> SkipExclusions;

    `CREATE_X2ABILITY_TEMPLATE(Template, 'PAMutonPunch');

    Template.AbilitySourceName = 'eAbilitySource_Standard';
    Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
    Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_muton_punch";
    Template.bHideOnClassUnlock = false;
    Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_SQUADDIE_PRIORITY;

    Template.bCrossClassEligible = false;
    Template.bDisplayInUITooltip = true;
    Template.bDisplayInUITacticalText = true;
    Template.DisplayTargetHitChance = true;
    Template.bShowActivation = true;
    Template.bSkipFireAction = false;

    ActionPointCost = new class'X2AbilityCost_ActionPoints';
    ActionPointCost.iNumPoints = 1;
    ActionPointCost.bConsumeAllPoints = false;
    Template.AbilityCosts.AddItem(ActionPointCost);
    
    MeleeHitCalc = new class'X2AbilityToHitCalc_StandardMelee';
    MeleeHitCalc.BuiltInHitMod = default.MutonPunchHitModifier;
    MeleeHitCalc.BuiltInCritMod = default.MutonPunchCritModifier;
    Template.AbilityToHitCalc = MeleeHitCalc;

    //Template.AbilityTargetStyle = default.SimpleSingleMeleeTarget;
    //Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

    Template.AbilityTargetStyle = new class'X2AbilityTarget_MovingMelee';
    Template.TargetingMethod = class'X2TargetingMethod_MeleePath';

    Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
    Template.AbilityTriggers.AddItem(new class'X2AbilityTrigger_EndOfMove');

    RadiusMultiTarget = new class'X2AbilityMultiTarget_Radius';
    RadiusMultiTarget.fTargetRadius = 1;
    RadiusMultiTarget.bExcludeSelfAsTargetIfWithinRadius = true;
    Template.AbilityMultiTargetStyle = RadiusMultiTarget;

    Template.bLimitTargetIcons = true;

    // Target Conditions
	Template.AbilityTargetConditions.AddItem(new class'X2Condition_BerserkerDevastatingPunch');	
    Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);
    Template.AbilityTargetConditions.AddItem(default.MeleeVisibilityCondition);
    AdjacencyCondition = new class'X2Condition_UnitProperty';
    AdjacencyCondition.RequireWithinRange = true;
    AdjacencyCondition.WithinRange = 144; //1.5 tiles in Unreal units, allows attacks on the diag
    AdjacencyCondition.TreatMindControlledSquadmateAsHostile = true;
    Template.AbilityTargetConditions.AddItem(AdjacencyCondition);

    // Shooter Conditions
    Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
    SkipExclusions.AddItem(class'X2StatusEffects'.default.BurningName);
    SkipExclusions.AddItem(class'X2AbilityTemplateManager'.default.DisorientedName); //okay when disoriented
    Template.AddShooterEffectExclusions(SkipExclusions);
    
    // Damage Effect
    PhysicalDamageEffect = new class'X2Effect_ApplyWeaponDamage';
    PhysicalDamageEffect.EffectDamageValue = default.MutonPunchDamage;
    PhysicalDamageEffect.EffectDamageValue.DamageType = 'Melee';
    // This also deals environmental damage
    Template.AddTargetEffect(PhysicalDamageEffect);
    
    // VGamepliz matters
    Template.SourceMissSpeech = 'SwordMiss';
    Template.bSkipMoveStop = true;

    Template.CustomFireAnim = 'FF_MutonPunch';
    Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
    Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
    Template.CinescriptCameraType = "Andromedon_FistStrike";
    Template.bOverrideMeleeDeath = true;

    // This action is considered 'hostile' and can be interrupted!
    Template.Hostility = eHostility_Offensive;
    Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;
    Template.bFrameEvenWhenUnitIsHidden = true;
    
    Template.AdditionalAbilities.AddItem('MutonPunch_Animation');

    return Template;
}

static function X2AbilityTemplate PABullRushMuton()
{
	local X2AbilityTemplate Template;
	local X2Effect_ApplyWeaponDamage DamageEffect;
	local X2Effect_Persistent StunnedEffect;
	local X2AbilityToHitCalc_StandardMelee ToHitCalc;

	// Create a damage effect. X2Effect_ApplyWeaponDamage is used to apply all types of damage, not
	// just damage from weapon attacks.
	DamageEffect = new class'X2Effect_ApplyWeaponDamage';

	DamageEffect.EffectDamageValue = default.BullRushMutonDamage;
	DamageEffect.bIgnoreBaseDamage = true;

	Template = MeleeAttack('PABullRushMuton', "img:///UILibrary_SOCombatEngineer.UIPerk_bullrush", true, DamageEffect,, eCost_SingleConsumeAll);
	
	// The default hit chance for melee attacks is low. Add +20 to the attack to match swords.
	ToHitCalc = new class'X2AbilityToHitCalc_StandardMelee';
	ToHitCalc.BuiltInHitMod = default.BullRushMutonHitModifier;
	ToHitCalc.BuiltInCritMod = default.BullRushMutonCritModifier;
	Template.AbilityToHitCalc = ToHitCalc;

	// Create a stun effect that removes 2 actions and has a 100% chance of success if the attack hits.
	StunnedEffect = class'X2StatusEffects'.static.CreateStunnedStatusEffect(2, 100, false);
	StunnedEffect.VisualizationFn = EffectFlyOver_Visualization;
	Template.AddTargetEffect(StunnedEffect);

	// The below is a custom animation based on the Andromedon's punch with different sound effects.
	Template.CustomFireAnim = 'FF_MutonPunch';

	return Template;
}

// This next ability is to make the Faceless regen visible to the player in the armory, because Firaxis set up the ability in a stupid convoluted manner
static function X2AbilityTemplate PAFacelessRegen()
{

	local X2AbilityTemplate										Template;

	Template = PurePassive('PAFacelessRegen', "img:///UILibrary_PerkIcons.UIPerk_rapidregeneration",, 'eAbilitySource_Perk');
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;

	return Template;
}

static function X2AbilityTemplate ThrashF()
{
	local X2AbilityTemplate                 Template;

	Template = PurePassive('ThrashF', "img:///KetarosPkg_Abilities.UIPerk_hulk", false, 'eAbilitySource_Perk');
	Template.DefaultSourceItemSlot = eInvSlot_Unknown;
	Template.AdditionalAbilities.AddItem('ThrashFAttack');
	return Template;
}

static function X2AbilityTemplate ThrashFAttack()
{
	local X2AbilityTemplate							Template;
	local X2AbilityToHitCalc_StandardMelee			ToHitCalc;
	local X2AbilityTrigger_EventListener			Trigger;
	local X2Effect_ApplyWeaponDamage				PhysicalDamageEffect;
	local X2Effect_Persistent						BladestormTargetEffect;
	local X2Condition_UnitEffectsWithAbilitySource	BladestormTargetCondition;
	local X2Condition_UnitProperty					SourceNotConcealedCondition;
	local X2Condition_Visibility					TargetVisibilityCondition;
	local X2Condition_UnitEffects					UnitEffectsCondition;
	local X2Condition_UnitProperty					ExcludeSquadmatesCondition;
	local X2Condition_UnitProperty					AdjacencyCondition;
	local X2AbilityMultiTarget_Radius				RadiusMultiTarget;
	local X2Condition_NotItsOwnTurn					NotItsOwnTurnCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'ThrashFAttack');

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.IconImage = "img:///KetarosPkg_Abilities.UIPerk_hulk";
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_CAPTAIN_PRIORITY;

	ToHitCalc = new class'X2AbilityToHitCalc_StandardMelee';
	ToHitCalc.bReactionFire = true;
	ToHitCalc.BuiltInHitMod = 0;
	Template.AbilityToHitCalc = ToHitCalc;
	Template.AbilityTargetStyle = default.SimpleSingleMeleeTarget;

	//  trigger on movement
	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.EventID = 'ObjectMoved';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.Filter = eFilter_None;
	Trigger.ListenerData.EventFn = class'XComGameState_Ability'.static.TypicalOverwatchListener;
	Template.AbilityTriggers.AddItem(Trigger);
	//  trigger on an attack
	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.EventID = 'AbilityActivated';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.Filter = eFilter_None;
	Trigger.ListenerData.EventFn = class'XComGameState_Ability'.static.TypicalAttackListener;
	Template.AbilityTriggers.AddItem(Trigger);

	//  it may be the case that enemy movement caused a concealment break, which made Bladestorm applicable - attempt to trigger afterwards
	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.EventID = 'UnitConcealmentBroken';
	Trigger.ListenerData.Filter = eFilter_Unit;
	Trigger.ListenerData.EventFn = ThrashConcealmentListener;
	Trigger.ListenerData.Priority = 55;
	Template.AbilityTriggers.AddItem(Trigger);
	
	Template.AbilityTargetConditions.AddItem(default.LivingHostileUnitDisallowMindControlProperty);
	TargetVisibilityCondition = new class'X2Condition_Visibility';
	TargetVisibilityCondition.bRequireGameplayVisible = true;
	TargetVisibilityCondition.bRequireBasicVisibility = true;
	TargetVisibilityCondition.bDisablePeeksOnMovement = true; //Don't use peek tiles for over watch shots	
	Template.AbilityTargetConditions.AddItem(TargetVisibilityCondition);
	Template.AbilityTargetConditions.AddItem(class'X2Ability_DefaultAbilitySet'.static.OverwatchTargetEffectsCondition());
	// Adding exclusion condition to prevent friendly bladestorm fire when panicked.
	ExcludeSquadmatesCondition = new class'X2Condition_UnitProperty';
	ExcludeSquadmatesCondition.ExcludeSquadmates = true;
	Template.AbilityTargetConditions.AddItem(ExcludeSquadmatesCondition);
		// Target Conditions
	AdjacencyCondition = new class'X2Condition_UnitProperty';
	AdjacencyCondition.RequireWithinRange = true;
	AdjacencyCondition.WithinRange = 288; //3 tiles in Unreal units
	Template.AbilityTargetConditions.AddItem(AdjacencyCondition);

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);	
	Template.AddShooterEffectExclusions();

	//Don't trigger when the source is concealed
	SourceNotConcealedCondition = new class'X2Condition_UnitProperty';
	SourceNotConcealedCondition.ExcludeConcealed = true;
	Template.AbilityShooterConditions.AddItem(SourceNotConcealedCondition);

	// Don't trigger if the unit has vanished
	UnitEffectsCondition = new class'X2Condition_UnitEffects';
	UnitEffectsCondition.AddExcludeEffect('Vanish', 'AA_UnitIsConcealed');
	UnitEffectsCondition.AddExcludeEffect('VanishingWind', 'AA_UnitIsConcealed');
	Template.AbilityShooterConditions.AddItem(UnitEffectsCondition);

	PhysicalDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	PhysicalDamageEffect.EffectDamageValue = class'X2Item_DefaultWeapons'.default.FACELESS_MELEEAOE_BASEDAMAGE;
	PhysicalDamageEffect.EffectDamageValue.DamageType = 'Melee';
	// This also deals environmental damage
	PhysicalDamageEffect.EnvironmentalDamageAmount = 5;
	Template.AddTargetEffect(PhysicalDamageEffect);

	//Prevent repeatedly hammering on a unit with Bladestorm triggers.
	//(This effect does nothing, but enables many-to-many marking of which Bladestorm attacks have already occurred each turn.)
	BladestormTargetEffect = new class'X2Effect_Persistent';
	BladestormTargetEffect.BuildPersistentEffect(1, false, true, true, eGameRule_PlayerTurnEnd);
	BladestormTargetEffect.EffectName = 'ThrashFTarget';
	BladestormTargetEffect.bApplyOnMiss = true; //Only one chance, even if you miss (prevents crazy flailing counter-attack chains with a Muton, for example)
	Template.AddTargetEffect(BladestormTargetEffect);
	
	BladestormTargetCondition = new class'X2Condition_UnitEffectsWithAbilitySource';
	BladestormTargetCondition.AddExcludeEffect('ThrashFTarget', 'AA_DuplicateEffectIgnored');
	Template.AbilityTargetConditions.AddItem(BladestormTargetCondition);

	Template.CustomFireAnim = 'NO_ScythingClawsSlash';
	Template.CustomMovingFireAnim = 'NO_ScythingClawsSlash';	

	NotItsOwnTurnCondition = new class'X2Condition_NotItsOwnTurn';
	Template.AbilityShooterConditions.AddItem(NotItsOwnTurnCondition);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = Thrash_BuildVisualization;
	Template.bShowActivation = true;

	Template.SuperConcealmentLoss = class'X2AbilityTemplateManager'.default.SuperConcealmentStandardShotLoss;
	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.NormalChosenActivationIncreasePerUse;
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.MeleeLostSpawnIncreasePerUse;

	//BEGIN AUTOGENERATED CODE: Template Overrides 'BladestormAttack'
	Template.bFrameEvenWhenUnitIsHidden = true;
	Template.DefaultSourceItemSlot = eInvSlot_Unknown;
	//END AUTOGENERATED CODE: Template Overrides 'BladestormAttack'

	return Template;
}

static function X2AbilityTemplate BakhtakTalons()
{
	local X2AbilityTemplate Template;
	local X2AbilityCost_ActionPoints ActionPointCost;
	local X2AbilityToHitCalc_StandardMelee MeleeHitCalc;
	local X2Condition_UnitProperty UnitPropertyCondition;
	local X2AbilityTarget_Cursor CursorTarget;
	local X2AbilityMultiTarget_Cone ConeMultiTarget;
	local X2Effect_ApplyWeaponDamage PhysicalDamageEffect;
	local array<name> SkipExclusions;
	local X2Effect_Stunned				    StunnedEffect;
	local X2AbilityCooldown				    Cooldown;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'BakhtakTalons');
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ammo_Talon";

	Template.Hostility = eHostility_Offensive;
	Template.AbilitySourceName = 'eAbilitySource_Standard';

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);

	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	Cooldown = new class'X2AbilityCooldown';
    Cooldown.iNumTurns = 4;
    Template.AbilityCooldown = Cooldown;

	MeleeHitCalc = new class'X2AbilityToHitCalc_StandardMelee';
	Template.AbilityToHitCalc = MeleeHitCalc;

	Template.TargetingMethod = class'X2TargetingMethod_Cone';

	CursorTarget = new class'X2AbilityTarget_Cursor';
	CursorTarget.bRestrictToWeaponRange = false;
	CursorTarget.FixedAbilityRange = default.SCYTHING_CLAWS_LENGTH_TILES * class'XComWorldData'.const.WORLD_StepSize;
	Template.AbilityTargetStyle = CursorTarget;

	ConeMultiTarget = new class'X2AbilityMultiTarget_Cone';
	ConeMultiTarget.ConeEndDiameter = default.SCYTHING_CLAWS_END_DIAMETER_TILES * class'XComWorldData'.const.WORLD_StepSize;
	ConeMultiTarget.ConeLength = default.SCYTHING_CLAWS_LENGTH_TILES * class'XComWorldData'.const.WORLD_StepSize;
	ConeMultiTarget.fTargetRadius = Sqrt( Square(ConeMultiTarget.ConeEndDiameter / 2) + Square(ConeMultiTarget.ConeLength) ) * class'XComWorldData'.const.WORLD_UNITS_TO_METERS_MULTIPLIER;
	ConeMultiTarget.bExcludeSelfAsTargetIfWithinRadius = true;
	ConeMultiTarget.AddBonusConeSize('PABungeeSlime', default.PABUNGEESLIME_CONEEND_DIAMETER_MODIFIER, default.PABUNGEESLIME_CONELENGTH_MODIFIER);
	Template.AbilityMultiTargetStyle = ConeMultiTarget;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	
	Template.AddShooterEffectExclusions(SkipExclusions);

	// Primary Target
	Template.AbilityTargetConditions.AddItem(default.GameplayVisibilityCondition);

	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeDead = true;
	UnitPropertyCondition.ExcludeFriendlyToSource = true;
	UnitPropertyCondition.ExcludeCosmetic = true;
	Template.AbilityTargetConditions.AddItem(UnitPropertyCondition);

	PhysicalDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	PhysicalDamageEffect.EffectDamageValue = class'X2Item_DefaultWeapons'.default.FACELESS_MELEEAOE_BASEDAMAGE;
	PhysicalDamageEffect.EffectDamageValue.DamageType = 'Melee';
	PhysicalDamageEffect.EnvironmentalDamageAmount = 5;
	Template.AddTargetEffect(PhysicalDamageEffect);

	StunnedEffect = class'X2StatusEffects'.static.CreateStunnedStatusEffect(2, 100);
	StunnedEffect.bRemoveWhenSourceDies = false;
	Template.AddTargetEffect(StunnedEffect);

	// Multi Targets
	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeDead = true;
	UnitPropertyCondition.ExcludeFriendlyToSource = false;
	UnitPropertyCondition.RequireWithinRange = true;
	Template.AbilityMultiTargetConditions.AddItem(UnitPropertyCondition);	

	Template.AddMultiTargetEffect(PhysicalDamageEffect);
	Template.AddMultiTargetEffect(StunnedEffect);

	Template.CustomFireAnim = 'NO_ScythingClawsSlash';
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.CinescriptCameraType = "Faceless_ScythingClaws";
//BEGIN AUTOGENERATED CODE: Template Overrides 'ScythingClaws'
	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'ScythingClaws'
	
	return Template;
}

static function X2AbilityTemplate PAHaze()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger_EventListener	Trigger;
	local X2AbilityMultiTarget_Radius		RadiusMultiTarget;
	local X2Effect_ApplySmokeGrenadeToWorld WeaponEffect;
	local X2Condition_UnitProperty ShooterCondition;
	local X2AbilityCooldown     Cooldown;
	local X2AbilityCost_ActionPoints ActionPointCost;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PAHaze');
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Grenade_Smoke";

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = true;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityToHitCalc = default.DeadEye;

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = 5;
	Template.AbilityCooldown = Cooldown;

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = false;
	Template.AbilityCosts.AddItem(ActionPointCost);

	Template.bSkipFireAction = true;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.AddShooterEffectExclusions();

	RadiusMultiTarget = new class'X2AbilityMultiTarget_Radius';
	RadiusMultiTarget.bUseWeaponRadius = false;
	RadiusMultiTarget.bUseSourceWeaponLocation = false;
	RadiusMultiTarget.fTargetRadius = default.PAHAZE_RADIUS; // meters
	Template.AbilityMultiTargetStyle = RadiusMultiTarget;

	WeaponEffect = new class'X2Effect_ApplySmokeGrenadeToWorld';
	Template.AddTargetEffect (WeaponEffect);

	// Fix for issue #233. Need to add a single target effect as well because for some
	// reason the multi target effect for this does not update to give the smoke cover
	// on the tile the soldier is on even though smoke is actually created there.
	Template.AddTargetEffect(class'X2Item_DefaultGrenades'.static.SmokeGrenadeEffect());

	Template.AddMultiTargetEffect(class'X2Item_DefaultGrenades'.static.SmokeGrenadeEffect());

	Template.CustomFireAnim = 'HL_SignalPointA';
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;

	return Template;
}

static function X2AbilityTemplate PAJackTheRipper()
{

	local X2AbilityTemplate										Template;

	Template = PurePassive('PAJackTheRipper', "img:///UILibrary_MZChimeraIcons.Ability_Scythe",, 'eAbilitySource_Perk');

	return Template;
}

// The below is functionally identical to the standard Faceless Scything Claws, but we're duplicating it to make it easier to modify, i.e. adding Bungee Slime's cone size bonus.
static function X2AbilityTemplate CreatePAScythingClawsAbility()
{
	local X2AbilityTemplate Template;
	local X2AbilityCost_ActionPoints ActionPointCost;
	local X2AbilityToHitCalc_StandardMelee MeleeHitCalc;
	local X2Condition_UnitProperty UnitPropertyCondition;
	local X2AbilityTarget_Cursor CursorTarget;
	local X2AbilityMultiTarget_Cone ConeMultiTarget;
	local X2Effect_ApplyWeaponDamage PhysicalDamageEffect;
	local array<name> SkipExclusions;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PAScythingClaws');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_chryssalid_chargeandslash";

	Template.Hostility = eHostility_Offensive;
	Template.AbilitySourceName = 'eAbilitySource_Standard';

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);

	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	MeleeHitCalc = new class'X2AbilityToHitCalc_StandardMelee';
	Template.AbilityToHitCalc = MeleeHitCalc;

	Template.TargetingMethod = class'X2TargetingMethod_Cone';

	CursorTarget = new class'X2AbilityTarget_Cursor';
	CursorTarget.bRestrictToWeaponRange = false;
	CursorTarget.FixedAbilityRange = default.SCYTHING_CLAWS_LENGTH_TILES * class'XComWorldData'.const.WORLD_StepSize;
	Template.AbilityTargetStyle = CursorTarget;

	ConeMultiTarget = new class'X2AbilityMultiTarget_Cone';
	ConeMultiTarget.ConeEndDiameter = default.SCYTHING_CLAWS_END_DIAMETER_TILES * class'XComWorldData'.const.WORLD_StepSize;
	ConeMultiTarget.ConeLength = default.SCYTHING_CLAWS_LENGTH_TILES * class'XComWorldData'.const.WORLD_StepSize;
	ConeMultiTarget.fTargetRadius = Sqrt( Square(ConeMultiTarget.ConeEndDiameter / 2) + Square(ConeMultiTarget.ConeLength) ) * class'XComWorldData'.const.WORLD_UNITS_TO_METERS_MULTIPLIER;
	ConeMultiTarget.bExcludeSelfAsTargetIfWithinRadius = true;
	ConeMultiTarget.AddBonusConeSize('PABungeeSlime', default.PABUNGEESLIME_CONEEND_DIAMETER_MODIFIER, default.PABUNGEESLIME_CONELENGTH_MODIFIER);
	Template.AbilityMultiTargetStyle = ConeMultiTarget;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	
	// May attack if the unit is burning or disoriented
	SkipExclusions.AddItem(class'X2AbilityTemplateManager'.default.DisorientedName);
	SkipExclusions.AddItem(class'X2StatusEffects'.default.BurningName);
	Template.AddShooterEffectExclusions(SkipExclusions);

	// Primary Target
	Template.AbilityTargetConditions.AddItem(default.GameplayVisibilityCondition);

	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeDead = true;
	UnitPropertyCondition.ExcludeFriendlyToSource = true;
	UnitPropertyCondition.ExcludeCosmetic = true;
	Template.AbilityTargetConditions.AddItem(UnitPropertyCondition);

	PhysicalDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	PhysicalDamageEffect.EffectDamageValue = class'X2Item_DefaultWeapons'.default.FACELESS_MELEEAOE_BASEDAMAGE;
	PhysicalDamageEffect.EffectDamageValue.DamageType = 'Melee';
	PhysicalDamageEffect.EnvironmentalDamageAmount = 5;
	Template.AddTargetEffect(PhysicalDamageEffect);

	// Multi Targets
	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeDead = true;
	UnitPropertyCondition.ExcludeFriendlyToSource = false;
	UnitPropertyCondition.RequireWithinRange = true;
	Template.AbilityMultiTargetConditions.AddItem(UnitPropertyCondition);	

	Template.AddMultiTargetEffect(PhysicalDamageEffect);

	Template.CustomFireAnim = 'NO_ScythingClawsSlash';
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.CinescriptCameraType = "Faceless_ScythingClaws";
//BEGIN AUTOGENERATED CODE: Template Overrides 'ScythingClaws'
	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'ScythingClaws'
	
	return Template;
}

static function X2AbilityTemplate PARippingSlash()
{
	local X2AbilityTemplate Template;
	local X2AbilityCost_ActionPoints ActionPointCost;
	local X2AbilityToHitCalc_StandardMelee MeleeHitCalc;
	local X2Condition_UnitProperty UnitPropertyCondition;
	local X2AbilityTarget_Cursor CursorTarget;
	local X2AbilityMultiTarget_Cone ConeMultiTarget;
	local X2Effect_ApplyWeaponDamage PhysicalDamageEffect;
	local array<name> SkipExclusions;
	local X2AbilityCooldown				    Cooldown;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PARippingSlash');
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ammo_AP";

	Template.Hostility = eHostility_Offensive;
	Template.AbilitySourceName = 'eAbilitySource_Standard';

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);

	Cooldown = new class'X2AbilityCooldown';
    Cooldown.iNumTurns = 5;
    Template.AbilityCooldown = Cooldown;

	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	MeleeHitCalc = new class'X2AbilityToHitCalc_StandardMelee';
	Template.AbilityToHitCalc = MeleeHitCalc;

	Template.TargetingMethod = class'X2TargetingMethod_Cone';

	CursorTarget = new class'X2AbilityTarget_Cursor';
	CursorTarget.bRestrictToWeaponRange = false;
	CursorTarget.FixedAbilityRange = default.SCYTHING_CLAWS_LENGTH_TILES * class'XComWorldData'.const.WORLD_StepSize;
	Template.AbilityTargetStyle = CursorTarget;

	ConeMultiTarget = new class'X2AbilityMultiTarget_Cone';
	ConeMultiTarget.ConeEndDiameter = default.SCYTHING_CLAWS_END_DIAMETER_TILES * class'XComWorldData'.const.WORLD_StepSize;
	ConeMultiTarget.ConeLength = default.SCYTHING_CLAWS_LENGTH_TILES * class'XComWorldData'.const.WORLD_StepSize;
	ConeMultiTarget.fTargetRadius = Sqrt( Square(ConeMultiTarget.ConeEndDiameter / 2) + Square(ConeMultiTarget.ConeLength) ) * class'XComWorldData'.const.WORLD_UNITS_TO_METERS_MULTIPLIER;
	ConeMultiTarget.bExcludeSelfAsTargetIfWithinRadius = true;
	ConeMultiTarget.AddBonusConeSize('PABungeeSlime', default.PABUNGEESLIME_CONEEND_DIAMETER_MODIFIER, default.PABUNGEESLIME_CONELENGTH_MODIFIER);
	Template.AbilityMultiTargetStyle = ConeMultiTarget;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	
	// May attack if the unit is burning or disoriented
	SkipExclusions.AddItem(class'X2AbilityTemplateManager'.default.DisorientedName);
	SkipExclusions.AddItem(class'X2StatusEffects'.default.BurningName);
	Template.AddShooterEffectExclusions(SkipExclusions);

	// Primary Target
	Template.AbilityTargetConditions.AddItem(default.GameplayVisibilityCondition);

	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeDead = true;
	UnitPropertyCondition.ExcludeFriendlyToSource = true;
	UnitPropertyCondition.ExcludeCosmetic = true;
	Template.AbilityTargetConditions.AddItem(UnitPropertyCondition);

	PhysicalDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	PhysicalDamageEffect.EffectDamageValue = default.Faceless_RippingSlash_BaseDamage;
	PhysicalDamageEffect.EffectDamageValue.DamageType = 'Melee';
	PhysicalDamageEffect.EnvironmentalDamageAmount = 5;
	Template.AddTargetEffect(PhysicalDamageEffect);

	// Multi Targets
	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeDead = true;
	UnitPropertyCondition.ExcludeFriendlyToSource = false;
	UnitPropertyCondition.RequireWithinRange = true;
	Template.AbilityMultiTargetConditions.AddItem(UnitPropertyCondition);	

	Template.AddMultiTargetEffect(PhysicalDamageEffect);

	Template.CustomFireAnim = 'NO_ScythingClawsSlash';
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.CinescriptCameraType = "Faceless_ScythingClaws";
//BEGIN AUTOGENERATED CODE: Template Overrides 'ScythingClaws'
	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'ScythingClaws'
	
	return Template;
}

static function X2AbilityTemplate CreateGetOverHereAllyAbility()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2Condition_UnitProperty          UnitPropertyCondition;
	local X2Condition_UnitProperty			FriendCondition;
	local X2Condition_UnitProperty			SquadmateCondition;
	local X2Condition_UnitEffects           UnitEffectsCondition;
	local X2AbilityTrigger_PlayerInput      InputTrigger;
	local X2Condition_Visibility            TargetVisibilityCondition;
	local X2Condition_IsTooHeavyForPull		IsTooHeavyForPullCondition;
	local X2Condition_UnblockedNeighborTile UnblockedNeighborTileCondition;
	local X2AbilityTarget_Single            SingleTarget;
	local X2AbilityToHitCalc_StandardAim    ToHitCalc;
	local X2Effect_GetOverHere              FriendGetOverHereEffect;
	local X2Effect_PullAlly					PullAllyEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'GetOverHereAlly');
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ability_TonguePull";
	
	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.Hostility = eHostility_Neutral;

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = false;
	Template.AbilityCosts.AddItem(ActionPointCost);

	// Source cannot be dead
	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeDead = true;
	Template.AbilityShooterConditions.AddItem(UnitPropertyCondition);
	Template.AddShooterEffectExclusions();

	// There must be a free tile around the source unit
	UnblockedNeighborTileCondition = new class'X2Condition_UnblockedNeighborTile';
	Template.AbilityShooterConditions.AddItem(UnblockedNeighborTileCondition);

	// The Target must be alive and a humanoid
	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeDead = true;
	UnitPropertyCondition.ExcludeRobotic = true;
	UnitPropertyCondition.ExcludeAlien = true;
	UnitPropertyCondition.ExcludeFriendlyToSource = false;
	UnitPropertyCondition.ExcludeHostileToSource = true;
	UnitPropertyCondition.RequireWithinMinRange = true;
	UnitPropertyCondition.WithinMinRange = default.GET_OVER_HERE_ALLY_MIN_RANGE;
	UnitPropertyCondition.RequireWithinRange = true;
	UnitPropertyCondition.WithinRange = default.GET_OVER_HERE_ALLY_MAX_RANGE;
	Template.AbilityTargetConditions.AddItem(UnitPropertyCondition);

	// This Target cannot already be bound
	UnitEffectsCondition = new class'X2Condition_UnitEffects';
	UnitEffectsCondition.AddExcludeEffect(class'X2AbilityTemplateManager'.default.BoundName, 'AA_UnitIsBound');
	UnitEffectsCondition.AddExcludeEffect(class'X2Ability_CarryUnit'.default.CarryUnitEffectName, 'AA_CarryingUnit');
	UnitEffectsCondition.AddExcludeEffect(class'X2Effect_PersistentVoidConduit'.default.EffectName, 'AA_UnitIsBound');
	Template.AbilityTargetConditions.AddItem(UnitEffectsCondition);

	//;AbilityAvailabilityCodes="AA_UnitIsTooLarge"
//AbilityAvailabilityStrings[96]="Unit is Too Large"

	// Target must be visible
	TargetVisibilityCondition = new class'X2Condition_Visibility';
	TargetVisibilityCondition.bRequireGameplayVisible = true;
	Template.AbilityTargetConditions.AddItem(TargetVisibilityCondition);

	IsTooHeavyForPullCondition = new class'X2Condition_IsTooHeavyForPull';
	Template.AbilityTargetConditions.AddItem(IsTooHeavyForPullCondition);

	SingleTarget = new class'X2AbilityTarget_Single';
	Template.AbilityTargetStyle = SingleTarget;

	InputTrigger = new class'X2AbilityTrigger_PlayerInput';
	Template.AbilityTriggers.AddItem(InputTrigger);

	// This is a guaranteed hit since it only targets allies, just like Torque's ability in Chimera Squad
	ToHitCalc = new class'X2AbilityToHitCalc_StandardAim';
	ToHitCalc.bGuaranteedHit = true;
	ToHitCalc.bAllowCrit = false;
	Template.AbilityToHitCalc = ToHitCalc;

	FriendCondition = new class'X2Condition_UnitProperty';
	FriendCondition.ExcludeFriendlyToSource = false;
	FriendCondition.ExcludeHostileToSource = true;

	FriendGetOverHereEffect = new class'X2Effect_GetOverHere';
	FriendGetOverHereEffect.TargetConditions.AddItem(FriendCondition);
	Template.AddTargetEffect(FriendGetOverHereEffect);

	PullAllyEffect = new class 'X2Effect_PullAlly';
	PullAllyEffect.RequireVisibleTile = false;
	Template.AddTargetEffect(PullAllyEffect);

	SquadmateCondition = new class'X2Condition_UnitProperty';
	SquadmateCondition.ExcludeHostileToSource = true;
	SquadmateCondition.ExcludeFriendlyToSource = false;
	SquadmateCondition.RequireSquadmates = true;
	SquadmateCondition.ExcludeDead = false; 

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TonguePull_BuildVisualization;

	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;

	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.MeleeLostSpawnIncreasePerUse;
	Template.bFrameEvenWhenUnitIsHidden = true;

	return Template;
}

static simulated function TonguePull_BuildVisualization(XComGameState VisualizeGameState)
{
	local XComGameStateHistory			History;
	local XComGameStateContext_Ability  Context;
	local X2AbilityTemplate             AbilityTemplate, BindAbilityTemplate;
	local StateObjectReference          InteractingUnitRef;
	local X2Action_ViperGetOverHere		GetOverHereAction;
	local X2Action_PlaySoundAndFlyOver	SoundAndFlyover;
	local X2VisualizerInterface			Visualizer;
	local XComGameState_Unit            TargetUnit;

	local VisualizationActionMetadata        EmptyTrack;
	local VisualizationActionMetadata        ActionMetadata;
	local VisualizationActionMetadata        SourceMetadata;

	local int							EffectIndex;

	//Support for finding and visualizing a bind attack that is part of the grab attack
	local int							SearchHistoryIndex;
	local XComGameState					ApplyBindState;
	local XComGameStateContext_Ability	BindAbilityContext;
	local bool							bGrabWasHit;
	local bool							bBindWasHit;
	local bool                          bDoBindVisuals;
	local X2Action_ExitCover			ExitCoverAction;

	History = `XCOMHISTORY;

	Context = XComGameStateContext_Ability(VisualizeGameState.GetContext());
	AbilityTemplate = class'XComGameState_Ability'.static.GetMyTemplateManager().FindAbilityTemplate(Context.InputContext.AbilityTemplateName);

	bGrabWasHit = class'XComGameStateContext_Ability'.static.IsHitResultHit(Context.ResultContext.HitResult);
	
	//If we hit the target, then there should be a game state where we apply our free bind attack to the target. Collect visualization track actions
	//for this bind attack so we can sequence them into the grab + pull visualization
	bBindWasHit = false;
	bDoBindVisuals = false;
	if( bGrabWasHit )
	{	
		//Search forward in the history for the bind that we are going to apply to the target
		for( SearchHistoryIndex = VisualizeGameState.HistoryIndex + 1; SearchHistoryIndex < History.GetNumGameStates(); ++SearchHistoryIndex )
		{
			ApplyBindState = History.GetGameStateFromHistory(SearchHistoryIndex);
			BindAbilityContext = XComGameStateContext_Ability(ApplyBindState.GetContext());
			bBindWasHit = BindAbilityContext != none &&
						  class'XComGameStateContext_Ability'.static.IsHitResultHit(BindAbilityContext.ResultContext.HitResult) &&
						  default.BIND_ABILITY_ALIASES.Find(BindAbilityContext.InputContext.AbilityTemplateName) != INDEX_NONE &&
						  BindAbilityContext.InputContext.SourceObject.ObjectID == Context.InputContext.SourceObject.ObjectID;
				
			if( bBindWasHit )
			{
				bDoBindVisuals = BindAbilityContext.InterruptionStatus == eInterruptionStatus_None;
				BindAbilityTemplate = class'XComGameState_Ability'.static.GetMyTemplateManager().FindAbilityTemplate(BindAbilityContext.InputContext.AbilityTemplateName);
				break;
			}
		}
	}

	//Configure the visualization track for the shooter
	//****************************************************************************************
	InteractingUnitRef = Context.InputContext.SourceObject;
	SourceMetadata = EmptyTrack;
	SourceMetadata.StateObject_OldState = History.GetGameStateForObjectID(InteractingUnitRef.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	SourceMetadata.StateObject_NewState = VisualizeGameState.GetGameStateForObjectID(InteractingUnitRef.ObjectID);
	SourceMetadata.VisualizeActor = History.GetVisualizer(InteractingUnitRef.ObjectID);

	ExitCoverAction = X2Action_ExitCover(class'X2Action_ExitCover'.static.AddToVisualizationTree(SourceMetadata, Context, false, SourceMetadata.LastActionAdded));
	ExitCoverAction.bUsePreviousGameState = true;
	GetOverHereAction = X2Action_ViperGetOverHere(class'X2Action_ViperGetOverHere'.static.AddToVisualizationTree(SourceMetadata, Context, false, SourceMetadata.LastActionAdded));
	GetOverHereAction.SetFireParameters(Context.IsResultContextHit());

	Visualizer = X2VisualizerInterface(SourceMetadata.VisualizeActor);
	if(Visualizer != none)
	{
		Visualizer.BuildAbilityEffectsVisualization(VisualizeGameState, SourceMetadata);
	}

	//Don't perform an enter cover if we hit with bind, we need to stay in the bind position
	if(!bBindWasHit)
	{
		class'X2Action_EnterCover'.static.AddToVisualizationTree(SourceMetadata, Context, false, SourceMetadata.LastActionAdded);
	}

		//****************************************************************************************

	//Configure the visualization track for the target
	//****************************************************************************************
	InteractingUnitRef = Context.InputContext.PrimaryTarget;
	ActionMetadata = EmptyTrack;
	ActionMetadata.StateObject_OldState = History.GetGameStateForObjectID(InteractingUnitRef.ObjectID, eReturnType_Reference, VisualizeGameState.HistoryIndex - 1);
	ActionMetadata.StateObject_NewState = VisualizeGameState.GetGameStateForObjectID(InteractingUnitRef.ObjectID);
	ActionMetadata.VisualizeActor = History.GetVisualizer(InteractingUnitRef.ObjectID);

	TargetUnit = XComGameState_Unit(ActionMetadata.StateObject_OldState);
	if( (TargetUnit != none) && (TargetUnit.IsUnitApplyingEffectName('Suppression')))
	{
		class'X2Action_StopSuppression'.static.AddToVisualizationTree(ActionMetadata, Context, false, ActionMetadata.LastActionAdded);
	}

	for (EffectIndex = 0; EffectIndex < AbilityTemplate.AbilityTargetEffects.Length; ++EffectIndex)
	{
		AbilityTemplate.AbilityTargetEffects[EffectIndex].AddX2ActionsForVisualization(VisualizeGameState, ActionMetadata, Context.FindTargetEffectApplyResult(AbilityTemplate.AbilityTargetEffects[EffectIndex]));
	}

	if (Context.IsResultContextMiss() && AbilityTemplate.LocMissMessage != "")
	{
		SoundAndFlyOver = X2Action_PlaySoundAndFlyOver(class'X2Action_PlaySoundAndFlyover'.static.AddToVisualizationTree(ActionMetadata, Context, false, ActionMetadata.LastActionAdded));
		SoundAndFlyOver.SetSoundAndFlyOverParameters(None, AbilityTemplate.LocMissMessage, '', eColor_Bad);
	}

	//Add any actions that we get from our free bind attack if we hit and the Bind was not interrupted
	if (bDoBindVisuals)
	{
		SourceMetadata.LastActionAdded = ActionMetadata.LastActionAdded;
		class'X2Ability_Viper'.static.BindSourceAnimationVisualization(SourceMetadata, BindAbilityContext);
		ActionMetadata.LastActionAdded = SourceMetadata.LastActionAdded;
		class'X2Ability_Viper'.static.BindTargetAnimationVisualization(ActionMetadata, BindAbilityContext);
		class'X2Ability_Viper'.static.BindEnvironmentDamageVisualization(Context, BindAbilityContext, BindAbilityTemplate);
	}
}

static function X2AbilityTemplate PA_RussianRoulette()
{
	local X2AbilityTemplate             Template;
	local X2Effect_RussianRoulette	    PersistentEffect;
	local X2Effect_Persistent						RussianRouletteTargetEffect;
	local X2Condition_UnitEffectsWithAbilitySource	RussianRouletteTargetCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_RussianRoulette');

	Template.IconImage = "img:///KetarosPkg_Abilities.UIPerk_bullets3";
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bIsPassive = true;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	PersistentEffect = new class'X2Effect_RussianRoulette';
	PersistentEffect.BuildPersistentEffect(1, true, false);
	PersistentEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, true,, Template.AbilitySourceName);
	Template.AddTargetEffect(PersistentEffect);

	RussianRouletteTargetEffect = new class'X2Effect_Persistent';
	RussianRouletteTargetEffect.BuildPersistentEffect(1, false, true, true, eGameRule_PlayerTurnEnd);
	RussianRouletteTargetEffect.EffectName = 'RussianRouletteTarget';
	RussianRouletteTargetEffect.bApplyOnMiss = true; //Only one chance, even if you miss (prevents making multiple attempts on one target)
	Template.AddTargetEffect(RussianRouletteTargetEffect);
	
	RussianRouletteTargetCondition = new class'X2Condition_UnitEffectsWithAbilitySource';
	RussianRouletteTargetCondition.AddExcludeEffect('RussianRouletteTarget', 'AA_DuplicateEffectIgnored');
	Template.AbilityTargetConditions.AddItem(RussianRouletteTargetCondition);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	// Note: no visualization on purpose!

	Template.bCrossClassEligible = false;

	return Template;
}

static function X2AbilityTemplate PAHarrierLauncherRestoration()
{
	local X2Effect_PADangerZone Effect;

	Effect = new class'X2Effect_PADangerZone';
	Effect.BonusAbilityName = 'Restoration';
	Effect.AbilityNames = default.PAHarrierLauncherRestorationAbilityName;
	Effect.BonusRadius = default.PAHarrierLauncherRestorationAbilityBonusRadius;

	return Passive('PAHarrierLauncherLimiter', "img:///KetarosPkg_Abilities.UIPerk_fix", false, Effect);
}

static function X2AbilityTemplate PAHarrierLauncherIntensifier()
{
	local X2Effect_PADangerZone Effect;

	Effect = new class'X2Effect_PADangerZone';
	Effect.BonusAbilityName = 'Intensifier';
	Effect.AbilityNames = default.PAHarrierLauncherIntensifierAbilityName;
	Effect.BonusRadius = default.PAHarrierLauncherIntensifierAbilityBonusRadius;

	return Passive('PAHarrierLauncherIntensifier', "img:///KetarosPkg_Abilities.UIPerk_kaboom", false, Effect);
}

static function X2DataTemplate CreatePAHarrierGrenadeAbility()
{
	local X2AbilityTemplate                         Template;
	local X2AbilityCost_Ammo                        AmmoCost;
	local X2AbilityCost_ActionPoints                ActionPointCost;
	local X2Effect_ApplyWeaponDamage                WeaponEffect;
	local X2AbilityMultiTarget_Radius               RadiusMultiTarget;
	local X2AbilityCooldown_LocalAndGlobal          Cooldown;
	local X2AbilityToHitCalc_StandardAim            StandardAim;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PAHarrierGrenade');
	Template.IconImage = "img:///KetarosPkg_Abilities.UIPerk_tripleshot";
	// This action is considered 'hostile' and can be interrupted!
	Template.DisplayTargetHitChance = true;
	Template.Hostility = eHostility_Offensive;

	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_AlwaysShow;
	Template.bUseAmmoAsChargesForHUD = false;

	// Targeting Details
	Template.AbilityTargetConditions.AddItem(default.GameplayVisibilityCondition);
	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityTargetStyle = default.SimpleSingleTarget;


	Template.TargetingMethod = class'X2TargetingMethod_OverTheShoulder';
	Template.bUsesFiringCamera = true;
	Template.CinescriptCameraType = "StandardGunFiring";
 
	// Cooldown on the ability
	Cooldown = new class'X2AbilityCooldown_LocalAndGlobal';
	Cooldown.iNumTurns = 0;
	Cooldown.NumGlobalTurns = 0;
	Template.AbilityCooldown = Cooldown;

	AmmoCost = new class'X2AbilityCost_Ammo';	
	AmmoCost.iAmmo = 1;
	Template.AbilityCosts.AddItem(AmmoCost);

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);
	
	StandardAim = new class'X2AbilityToHitCalc_StandardAim';
	StandardAim.bIgnoreCoverBonus = true;
	Template.AbilityToHitCalc = StandardAim;
	Template.AbilityToHitOwnerOnMissCalc = default.SimpleStandardAim;
	

	RadiusMultiTarget = new class'X2AbilityMultiTarget_Radius';
	RadiusMultiTarget.fTargetRadius = default.PA_HARRIER_GRENADE_DAMAGE_RADIUS;
	Template.AbilityMultiTargetStyle = RadiusMultiTarget;

	WeaponEffect = new class'X2Effect_ApplyWeaponDamage';
	WeaponEffect.bExplosiveDamage = true;
	Template.AddMultiTargetEffect(WeaponEffect);
	Template.AddTargetEffect(WeaponEffect);

	//Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AddShooterEffectExclusions();

	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	//Template.CinescriptCameraType = "MEC_MicroMissiles";

	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.GrenadeLostSpawnIncreasePerUse;
//BEGIN AUTOGENERATED CODE: Template Overrides 'MicroMissiles'
	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'MicroMissiles'

	return Template;
}

static function X2DataTemplate CreatePAHarrierPoisonGrenadeAbility()
{
	local X2AbilityTemplate                         Template;
	local X2AbilityCost_Ammo                        AmmoCost;
	local X2AbilityCost_ActionPoints                ActionPointCost;
	local X2Effect_ApplyWeaponDamage                WeaponEffect;
	local X2AbilityMultiTarget_Radius               RadiusMultiTarget;
	local X2AbilityCooldown							Cooldown;
	local X2AbilityToHitCalc_StandardAim            StandardAim;
	local X2Effect_ApplyPoisonToWorld               PoisonToWorldEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PAHarrierPoisonGrenade');
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Grenade_Gas";
	// This action is considered 'hostile' and can be interrupted!
	Template.DisplayTargetHitChance = true;
	Template.Hostility = eHostility_Offensive;

	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_AlwaysShow;
	Template.bUseAmmoAsChargesForHUD = false;

	// Targeting Details
	Template.AbilityTargetConditions.AddItem(default.GameplayVisibilityCondition);
	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityTargetStyle = default.SimpleSingleTarget;


	Template.TargetingMethod = class'X2TargetingMethod_OverTheShoulder';
	Template.bUsesFiringCamera = true;
	Template.CinescriptCameraType = "StandardGunFiring";
 
	// Cooldown on the ability
	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.HARRIERPOISONGRENADE_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	AmmoCost = new class'X2AbilityCost_Ammo';	
	AmmoCost.iAmmo = 1;
	Template.AbilityCosts.AddItem(AmmoCost);

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);
	
	StandardAim = new class'X2AbilityToHitCalc_StandardAim';
	StandardAim.bIgnoreCoverBonus = true;
	Template.AbilityToHitCalc = StandardAim;
	Template.AbilityToHitOwnerOnMissCalc = default.SimpleStandardAim;
	
	PoisonToWorldEffect = new class'X2Effect_ApplyPoisonToWorld';
	PoisonToWorldEffect.Duration = 2;
	Template.AddMultiTargetEffect(PoisonToWorldEffect);

	Template.AddMultiTargetEffect(class'X2StatusEffects'.static.CreatePoisonedStatusEffect());
	Template.AddTargetEffect(class'X2StatusEffects'.static.CreatePoisonedStatusEffect());

	RadiusMultiTarget = new class'X2AbilityMultiTarget_Radius';
	RadiusMultiTarget.fTargetRadius = default.HARRIERPOISONGRENADE_RADIUS;
	Template.AbilityMultiTargetStyle = RadiusMultiTarget;

	WeaponEffect = new class'X2Effect_ApplyWeaponDamage';
	Template.AddMultiTargetEffect(WeaponEffect);
	Template.AddTargetEffect(WeaponEffect);

	//Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AddShooterEffectExclusions();

	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	//Template.CinescriptCameraType = "MEC_MicroMissiles";

	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.GrenadeLostSpawnIncreasePerUse;
//BEGIN AUTOGENERATED CODE: Template Overrides 'MicroMissiles'
	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'MicroMissiles'

	return Template;
}

static function X2DataTemplate CreatePAHarrierFireGrenadeAbility()
{
	local X2AbilityTemplate                         Template;
	local X2AbilityCost_Ammo                        AmmoCost;
	local X2AbilityCost_ActionPoints                ActionPointCost;
	local X2Effect_ApplyWeaponDamage                WeaponEffect;
	local X2AbilityMultiTarget_Radius               RadiusMultiTarget;
	local X2AbilityCooldown							Cooldown;
	local X2AbilityToHitCalc_StandardAim            StandardAim;
	local X2Effect_ApplyFireToWorld                 FireToWorldEffect;
	local X2Effect_Burning                          BurningEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PAHarrierFireGrenade');
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Grenade_Fire";
	// This action is considered 'hostile' and can be interrupted!
	Template.DisplayTargetHitChance = true;
	Template.Hostility = eHostility_Offensive;

	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_AlwaysShow;
	Template.bUseAmmoAsChargesForHUD = false;

	// Targeting Details
	Template.AbilityTargetConditions.AddItem(default.GameplayVisibilityCondition);
	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityTargetStyle = default.SimpleSingleTarget;


	Template.TargetingMethod = class'X2TargetingMethod_OverTheShoulder';
	Template.bUsesFiringCamera = true;
	Template.CinescriptCameraType = "StandardGunFiring";
 
	// Cooldown on the ability
	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.HARRIERFIREGRENADE_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	AmmoCost = new class'X2AbilityCost_Ammo';	
	AmmoCost.iAmmo = 1;
	Template.AbilityCosts.AddItem(AmmoCost);

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);
	
	StandardAim = new class'X2AbilityToHitCalc_StandardAim';
	StandardAim.bIgnoreCoverBonus = true;
	Template.AbilityToHitCalc = StandardAim;
	Template.AbilityToHitOwnerOnMissCalc = default.SimpleStandardAim;
	
	FireToWorldEffect = new class'X2Effect_ApplyFireToWorld';
	FireToWorldEffect.bUseFireChanceLevel = true;
	FireToWorldEffect.FireChance_Level1 = 0;
	FireToWorldEffect.FireChance_Level2 = 0.2;
	FireToWorldEffect.FireChance_Level3 = 0.1;
	FireToWorldEffect.bCheckForLOSFromTargetLocation = true; //false; The flamethrower does its own LOS filtering
	Template.AddMultiTargetEffect(FireToWorldEffect);

	BurningEffect = class'X2StatusEffects'.static.CreateBurningStatusEffect(default.HARRIERFIREGRENADE_DMG_PER_TICK, default.HARRIERFIREGRENADE_SPREAD_PER_TICK);
	Template.AddMultiTargetEffect(BurningEffect);
	Template.AddTargetEffect(BurningEffect);

	RadiusMultiTarget = new class'X2AbilityMultiTarget_Radius';
	RadiusMultiTarget.fTargetRadius = default.HARRIERFIREGRENADE_RADIUS;
	Template.AbilityMultiTargetStyle = RadiusMultiTarget;

	WeaponEffect = new class'X2Effect_ApplyWeaponDamage';
	Template.AddMultiTargetEffect(WeaponEffect);
	Template.AddTargetEffect(WeaponEffect);

	//Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AddShooterEffectExclusions();

	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	//Template.CinescriptCameraType = "MEC_MicroMissiles";

	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.GrenadeLostSpawnIncreasePerUse;
//BEGIN AUTOGENERATED CODE: Template Overrides 'MicroMissiles'
	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'MicroMissiles'

	return Template;
}

static function X2AbilityTemplate PAEndOfGeneva()

{
	local X2AbilityTemplate										Template;

	Template = PurePassive('PAEndOfGeneva', "img:///KetarosPkg_Abilities.UIPerk_punisher",, 'eAbilitySource_Perk');
	Template.AdditionalAbilities.AddItem('Salvo');

	return Template;
}

static function X2AbilityTemplate PAFeint()
{
	local X2AbilityTemplate                 Template;
	local X2Condition_PrimaryWeapon   AmmoCondition;
	local XMBCondition_AbilityName   NameCondition;
    local X2Effect_AddOverwatchActionPoints   Effect;
    local X2Condition_UnitValue ValueCondition;
    local X2Effect_IncrementUnitValue IncrementEffect;
	
    // Effect granting an overwatch shot
	Effect = new class'X2Effect_AddOverwatchActionPoints';
    
	Template = SelfTargetTrigger('PAFeint', "img:///KetarosPkg_Abilities.UIPerk_doublebullets", true, Effect, 'AbilityActivated');
    Template.bShowActivation = true;

	// Only when Flush is used
	NameCondition = new class'XMBCondition_AbilityName';
	NameCondition.IncludeAbilityNames.AddItem('Flush');
	AddTriggerTargetCondition(Template, NameCondition);

    // Require that the user has ammo left
	AmmoCondition = new class'X2Condition_PrimaryWeapon';
	AmmoCondition.AddAmmoCheck(0, eCheck_GreaterThan);
	AddTriggerTargetCondition(Template, AmmoCondition);
    
	// Limit activations
	ValueCondition = new class'X2Condition_UnitValue';
	ValueCondition.AddCheckValue('PAFeint_Activations', 1, eCheck_LessThan);
	Template.AbilityTargetConditions.AddItem(ValueCondition);

    // Create an effect that will increment the unit value
	IncrementEffect = new class'X2Effect_IncrementUnitValue';
	IncrementEffect.UnitName = 'PAFeint_Activations';
	IncrementEffect.NewValueToSet = 1; // This means increment by one -- stupid property name
	IncrementEffect.CleanupType = eCleanup_BeginTurn;
    Template.AddTargetEffect(IncrementEffect);
	
	// Trigger abilities don't appear as passives. Add a passive ability icon.
	AddIconPassive(Template);

	// If this ability is set up as a cross class ability, but it's not directly assigned to any classes, this is the weapon slot it will use
	Template.DefaultSourceItemSlot = eInvSlot_PrimaryWeapon;

    return Template;
}

static function X2AbilityTemplate PACountingOnYou()

{
	local X2AbilityTemplate										Template;

	Template = PurePassive('PACountingOnYou', "img:///KetarosPkg_Abilities.UIPerk_bond",, 'eAbilitySource_Perk');

	return Template;
}

static function X2DataTemplate PAViperBash()
{
	local X2AbilityTemplate Template;
	local X2AbilityCost_ActionPoints ActionPointCost;
	local X2AbilityToHitCalc_StandardMelee MeleeHitCalc;
	local X2Condition_UnitProperty AdjacencyCondition;
	local X2Effect_ApplyWeaponDamage PhysicalDamageEffect;
	local X2AbilityTarget_MovingMelee MeleeTarget;
    local X2AbilityMultiTarget_Radius RadiusMultiTarget;
	local array<name> SkipExclusions;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PAViperBash');

	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_muton_punch";
	Template.bHideOnClassUnlock = false;
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_SQUADDIE_PRIORITY;

	Template.bCrossClassEligible = false;
	Template.bDisplayInUITooltip = true;
    Template.bDisplayInUITacticalText = true;
    Template.DisplayTargetHitChance = true;
	Template.bShowActivation = true;
	Template.bSkipFireAction = false;

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = false;
	Template.AbilityCosts.AddItem(ActionPointCost);
	
	MeleeHitCalc = new class'X2AbilityToHitCalc_StandardMelee';
	MeleeHitCalc.BuiltInHitMod = default.ViperBashHitModifier;
	MeleeHitCalc.BuiltInCritMod = default.ViperBashCritModifier;
	Template.AbilityToHitCalc = MeleeHitCalc;

    //Template.AbilityTargetStyle = default.SimpleSingleMeleeTarget;
	//Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	Template.AbilityTargetStyle = new class'X2AbilityTarget_MovingMelee';
    Template.TargetingMethod = class'X2TargetingMethod_MeleePath';

    Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
    Template.AbilityTriggers.AddItem(new class'X2AbilityTrigger_EndOfMove');

    RadiusMultiTarget = new class'X2AbilityMultiTarget_Radius';
    RadiusMultiTarget.fTargetRadius = 1;
    RadiusMultiTarget.bExcludeSelfAsTargetIfWithinRadius = true;
    Template.AbilityMultiTargetStyle = RadiusMultiTarget;

	Template.bLimitTargetIcons = true;

	// Target Conditions
	Template.AbilityTargetConditions.AddItem(new class'X2Condition_BerserkerDevastatingPunch');	
	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);
	Template.AbilityTargetConditions.AddItem(default.MeleeVisibilityCondition);
	AdjacencyCondition = new class'X2Condition_UnitProperty';
	AdjacencyCondition.RequireWithinRange = true;
	AdjacencyCondition.WithinRange = 144; //1.5 tiles in Unreal units, allows attacks on the diag
	AdjacencyCondition.TreatMindControlledSquadmateAsHostile = true;
	Template.AbilityTargetConditions.AddItem(AdjacencyCondition);

	// Shooter Conditions
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	SkipExclusions.AddItem(class'X2StatusEffects'.default.BurningName);
	SkipExclusions.AddItem(class'X2AbilityTemplateManager'.default.DisorientedName); //okay when disoriented
	Template.AddShooterEffectExclusions(SkipExclusions);
	
	// Damage Effect
	PhysicalDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	PhysicalDamageEffect.EffectDamageValue = default.ViperBashDamage;
	PhysicalDamageEffect.EffectDamageValue.DamageType = 'Melee';
	// This also deals environmental damage
	Template.AddTargetEffect(PhysicalDamageEffect);
	
	// VGamepliz matters
	Template.SourceMissSpeech = 'SwordMiss';
	Template.bSkipMoveStop = true;

	Template.CustomFireAnim = 'FF_Melee_FnekE';
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.CinescriptCameraType = "Andromedon_FistStrike";
	Template.bOverrideMeleeDeath = true;

	// This action is considered 'hostile' and can be interrupted!
	Template.Hostility = eHostility_Offensive;
	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;
//BEGIN AUTOGENERATED CODE: Template Overrides 'BigDamnPunch'
	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'BigDamnPunch'
	
	Template.AdditionalAbilities.AddItem('ViperMelee_Animation');

	return Template;
}

static function X2AbilityTemplate PABullRushViper()
{
	local X2AbilityTemplate Template;
	local X2Effect_ApplyWeaponDamage DamageEffect;
	local X2Effect_Persistent StunnedEffect;
	local X2AbilityToHitCalc_StandardMelee ToHitCalc;

	// Create a damage effect. X2Effect_ApplyWeaponDamage is used to apply all types of damage, not
	// just damage from weapon attacks.
	DamageEffect = new class'X2Effect_ApplyWeaponDamage';

	DamageEffect.EffectDamageValue = default.BullRushViperDamage;
	DamageEffect.bIgnoreBaseDamage = true;

	Template = MeleeAttack('PABullRushViper', "img:///UILibrary_SOCombatEngineer.UIPerk_bullrush", true, DamageEffect,, eCost_SingleConsumeAll);
	
	// The default hit chance for melee attacks is low. Add +20 to the attack to match swords.
	ToHitCalc = new class'X2AbilityToHitCalc_StandardMelee';
	ToHitCalc.BuiltInHitMod = default.BullRushViperHitModifier;
	ToHitCalc.BuiltInCritMod = default.BullRushViperCritModifier;
	Template.AbilityToHitCalc = ToHitCalc;

	// Create a stun effect that removes 2 actions and has a 100% chance of success if the attack hits.
	StunnedEffect = class'X2StatusEffects'.static.CreateStunnedStatusEffect(2, 100, false);
	StunnedEffect.VisualizationFn = EffectFlyOver_Visualization;
	Template.AddTargetEffect(StunnedEffect);

	// The below is a custom animation based on the Andromedon's punch with different sound effects.
	Template.CustomFireAnim = 'FF_Melee_FnekE';

	return Template;
}

static function X2AbilityTemplate PALockjaw()
{
	local X2AbilityTemplate                 Template;

	Template = PurePassive('PALockjaw', "img:///UILibrary_MZChimeraIcons.Ability_QuickBite", false, 'eAbilitySource_Perk');
	Template.DefaultSourceItemSlot = eInvSlot_Unknown;
	Template.AdditionalAbilities.AddItem('PALockjawAttack');
	return Template;
}

static function X2AbilityTemplate PALockjawAttack()
{
	local X2AbilityTemplate							Template;
	local X2AbilityToHitCalc_StandardMelee			ToHitCalc;
	local X2AbilityTrigger_EventListener			Trigger;
	local X2Effect_ApplyWeaponDamage				PhysicalDamageEffect;
	local X2Effect_Persistent						BladestormTargetEffect;
	local X2Condition_UnitEffectsWithAbilitySource	BladestormTargetCondition;
	local X2Condition_UnitProperty					SourceNotConcealedCondition;
	local X2Condition_Visibility					TargetVisibilityCondition;
	local X2Condition_UnitEffects					UnitEffectsCondition;
	local X2Condition_UnitProperty					ExcludeSquadmatesCondition;
	local X2Condition_UnitProperty					AdjacencyCondition;
	local X2Condition_NotItsOwnTurn					NotItsOwnTurnCondition;
	local X2AbilityCooldown_OnHitOnly							Cooldown;
	local X2Effect_Persistent						StunnedEffect;
	local X2Effect_PersistentStatChange				EnhancedEffect;
	local X2Condition_AbilityProperty 				EnhancedSpitCondition;
	//local X2Effect_PersistentStatChange				DisorientedEffect;
	//local X2Condition_AbilityProperty 				DisorientSpitCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PALockjawAttack');

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ability_QuickBite";
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_CAPTAIN_PRIORITY;

	ToHitCalc = new class'X2AbilityToHitCalc_StandardMelee';
	ToHitCalc.bReactionFire = true;
	ToHitCalc.bAllowCrit = false;
	Template.AbilityToHitCalc = ToHitCalc;
	Template.AbilityTargetStyle = default.SimpleSingleMeleeTarget;

	Cooldown = new class'X2AbilityCooldown_OnHitOnly';
    Cooldown.iNumTurns = 1;
    Template.AbilityCooldown = Cooldown;

	//  trigger on movement
	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.EventID = 'ObjectMoved';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.Filter = eFilter_None;
	Trigger.ListenerData.EventFn = class'XComGameState_Ability'.static.TypicalOverwatchListener;
	Template.AbilityTriggers.AddItem(Trigger);
	//  trigger on an attack
	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.EventID = 'AbilityActivated';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.Filter = eFilter_None;
	Trigger.ListenerData.EventFn = class'XComGameState_Ability'.static.TypicalAttackListener;
	Template.AbilityTriggers.AddItem(Trigger);

	//  it may be the case that enemy movement caused a concealment break, which made Bladestorm applicable - attempt to trigger afterwards
	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.EventID = 'UnitConcealmentBroken';
	Trigger.ListenerData.Filter = eFilter_Unit;
	Trigger.ListenerData.EventFn = ThrashConcealmentListener;
	Trigger.ListenerData.Priority = 55;
	Template.AbilityTriggers.AddItem(Trigger);
	
	Template.AbilityTargetConditions.AddItem(default.LivingHostileUnitDisallowMindControlProperty);
	TargetVisibilityCondition = new class'X2Condition_Visibility';
	TargetVisibilityCondition.bRequireGameplayVisible = true;
	TargetVisibilityCondition.bRequireBasicVisibility = true;
	TargetVisibilityCondition.bDisablePeeksOnMovement = true; //Don't use peek tiles for over watch shots	
	Template.AbilityTargetConditions.AddItem(TargetVisibilityCondition);
	Template.AbilityTargetConditions.AddItem(class'X2Ability_DefaultAbilitySet'.static.OverwatchTargetEffectsCondition());
	// Adding exclusion condition to prevent friendly bladestorm fire when panicked.
	ExcludeSquadmatesCondition = new class'X2Condition_UnitProperty';
	ExcludeSquadmatesCondition.ExcludeSquadmates = true;
	Template.AbilityTargetConditions.AddItem(ExcludeSquadmatesCondition);
	// Target Conditions
	AdjacencyCondition = new class'X2Condition_UnitProperty';
	AdjacencyCondition.RequireWithinRange = true;
	AdjacencyCondition.WithinRange = 144; //1.5 tiles in Unreal units, allows attacks on the diag
	AdjacencyCondition.ExcludeRobotic = true;
	Template.AbilityTargetConditions.AddItem(AdjacencyCondition);

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);	
	Template.AddShooterEffectExclusions();

	//Don't trigger when the source is concealed
	SourceNotConcealedCondition = new class'X2Condition_UnitProperty';
	SourceNotConcealedCondition.ExcludeConcealed = true;
	Template.AbilityShooterConditions.AddItem(SourceNotConcealedCondition);

	// Don't trigger if the unit has vanished
	UnitEffectsCondition = new class'X2Condition_UnitEffects';
	UnitEffectsCondition.AddExcludeEffect('Vanish', 'AA_UnitIsConcealed');
	UnitEffectsCondition.AddExcludeEffect('VanishingWind', 'AA_UnitIsConcealed');
	Template.AbilityShooterConditions.AddItem(UnitEffectsCondition);

	PhysicalDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	PhysicalDamageEffect.EffectDamageValue = default.PALOCKJAW_BASEDAMAGE;
	PhysicalDamageEffect.EffectDamageValue.DamageType = 'Melee';
	PhysicalDamageEffect.HideVisualizationOfResultsAdditional.AddItem('AA_HitResultFailure');
	Template.AddTargetEffect(PhysicalDamageEffect);
	
	Template.AddTargetEffect(CreatePA_PoisonStatusEffect());

	//	if (default.EnhancedSpitDisorients) {
	//	DisorientedEffect = class'X2StatusEffects'.static.CreateDisorientedStatusEffect();
	//	DisorientSpitCondition = new class'X2Condition_AbilityProperty';
	//	DisorientSpitCondition.OwnerHasSoldierAbilities.AddItem('PA_EnhancedSpit');
	//	DisorientedEffect.TargetConditions.AddItem(DisorientSpitCondition);
	//	Template.AddMultiTargetEffect(DisorientedEffect);
	//}

	//PoisonEffect = class'X2StatusEffects'.static.CreatePoisonedStatusEffect();
	//Template.AddTargetEffect(PoisonEffect);

	EnhancedEffect = CreateEnhancedStatusEffect();
	EnhancedSpitCondition = new class'X2Condition_AbilityProperty';
	EnhancedSpitCondition.OwnerHasSoldierAbilities.AddItem('PA_EnhancedSpit');
	EnhancedEffect.TargetConditions.AddItem(EnhancedSpitCondition);
	Template.AddMultiTargetEffect(EnhancedEffect);

	StunnedEffect = class'X2StatusEffects'.static.CreateStunnedStatusEffect(1, 100, false);
	StunnedEffect.VisualizationFn = EffectFlyOver_Visualization;
	Template.AddTargetEffect(StunnedEffect);

	//Prevent repeatedly hammering on a unit with Bladestorm triggers.
	//(This effect does nothing, but enables many-to-many marking of which Bladestorm attacks have already occurred each turn.)
	BladestormTargetEffect = new class'X2Effect_Persistent';
	BladestormTargetEffect.BuildPersistentEffect(1, false, true, true, eGameRule_PlayerTurnEnd);
	BladestormTargetEffect.EffectName = 'PALockjawATarget';
	BladestormTargetEffect.bApplyOnMiss = true; //Only one chance, even if you miss (prevents crazy flailing counter-attack chains with a Muton, for example)
	Template.AddTargetEffect(BladestormTargetEffect);
	
	BladestormTargetCondition = new class'X2Condition_UnitEffectsWithAbilitySource';
	BladestormTargetCondition.AddExcludeEffect('PALockjawATarget', 'AA_DuplicateEffectIgnored');
	Template.AbilityTargetConditions.AddItem(BladestormTargetCondition);

	Template.CustomFireAnim = 'FF_Melee_FnekA';

	NotItsOwnTurnCondition = new class'X2Condition_NotItsOwnTurn';
	Template.AbilityShooterConditions.AddItem(NotItsOwnTurnCondition);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = Thrash_BuildVisualization;
	Template.bShowActivation = true;

	Template.SuperConcealmentLoss = class'X2AbilityTemplateManager'.default.SuperConcealmentStandardShotLoss;
	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.NormalChosenActivationIncreasePerUse;
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.MeleeLostSpawnIncreasePerUse;

	//BEGIN AUTOGENERATED CODE: Template Overrides 'BladestormAttack'
	Template.bFrameEvenWhenUnitIsHidden = true;
	Template.DefaultSourceItemSlot = eInvSlot_Unknown;
	//END AUTOGENERATED CODE: Template Overrides 'BladestormAttack'

	return Template;
}

static function X2DataTemplate PAViciousBite()
{
	local X2AbilityTemplate Template;
	local X2AbilityToHitCalc_StandardMelee MeleeHitCalc;
	local X2Condition_UnitProperty AdjacencyCondition;
	local X2Effect_ApplyWeaponDamage PhysicalDamageEffect;
	local X2AbilityTarget_MovingMelee MeleeTarget;
	local array<name> SkipExclusions;
	local X2Effect_PersistentStatChange				EnhancedEffect;
	local X2Condition_AbilityProperty 				EnhancedSpitCondition;
	//local X2Effect_PersistentStatChange				DisorientedEffect;
	//local X2Condition_AbilityProperty 				DisorientSpitCondition;
	local X2AbilityCooldown							Cooldown;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PAViciousBite');

	Template.AbilitySourceName = 'eAbilitySource_Standard';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.IconImage = "img:///UILibrary_MZChimeraIcons.Ability_ViciousBite";
	Template.bHideOnClassUnlock = false;
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_SQUADDIE_PRIORITY;

	Template.bCrossClassEligible = false;
	Template.bDisplayInUITooltip = true;
    Template.bDisplayInUITacticalText = true;
    Template.DisplayTargetHitChance = true;
	Template.bShowActivation = true;
	Template.bSkipFireAction = false;

	Template.AbilityCosts.AddItem(default.FreeActionCost);

	Cooldown = new class'X2AbilityCooldown';
    Cooldown.iNumTurns = 6;
    Template.AbilityCooldown = Cooldown;
	
	MeleeHitCalc = new class'X2AbilityToHitCalc_StandardMelee';
	MeleeHitCalc.BuiltInHitMod = default.ViciousBiteHitModifier;
	MeleeHitCalc.BuiltInCritMod = default.ViciousBiteCritModifier;
	Template.AbilityToHitCalc = MeleeHitCalc;

    Template.AbilityTargetStyle = default.SimpleSingleMeleeTarget;
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	// Target Conditions
	Template.AbilityTargetConditions.AddItem(new class'X2Condition_BerserkerDevastatingPunch');
	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);
	Template.AbilityTargetConditions.AddItem(default.MeleeVisibilityCondition);
	AdjacencyCondition = new class'X2Condition_UnitProperty';
	AdjacencyCondition.RequireWithinRange = true;
	AdjacencyCondition.WithinRange = 144; //1.5 tiles in Unreal units, allows attacks on the diag
	AdjacencyCondition.TreatMindControlledSquadmateAsHostile = true;
	AdjacencyCondition.ExcludeRobotic = true;
	Template.AbilityTargetConditions.AddItem(AdjacencyCondition);

	// Shooter Conditions
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	SkipExclusions.AddItem(class'X2StatusEffects'.default.BurningName);
	SkipExclusions.AddItem(class'X2AbilityTemplateManager'.default.DisorientedName); //okay when disoriented
	Template.AddShooterEffectExclusions(SkipExclusions);
	
	// Damage Effect
	PhysicalDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	PhysicalDamageEffect.EffectDamageValue = default.ViciousBiteDamage;
	PhysicalDamageEffect.EffectDamageValue.DamageType = 'Melee';
	Template.AddTargetEffect(PhysicalDamageEffect);

		Template.AddTargetEffect(CreatePA_PoisonStatusEffect());

		//if (default.EnhancedSpitDisorients) {
		//DisorientedEffect = class'X2StatusEffects'.static.CreateDisorientedStatusEffect();
		//DisorientSpitCondition = new class'X2Condition_AbilityProperty';
		//DisorientSpitCondition.OwnerHasSoldierAbilities.AddItem('PA_EnhancedSpit');
		//DisorientedEffect.TargetConditions.AddItem(DisorientSpitCondition);
		//Template.AddMultiTargetEffect(DisorientedEffect);
	//}

	//PoisonEffect = class'X2StatusEffects'.static.CreatePoisonedStatusEffect();
	//Template.AddTargetEffect(PoisonEffect);

	EnhancedEffect = CreateEnhancedStatusEffect();
	EnhancedSpitCondition = new class'X2Condition_AbilityProperty';
	EnhancedSpitCondition.OwnerHasSoldierAbilities.AddItem('PA_EnhancedSpit');
	EnhancedEffect.TargetConditions.AddItem(EnhancedSpitCondition);
	Template.AddMultiTargetEffect(EnhancedEffect);
	
	// VGamepliz matters
	Template.SourceMissSpeech = 'SwordMiss';
	Template.bSkipMoveStop = true;

	Template.CustomFireAnim = 'FF_Melee_FnekA';
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.CinescriptCameraType = "Andromedon_FistStrike";
	Template.bOverrideMeleeDeath = true;

	// This action is considered 'hostile' and can be interrupted!
	Template.Hostility = eHostility_Offensive;
	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;
//BEGIN AUTOGENERATED CODE: Template Overrides 'BigDamnPunch'
	Template.bFrameEvenWhenUnitIsHidden = true;
//END AUTOGENERATED CODE: Template Overrides 'BigDamnPunch'

	return Template;
}

static function X2AbilityTemplate PA_SlugShot()
{
	local X2AbilityTemplate                 Template;	
	local X2AbilityCost_Ammo                AmmoCost;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2AbilityCooldown                 Cooldown;
	local X2AbilityToHitCalc_StandardAim    ToHitCalc;
	local X2Condition_Visibility			VisibilityCondition;
	local X2Effect_Knockback				KnockbackEffect;
	
	`CREATE_X2ABILITY_TEMPLATE (Template, 'PA_SlugShot');
	Template.IconImage = "img:///UILibrary_LW_PerkPack.LW_AbilitySlugShot";
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_CAPTAIN_PRIORITY;
	Template.DisplayTargetHitChance = true;
	Template.AbilityConfirmSound = "TacticalUI_ActivateAbility";
	Template.CinescriptCameraType = "StandardGunFiring";
	Template.TargetingMethod = class'X2TargetingMethod_OverTheShoulder';
	Template.bCrossClassEligible = false;
	Template.bUsesFiringCamera = true;
	Template.bPreventsTargetTeleport = false;
	Template.Hostility = eHostility_Offensive;
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.AbilityTargetStyle = default.SimpleSingleTarget;
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);
	Template.AddShooterEffectExclusions();

	VisibilityCondition = new class'X2Condition_Visibility';
	VisibilityCondition.bRequireGameplayVisible = true;
	VisibilityCondition.bAllowSquadsight = true;
	Template.AbilityTargetConditions.AddItem(VisibilityCondition);

	Template.AddTargetEffect(class'X2Ability_GrenadierAbilitySet'.static.HoloTargetEffect());
	Template.AssociatedPassives.AddItem('HoloTargeting');
	Template.AddTargetEffect(class'X2Ability_GrenadierAbilitySet'.static.ShredderDamageEffect());
	Template.bAllowAmmoEffects = true;

	ActionPointCost = new class 'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);

	ToHitCalc = new class'X2AbilityToHitCalc_StandardAim';
	Template.AbilityToHitCalc = ToHitCalc;
	Template.AbilityToHitOwnerOnMissCalc = ToHitCalc;

	Cooldown = new class'X2AbilityCooldown';
    Cooldown.iNumTurns = default.PA_SLUG_SHOT_COOLDOWN;
    Template.AbilityCooldown = Cooldown;

	AmmoCost = new class'X2AbilityCost_Ammo';
	AmmoCost.iAmmo = default.PA_SLUG_SHOT_AMMO_COST;
	Template.AbilityCosts.AddItem(AmmoCost);
	
	KnockbackEffect = new class'X2Effect_Knockback';
	KnockbackEffect.KnockbackDistance = 2;
	Template.AddTargetEffect(KnockbackEffect);

	Template.AdditionalAbilities.AddItem('PASlugShotRangeEffect');

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;		
	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;
	
	Template.SuperConcealmentLoss = class'X2AbilityTemplateManager'.default.SuperConcealmentStandardShotLoss;
	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotChosenActivationIncreasePerUse;
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotLostSpawnIncreasePerUse;
	
	return Template;
}

static function X2AbilityTemplate PASlugShotRangeEffect()
{
	local X2AbilityTemplate                 Template;	
	local X2Effect_PASlugShot				PASlugShotEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PASlugShotRangeEffect');
	Template.IconImage = "img:///UILibrary_LW_PerkPack.LW_AbilitySlugShot";
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);
	PASlugShotEffect = new class'X2Effect_PASlugShot';
	PASlugShotEffect.BuildPersistentEffect (1, true, false);
	PASlugShotEffect.Pierce = default.PA_SLUG_SHOT_PIERCE;
	PASlugShotEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, true,,Template.AbilitySourceName);
	Template.AddTargetEffect(PASlugShotEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;	
}

static function X2AbilityTemplate PA_TrenchGun()
{
	local X2AbilityTemplate                 Template;	
	local X2AbilityCost_Ammo                AmmoCost;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2AbilityTarget_Cursor            CursorTarget;
	local X2AbilityMultiTarget_Cone         ConeMultiTarget;
	local X2Condition_UnitProperty          UnitPropertyCondition;
	local X2AbilityToHitCalc_StandardAim    StandardAim;
	local X2AbilityCooldown                 Cooldown;
	local X2Effect_Shredder					WeaponDamageEffect;
	local X2Condition_UnitEffects			SuppressedCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_TrenchGun');
	
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_CAPTAIN_PRIORITY;
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.IconImage = "img:///UILibrary_LW_PerkPack.LW_AbilityStreetSweeper";
	Template.AbilityConfirmSound = "TacticalUI_ActivateAbility";
	Template.CinescriptCameraType = "StandardGunFiring";
	Template.bCrossClassEligible = false;
	Template.Hostility = eHostility_Offensive;
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.TargetingMethod = class'X2TargetingMethod_Cone';

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityTargetConditions.AddItem(default.LivingTargetUnitOnlyProperty);
	
	Template.bAllowAmmoEffects = true;

	ActionPointCost = new class 'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);

	AmmoCost = new class'X2AbilityCost_Ammo';	
	AmmoCost.iAmmo = default.PA_TRENCH_GUN_AMMO_COST;
	Template.AbilityCosts.AddItem(AmmoCost);

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.PA_TRENCH_GUN_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeDead = true;
	UnitPropertyCondition.ExcludeFriendlyToSource = false;
	Template.AbilityShooterConditions.AddItem(UnitPropertyCondition);
	Template.AbilityTargetConditions.AddItem(UnitPropertyCondition);

	Template.AddShooterEffectExclusions();
	
	SuppressedCondition = new class'X2Condition_UnitEffects';
	SuppressedCondition.AddExcludeEffect(class'X2Effect_Suppression'.default.EffectName, 'AA_UnitIsSuppressed');
	SuppressedCondition.AddExcludeEffect(class'X2Effect_AreaSuppression'.default.EffectName, 'AA_UnitIsSuppressed');
	Template.AbilityShooterConditions.AddItem(SuppressedCondition);

	StandardAim = new class'X2AbilityToHitCalc_StandardAim';
	StandardAim.bMultiTargetOnly = false; 
	StandardAim.bGuaranteedHit = false;
	StandardAim.bOnlyMultiHitWithSuccess = false;
	StandardAim.bAllowCrit = true;
	Template.AbilityToHitCalc = StandardAim;
	Template.bOverrideAim = false;

	CursorTarget = new class'X2AbilityTarget_Cursor';
	Template.AbilityTargetStyle = CursorTarget;	

	WeaponDamageEffect = new class'X2Effect_Shredder';
	Template.AddTargetEffect(WeaponDamageEffect);
	Template.AddMultiTargetEffect(WeaponDamageEffect);
	Template.bFragileDamageOnly = true;
	Template.bCheckCollision = true;

	ConeMultiTarget = new class'X2AbilityMultiTarget_Cone';
	ConeMultiTarget.bExcludeSelfAsTargetIfWithinRadius = true;
	ConeMultiTarget.ConeEndDiameter = default.PA_TRENCH_GUN_TILE_WIDTH * class'XComWorldData'.const.WORLD_StepSize;
	ConeMultiTarget.bUseWeaponRangeForLength = false;
	ConeMultiTarget.ConeLength=default.PA_TRENCH_GUN_CONE_LENGTH;
	ConeMultiTarget.fTargetRadius = 99;     //  large number to handle weapon range - targets will get filtered according to cone constraints
	ConeMultiTarget.bIgnoreBlockingCover = false;
	Template.AbilityMultiTargetStyle = ConeMultiTarget;

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;
	
	Template.SuperConcealmentLoss = class'X2AbilityTemplateManager'.default.SuperConcealmentStandardShotLoss;
	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotChosenActivationIncreasePerUse;
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotLostSpawnIncreasePerUse;

	return Template;
}

static function X2AbilityTemplate PA_StreetSweeper()
{
	local X2AbilityTemplate					Template;	
	local X2AbilityCost_Ammo                AmmoCost;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2AbilityTarget_Cursor            CursorTarget;
	local X2AbilityMultiTarget_Cone         ConeMultiTarget;
	local X2Condition_UnitProperty          UnitPropertyCondition;
	local X2AbilityToHitCalc_StandardAim    StandardAim;
	local X2AbilityCooldown                 Cooldown;
	local X2Effect_Shredder					WeaponDamageEffect;
	local X2Condition_UnitEffects			SuppressedCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_StreetSweeper');

	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_COLONEL_PRIORITY;
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.IconImage = "img:///UILibrary_LW_Overhaul.LW_AbilityStreetSweeper2";
	Template.ActivationSpeech = 'Reaper';
	Template.CinescriptCameraType = "StandardGunFiring";
	Template.bCrossClassEligible = false;
	Template.Hostility = eHostility_Offensive;
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.TargetingMethod = class'X2TargetingMethod_Cone';
	Template.bDisplayInUITooltip = true;
	Template.bDisplayInUITacticalText = true;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityTargetConditions.AddItem(default.LivingTargetUnitOnlyProperty);

	Template.AddTargetEffect(class'X2Ability_GrenadierAbilitySet'.static.ShredderDamageEffect());
	Template.bAllowAmmoEffects = true;

	ActionPointCost = new class 'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);

	AmmoCost = new class'X2AbilityCost_Ammo';	
	AmmoCost.iAmmo = default.PA_STREET_SWEEPER_AMMO_COST;
	Template.AbilityCosts.AddItem(AmmoCost);

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.PA_STREET_SWEEPER_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeFriendlyToSource = false;
	Template.AbilityTargetConditions.AddItem(UnitPropertyCondition);
	
	SuppressedCondition = new class'X2Condition_UnitEffects';
	SuppressedCondition.AddExcludeEffect(class'X2Effect_Suppression'.default.EffectName, 'AA_UnitIsSuppressed');
	SuppressedCondition.AddExcludeEffect(class'X2Effect_AreaSuppression'.default.EffectName, 'AA_UnitIsSuppressed');
	Template.AbilityShooterConditions.AddItem(SuppressedCondition);

	Template.AddShooterEffectExclusions();

	StandardAim = new class'X2AbilityToHitCalc_StandardAim';
	StandardAim.bMultiTargetOnly = false; 
	StandardAim.bGuaranteedHit = false;
	StandardAim.bOnlyMultiHitWithSuccess = false;
	StandardAim.bAllowCrit = true;
	Template.AbilityToHitCalc = StandardAim;
	Template.bOverrideAim = false;

	CursorTarget = new class'X2AbilityTarget_Cursor';
	Template.AbilityTargetStyle = CursorTarget;	

	WeaponDamageEffect = new class'X2Effect_Shredder';
	Template.AddMultiTargetEffect(WeaponDamageEffect);
	Template.bFragileDamageOnly = true;
	Template.bCheckCollision = true;

	ConeMultiTarget = new class'X2AbilityMultiTarget_Cone';
	ConeMultiTarget.bExcludeSelfAsTargetIfWithinRadius = true;
	ConeMultiTarget.ConeEndDiameter = default.PA_STREET_SWEEPER_TILE_WIDTH * class'XComWorldData'.const.WORLD_StepSize;
	ConeMultiTarget.bUseWeaponRangeForLength = false;
	ConeMultiTarget.ConeLength=default.PA_STREET_SWEEPER_CONE_LENGTH;
	ConeMultiTarget.fTargetRadius = 99;     //  large number to handle weapon range - targets will get filtered according to cone constraints
	ConeMultiTarget.bIgnoreBlockingCover = false;
	Template.AbilityMultiTargetStyle = ConeMultiTarget;
	
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;
	
	Template.SuperConcealmentLoss = class'X2AbilityTemplateManager'.default.SuperConcealmentStandardShotLoss;
	Template.ChosenActivationIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotChosenActivationIncreasePerUse;
	Template.LostSpawnIncreasePerUse = class'X2AbilityTemplateManager'.default.StandardShotLostSpawnIncreasePerUse;

	Template.AdditionalAbilities.AddItem('PA_StreetSweeperBonusDamage');

	return Template;
}


static function X2AbilityTemplate PA_StreetSweeperBonusDamage()
{
	local X2AbilityTemplate					Template;	
	local X2Effect_PAStreetSweeper			PAStreetSweeperEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_StreetSweeperBonusDamage');
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.bIsPassive = true;
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	PAStreetSweeperEffect = new class 'X2Effect_PAStreetSweeper';
	PAStreetSweeperEffect.Unarmored_Damage_Bonus = default.PA_STREET_SWEEPER_UNARMORED_DAMAGE_BONUS;
	PAStreetSweeperEffect.BuildPersistentEffect(1,true,false,false);
	Template.AddTargetEffect(PAStreetSweeperEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	
	return Template;
}

static function X2AbilityTemplate PAJackedFrostZombies()
{

	local X2AbilityTemplate										Template;

	Template = PurePassive('PAJackedFrostZombies', "img:///KetarosPkg_Abilities.UIPerk_skullshield",, 'eAbilitySource_Perk');
	Template.AdditionalAbilities.AddItem('MZ_FDReanimateFrostZombie_M3');

	return Template;
}

//static function X2AbilityTemplate PA_Entwine()
//{
//	local X2AbilityTemplate                 Template;   
//	local X2Effect_Entwine_PA				Effect;

//	`CREATE_X2ABILITY_TEMPLATE(Template, 'PA_Entwine'); // Template name
	
	// Icon Properties
//	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_viper_bind";

//	Template.AbilitySourceName = 'eAbilitySource_Perk';
//	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
//	Template.Hostility = eHostility_Neutral;

//	Template.AbilityToHitCalc = default.DeadEye;
//	Template.AbilityTargetStyle = default.SelfTarget;
//	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	// Add effect template which handles the ability effects
//	Effect = new class'X2Effect_Entwine_PA';
//	Effect.DefenseMod = default.EntwineDefense;
//	Effect.TongueAim = default.EntwinePullAim;
//	Effect.BuildPersistentEffect(1, true, false, false);
//	Effect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.LocLongDescription, Template.IconImage, true, , Template.AbilitySourceName);
//	Template.AddTargetEffect(Effect);

//	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	//  NOTE: No visualization on purpose!

//	return Template;
//}

static function X2AbilityTemplate PABurningPinions()
{

	local X2AbilityTemplate										Template;

	Template = PurePassive('PABurningPinions', "img:///UILibrary_MZChimeraIcons.Grenade_Fire",, 'eAbilitySource_Perk');

	return Template;
}

static function X2AbilityTemplate TelekineticDelivery()
{
	local XMBEffect_AbilityCostRefund Effect;
	local XMBCondition_AbilityName AbilityNameCondition;
	
	// Create an effect that will refund the cost of the action
	Effect = new class'XMBEffect_AbilityCostRefund';
	Effect.EffectName = 'TelekineticDelivery';
	Effect.TriggeredEvent = 'TelekineticDelivery';

	// Only refund once per turn
	Effect.CountValueName = 'TelekineticDelivery_RefundCounter';
	Effect.MaxRefundsPerTurn = 1;

	// The bonus only applies to specified abilities
	AbilityNameCondition = new class'XMBCondition_AbilityName';
	AbilityNameCondition.IncludeAbilityNames = default.TELEKINETICDELIVERY_ABILITIES;
	Effect.AbilityTargetConditions.AddItem(AbilityNameCondition);

	// Create the template using a helper function
	return Passive('TelekineticDelivery', "img:///KetarosPkg_Abilities.UIPerk_sowhat", false, Effect);
}