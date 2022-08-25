class X2Item_PAWeapons extends X2Item config(GameData_WeaponData);

var config int ALIEN_FIREARM_UPGRADESLOTS;
var config int LASERWEAPONAIMBONUS; // 10
var config array<int> LMG_ALL_RANGE;

//* ===========================================================================
//* Muton weapons
//* ===========================================================================

//* -------------------------------------------------------
//* Muton Bayonet
//* -------------------------------------------------------

var config WeaponDamageValue MUTON_BAYONET_BASEDAMAGE;

// -------------------------------------------------------

var config WeaponDamageValue MUTON_ELITEBAYONET_BASEDAMAGE;

//* -------------------------------------------------------
//* Muton Rifle - Conventional
//* -------------------------------------------------------

var config WeaponDamageValue MutonRifle_Conventional_BaseDamage;

//* -------------------------------------------------------
//* Muton Rifle - Laser
//* -------------------------------------------------------

var config WeaponDamageValue MutonRifle_Laser_BaseDamage;

//* -------------------------------------------------------
//* Muton Rifle - Magnetic
//* -------------------------------------------------------

var config WeaponDamageValue MutonRifle_Magnetic_BaseDamage;

//* -------------------------------------------------------*
//* Muton Rifle - Coil
//* -------------------------------------------------------*

var config WeaponDamageValue MutonRifle_Coil_BaseDamage;

//* -------------------------------------------------------
//* Muton Rifle - Beam
//* -------------------------------------------------------

var config WeaponDamageValue MutonRifle_Beam_BaseDamage;

//* -------------------------------------------------------
//* Muton Cannon - Conventional
//* -------------------------------------------------------

var config WeaponDamageValue MutonCannon_Conventional_BaseDamage;

//* -------------------------------------------------------
//* Muton Cannon - Laser
//* -------------------------------------------------------

var config WeaponDamageValue MutonCannon_Laser_BaseDamage;

//* -------------------------------------------------------
//* Muton Cannon - Magnetic
//* -------------------------------------------------------

var config WeaponDamageValue MutonCannon_Magnetic_BaseDamage;

//* -------------------------------------------------------
//* Muton Cannon - Coil
//* -------------------------------------------------------

var config WeaponDamageValue MutonCannon_Coil_BaseDamage;

//* -------------------------------------------------------
//* Muton Cannon - Beam
//* -------------------------------------------------------

var config WeaponDamageValue MutonCannon_Beam_BaseDamage;

//* ===========================================================================
//* Muton Stalker
//* ===========================================================================

//* -------------------------------------------------------
//* Muton Stalker - Conventional
//* -------------------------------------------------------

var config WeaponDamageValue MUTONSTALKERGUN_CONVENTIONAL_BASEDAMAGE;

var config array<int> MUTONSTALKERGUN_CONVENTIONAL_RANGE;

var config int MUTONSTALKERGUN_CONVENTIONAL_AIM;
var config int MUTONSTALKERGUN_CONVENTIONAL_CRITCHANCE;
var config int MUTONSTALKERGUN_CONVENTIONAL_CLIPSIZE;
var config int MUTONSTALKERGUN_CONVENTIONAL_ISOUNDRANGE;
var config int MUTONSTALKERGUN_CONVENTIONAL_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Muton Stalker - Laser
//* -------------------------------------------------------

var config WeaponDamageValue MUTONSTALKERGUN_LASER_BASEDAMAGE;

var config array<int> MUTONSTALKERGUN_LASER_RANGE;

var config int MUTONSTALKERGUN_LASER_AIM;
var config int MUTONSTALKERGUN_LASER_CRITCHANCE;
var config int MUTONSTALKERGUN_LASER_CLIPSIZE;
var config int MUTONSTALKERGUN_LASER_ISOUNDRANGE;
var config int MUTONSTALKERGUN_LASER_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Muton Stalker - Magnetic
//* -------------------------------------------------------


var config WeaponDamageValue MUTONSTALKERGUN_MAGNETIC_BASEDAMAGE;

var config array<int> MUTONSTALKERGUN_MAGNETIC_RANGE;

var config int MUTONSTALKERGUN_MAGNETIC_AIM;
var config int MUTONSTALKERGUN_MAGNETIC_CRITCHANCE;
var config int MUTONSTALKERGUN_MAGNETIC_CLIPSIZE;
var config int MUTONSTALKERGUN_MAGNETIC_ISOUNDRANGE;
var config int MUTONSTALKERGUN_MAGNETIC_IENVIRONMENTDAMAGE;


//* -------------------------------------------------------
//* Muton Stalker - Coil
//* -------------------------------------------------------

var config WeaponDamageValue MUTONSTALKERGUN_COIL_BASEDAMAGE;

var config array<int> MUTONSTALKERGUN_COIL_RANGE;

var config int MUTONSTALKERGUN_COIL_AIM;
var config int MUTONSTALKERGUN_COIL_CRITCHANCE;
var config int MUTONSTALKERGUN_COIL_CLIPSIZE;
var config int MUTONSTALKERGUN_COIL_ISOUNDRANGE;
var config int MUTONSTALKERGUN_COIL_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Muton Stalker - Beam
//* -------------------------------------------------------

var config WeaponDamageValue MUTONSTALKERGUN_BEAM_BASEDAMAGE;

var config array<int> MUTONSTALKERGUN_BEAM_RANGE;

var config int MUTONSTALKERGUN_BEAM_AIM;
var config int MUTONSTALKERGUN_BEAM_CRITCHANCE;
var config int MUTONSTALKERGUN_BEAM_CLIPSIZE;
var config int MUTONSTALKERGUN_BEAM_ISOUNDRANGE;
var config int MUTONSTALKERGUN_BEAM_IENVIRONMENTDAMAGE;

//* ===========================================================================
//* Muton Beleague
//* ===========================================================================

//* -------------------------------------------------------
//* Muton Beleague - Conventional
//* -------------------------------------------------------

var config WeaponDamageValue MUTONBELEAGUERGUN_CONVENTIONAL_BASEDAMAGE;
var config array<WeaponDamageValue> MUTONBELEAGUERGUN_CONVENTIONAL_EXTRADAMAGE;

var config array<int> MUTONBELEAGUE_CONVENTIONAL_RANGE;

var config int MUTONBELEAGUERGUN_CONVENTIONAL_AIM;
var config int MUTONBELEAGUERGUN_CONVENTIONAL_CRITCHANCE;
var config int MUTONBELEAGUERGUN_CONVENTIONAL_CLIPSIZE;
var config int MUTONBELEAGUERGUN_CONVENTIONAL_ISOUNDRANGE;
var config int MUTONBELEAGUERGUN_CONVENTIONAL_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Muton Beleague - Laser
//* -------------------------------------------------------

var config WeaponDamageValue MUTONBELEAGUERGUN_LASER_BASEDAMAGE;
var config array<WeaponDamageValue> MUTONBELEAGUERGUN_LASER_EXTRADAMAGE;

var config array<int> MUTONBELEAGUERGUN_LASER_RANGE;

var config int MUTONBELEAGUERGUN_LASER_AIM;
var config int MUTONBELEAGUERGUN_LASER_CRITCHANCE;
var config int MUTONBELEAGUERGUN_LASER_CLIPSIZE;
var config int MUTONBELEAGUERGUN_LASER_ISOUNDRANGE;
var config int MUTONBELEAGUERGUN_LASER_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Muton Beleague - Magnetic
//* -------------------------------------------------------

var config WeaponDamageValue MUTONBELEAGUERGUN_MAGNETIC_BASEDAMAGE;
var config array<WeaponDamageValue> MUTONBELEAGUERGUN_MAGNETIC_EXTRADAMAGE;

var config array<int> MUTONBELEAGUERGUN_MAGNETIC_RANGE;

var config int MUTONBELEAGUERGUN_MAGNETIC_AIM;
var config int MUTONBELEAGUERGUN_MAGNETIC_CRITCHANCE;
var config int MUTONBELEAGUERGUN_MAGNETIC_CLIPSIZE;
var config int MUTONBELEAGUERGUN_MAGNETIC_ISOUNDRANGE;
var config int MUTONBELEAGUERGUN_MAGNETIC_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Muton Beleague - Coil
//* -------------------------------------------------------

var config WeaponDamageValue MUTONBELEAGUERGUN_COIL_BASEDAMAGE;
var config array<WeaponDamageValue> MUTONBELEAGUERGUN_COIL_EXTRADAMAGE;

var config array<int> MUTONBELEAGUERGUN_COIL_RANGE;

var config int MUTONBELEAGUERGUN_COIL_AIM;
var config int MUTONBELEAGUERGUN_COIL_CRITCHANCE;
var config int MUTONBELEAGUERGUN_COIL_CLIPSIZE;
var config int MUTONBELEAGUERGUN_COIL_ISOUNDRANGE;
var config int MUTONBELEAGUERGUN_COIL_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Muton Beleague - Beam
//* -------------------------------------------------------

var config array<WeaponDamageValue> MUTONBELEAGUERGUN_BEAM_EXTRADAMAGE;
var config WeaponDamageValue MUTONBELEAGUERGUN_BEAM_BASEDAMAGE;

var config array<int> MUTONBELEAGUERGUN_BEAM_RANGE;

var config int MUTONBELEAGUERGUN_BEAM_AIM;
var config int MUTONBELEAGUERGUN_BEAM_CRITCHANCE;
var config int MUTONBELEAGUERGUN_BEAM_CLIPSIZE;
var config int MUTONBELEAGUERGUN_BEAM_ISOUNDRANGE;
var config int MUTONBELEAGUERGUN_BEAM_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Muton Harrier Rifle
//* -------------------------------------------------------

//* -------------------------------------------------------
//* Muton Harrier - Conventional
//* -------------------------------------------------------

var config WeaponDamageValue MUTONHARRIERLAUNCHER_CONVENTIONAL_BASEDAMAGE;

var config array<int> MUTONHARRIERLAUNCHER_CONVENTIONAL_RANGE;

var config int MUTONHARRIERLAUNCHER_CONVENTIONAL_AIM;
var config int MUTONHARRIERLAUNCHER_CONVENTIONAL_CRITCHANCE;
var config int MUTONHARRIERLAUNCHER_CONVENTIONAL_CLIPSIZE;
var config int MUTONHARRIERLAUNCHER_CONVENTIONAL_ISOUNDRANGE;
var config int MUTONHARRIERLAUNCHER_CONVENTIONAL_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Muton Harrier - Laser
//* -------------------------------------------------------

var config WeaponDamageValue MUTONHARRIERLAUNCHER_LASER_BASEDAMAGE;

var config array<int> MUTONHARRIERLAUNCHER_LASER_RANGE;

var config int MUTONHARRIERLAUNCHER_LASER_AIM;
var config int MUTONHARRIERLAUNCHER_LASER_CRITCHANCE;
var config int MUTONHARRIERLAUNCHER_LASER_CLIPSIZE;
var config int MUTONHARRIERLAUNCHER_LASER_ISOUNDRANGE;
var config int MUTONHARRIERLAUNCHER_LASER_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Muton Harrier - Magnetic
//* -------------------------------------------------------

var config WeaponDamageValue MUTONHARRIERLAUNCHER_MAGNETIC_BASEDAMAGE;

var config array<int> MUTONHARRIERLAUNCHER_MAGNETIC_RANGE;

var config int MUTONHARRIERLAUNCHER_MAGNETIC_AIM;
var config int MUTONHARRIERLAUNCHER_MAGNETIC_CRITCHANCE;
var config int MUTONHARRIERLAUNCHER_MAGNETIC_CLIPSIZE;
var config int MUTONHARRIERLAUNCHER_MAGNETIC_ISOUNDRANGE;
var config int MUTONHARRIERLAUNCHER_MAGNETIC_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Muton Harrier - Coil
//* -------------------------------------------------------

var config WeaponDamageValue MUTONHARRIERLAUNCHER_COIL_BASEDAMAGE;

var config array<int> MUTONHARRIERLAUNCHER_COIL_RANGE;

var config int MUTONHARRIERLAUNCHER_COIL_AIM;
var config int MUTONHARRIERLAUNCHER_COIL_CRITCHANCE;
var config int MUTONHARRIERLAUNCHER_COIL_CLIPSIZE;
var config int MUTONHARRIERLAUNCHER_COIL_ISOUNDRANGE;
var config int MUTONHARRIERLAUNCHER_COIL_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Muton Harrier - Beam
//* -------------------------------------------------------

var config WeaponDamageValue MUTONHARRIERLAUNCHER_BEAM_BASEDAMAGE;

var config array<int> MUTONHARRIERLAUNCHER_BEAM_RANGE;

var config int MUTONHARRIERLAUNCHER_BEAM_AIM;
var config int MUTONHARRIERLAUNCHER_BEAM_CRITCHANCE;
var config int MUTONHARRIERLAUNCHER_BEAM_CLIPSIZE;
var config int MUTONHARRIERLAUNCHER_BEAM_ISOUNDRANGE;
var config int MUTONHARRIERLAUNCHER_BEAM_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Andromedon Rifle - Conventional
//* -------------------------------------------------------

var config WeaponDamageValue ANDROMEDONRIFLE_CONVENTIONAL_BASEDAMAGE;

//* -------------------------------------------------------
//* Andromedon Rifle - Laser
//* -------------------------------------------------------

var config WeaponDamageValue ANDROMEDONRIFLE_LASER_BASEDAMAGE;

//* -------------------------------------------------------
//* Andromedon Rifle - Magnetic
//* -------------------------------------------------------

var config WeaponDamageValue ANDROMEDONRIFLE_MAGNETIC_BASEDAMAGE;

//* -------------------------------------------------------
//* Andromedon Rifle - Coil
//* -------------------------------------------------------

var config WeaponDamageValue ANDROMEDONRIFLE_COIL_BASEDAMAGE;

//* -------------------------------------------------------
//* Andromedon Rifle - Beam
//* -------------------------------------------------------

var config WeaponDamageValue ANDROMEDONRIFLE_BEAM_BASEDAMAGE;

//* ===========================================================================
//* Viper weapons
//* ===========================================================================

var config WeaponDamageValue PA_ViperTongue_Damage;

var config int PA_ViperTongueAim;

//* -------------------------------------------------------
//* Viper Acid Blob
//* -------------------------------------------------------

var config int PA_AcidBlobRange;
var config int PA_AcidBlobRadius;
var config int PA_AcidBlobClipSize;
var config bool PA_AcidBlobInfiniteAmmo;
var config int PA_AcidBlobSoundRange;

//* -------------------------------------------------------
//* Viper Rifle - Conventional
//* -------------------------------------------------------

var config WeaponDamageValue PA_ViperRifle_Conventional_BASEDAMAGE;

//* -------------------------------------------------------
//* Viper Rifle - Laser
//* -------------------------------------------------------

var config WeaponDamageValue PA_ViperRifle_Laser_BASEDAMAGE;

//* -------------------------------------------------------
//* Viper Rifle - Magnetic
//* -------------------------------------------------------

var config WeaponDamageValue PA_ViperRifle_Magnetic_BASEDAMAGE;

//* -------------------------------------------------------
//* Viper Rifle - Coil
//* -------------------------------------------------------

var config WeaponDamageValue PA_ViperRifle_Coil_BASEDAMAGE;

//* -------------------------------------------------------
//* Viper Rifle - Beam
//* -------------------------------------------------------

var config WeaponDamageValue PA_ViperRifle_Beam_BASEDAMAGE;

//* ===========================================================================
//* Archon weapons
//* ===========================================================================

//* -------------------------------------------------------
//* Archon Pinions
//* -------------------------------------------------------

var config WeaponDamageValue PA_ArchonPinions_BaseDamage;

var config int PA_ArchonPinions_Range;

var config int PA_ArchonPinions_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Archon Gun - Conventional
//* -------------------------------------------------------

var config WeaponDamageValue PA_ArchonGun_Conventional_BASEDAMAGE;

//* -------------------------------------------------------
//* Archon Gun - Laser
//* -------------------------------------------------------

var config WeaponDamageValue PA_ArchonGun_Laser_BASEDAMAGE;

//* -------------------------------------------------------
//* Archon Gun - Magnetic
//* -------------------------------------------------------

var config WeaponDamageValue PA_ArchonGun_Magnetic_BASEDAMAGE;

//* -------------------------------------------------------
//* Archon Gun - Coil
//* -------------------------------------------------------

var config WeaponDamageValue PA_ArchonGun_Coil_BASEDAMAGE;

//* -------------------------------------------------------
//* Archon Gun - Beam
//* -------------------------------------------------------

var config WeaponDamageValue PA_ArchonGun_Beam_BASEDAMAGE;

//! ===========================================================================

//* -------------------------------------------------------
//* Side Winder - Conventional
//* -------------------------------------------------------

// var config WeaponDamageValue SIDEWINDERGUN_CONVENTIONAL_BASEDAMAGE;

//* -------------------------------------------------------
//* Side Winder - Laser
//* -------------------------------------------------------

// var config WeaponDamageValue SIDEWINDERGUN_LASER_BASEDAMAGE;

//* -------------------------------------------------------
//* Side Winder - Magnetic
//* -------------------------------------------------------

// var config WeaponDamageValue SIDEWINDERGUN_MAGNETIC_BASEDAMAGE;

//* -------------------------------------------------------
//* Side Winder - Coil
//* -------------------------------------------------------

// var config WeaponDamageValue SIDEWINDERGUN_COIL_BASEDAMAGE;

//* -------------------------------------------------------
//* Side Winder - Beam
//* -------------------------------------------------------

// var config WeaponDamageValue SIDEWINDERGUN_BEAM_BASEDAMAGE;

//! ===========================================================================

//* -------------------------------------------------------
//* Naja Rifle
//* -------------------------------------------------------

// var config WeaponDamageValue NAJAGUN_CONVENTIONAL_BASEDAMAGE;
// var config WeaponDamageValue NAJAGUN_LASER_BASEDAMAGE;
// var config WeaponDamageValue NAJAGUN_MAGNETIC_BASEDAMAGE;
// var config WeaponDamageValue NAJAGUN_COIL_BASEDAMAGE;
// var config WeaponDamageValue NAJAGUN_BEAM_BASEDAMAGE;

// var config array<int> NAJAGUN_RANGE;


// var config int NAJAGUN_AIM;
// var config int NAJAGUN_CRITCHANCE;
// var config int NAJAGUN_ICLIPSIZE;
// var config int NAJAGUN_ISOUNDRANGE;

// var config int NAJAGUN_CONVENTIONAL_IENVIRONMENTDAMAGE;
// var config int NAJAGUN_LASER_IENVIRONMENTDAMAGE;
// var config int NAJAGUN_MAGNETIC_IENVIRONMENTDAMAGE;
// var config int NAJAGUN_COIL_IENVIRONMENTDAMAGE;
// var config int NAJAGUN_BEAM_IENVIRONMENTDAMAGE;

//* ===========================================================================
//* Frost Adder weapons
//* ===========================================================================

var config array<WeaponDamageValue> FrostAdder_M1_BindDamage;
var config array<WeaponDamageValue> FrostAdder_M2_BindDamage;
var config array<WeaponDamageValue> FrostAdder_M3_BindDamage;

var config WeaponDamageValue FrostAdder_M1_TailDamage;
var config WeaponDamageValue FrostAdder_M2_TailDamage;
var config WeaponDamageValue FrostAdder_M3_TailDamage;

//* -------------------------------------------------------
//* Frost Adder - Conventional
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostAdder_Conventional_BASEDAMAGE;

var config array<int> PA_FrostAdder_Conventional_Range;

var config int PA_FrostAdder_Conventional_AIM;
var config int PA_FrostAdder_Conventional_CRITCHANCE;
var config int PA_FrostAdder_Conventional_ICLIPSIZE;
var config int PA_FrostAdder_Conventional_ISOUNDRANGE;
var config int PA_FrostAdder_Conventional_IENVIRONMENTDAMAGE;


//* -------------------------------------------------------
//* Frost Adder - Laser
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostAdder_Laser_BASEDAMAGE;

var config array<int> PA_FrostAdder_Laser_Range;

var config int PA_FrostAdder_Laser_AIM;
var config int PA_FrostAdder_Laser_CRITCHANCE;
var config int PA_FrostAdder_Laser_ICLIPSIZE;
var config int PA_FrostAdder_Laser_ISOUNDRANGE;
var config int PA_FrostAdder_Laser_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Frost Adder - Magnetic
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostAdder_Magnetic_BASEDAMAGE;

var config array<int> PA_FrostAdder_Magnetic_Range;

var config int PA_FrostAdder_Magnetic_AIM;
var config int PA_FrostAdder_Magnetic_CRITCHANCE;
var config int PA_FrostAdder_Magnetic_ICLIPSIZE;
var config int PA_FrostAdder_Magnetic_ISOUNDRANGE;
var config int PA_FrostAdder_Magnetic_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Frost Adder - Coil
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostAdder_Coil_BASEDAMAGE;

var config array<int> PA_FrostAdder_Coil_Range;

var config int PA_FrostAdder_Coil_AIM;
var config int PA_FrostAdder_Coil_CRITCHANCE;
var config int PA_FrostAdder_Coil_ICLIPSIZE;
var config int PA_FrostAdder_Coil_ISOUNDRANGE;
var config int PA_FrostAdder_Coil_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Frost Adder - Beam
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostAdder_Beam_BASEDAMAGE;

var config array<int> PA_FrostAdder_Beam_Range;

var config int PA_FrostAdder_Beam_AIM;
var config int PA_FrostAdder_Beam_CRITCHANCE;
var config int PA_FrostAdder_Beam_ICLIPSIZE;
var config int PA_FrostAdder_Beam_ISOUNDRANGE;
var config int PA_FrostAdder_Beam_IENVIRONMENTDAMAGE;

//* ===========================================================================
//* Frost Bomber Rifle
//* ===========================================================================

var config weaponDamageValue FrostBomber_BAYONET_BASEDAMAGE;
var config weaponDamageValue FrostBomber_ELITEBAYONET_BASEDAMAGE;

//* -------------------------------------------------------
//* Frost Bomber - Conventional
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostBomber_Conventional_BASEDAMAGE;

var config array<int> PA_FrostBomber_Conventional_Range;

var config int PA_FrostBomber_Conventional_AIM;
var config int PA_FrostBomber_Conventional_CRITCHANCE;
var config int PA_FrostBomber_Conventional_ICLIPSIZE;
var config int PA_FrostBomber_Conventional_ISOUNDRANGE;
var config int PA_FrostBomber_Conventional_IENVIRONMENTDAMAGE;


//* -------------------------------------------------------
//* Frost Bomber - Laser
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostBomber_Laser_BASEDAMAGE;

var config array<int> PA_FrostBomber_Laser_Range;

var config int PA_FrostBomber_Laser_AIM;
var config int PA_FrostBomber_Laser_CRITCHANCE;
var config int PA_FrostBomber_Laser_ICLIPSIZE;
var config int PA_FrostBomber_Laser_ISOUNDRANGE;
var config int PA_FrostBomber_Laser_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Frost Bomber - Magnetic
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostBomber_Magnetic_BASEDAMAGE;

var config array<int> PA_FrostBomber_Magnetic_Range;

var config int PA_FrostBomber_Magnetic_AIM;
var config int PA_FrostBomber_Magnetic_CRITCHANCE;
var config int PA_FrostBomber_Magnetic_ICLIPSIZE;
var config int PA_FrostBomber_Magnetic_ISOUNDRANGE;
var config int PA_FrostBomber_Magnetic_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Frost Bomber - Coil
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostBomber_Coil_BASEDAMAGE;

var config array<int> PA_FrostBomber_Coil_Range;

var config int PA_FrostBomber_Coil_AIM;
var config int PA_FrostBomber_Coil_CRITCHANCE;
var config int PA_FrostBomber_Coil_ICLIPSIZE;
var config int PA_FrostBomber_Coil_ISOUNDRANGE;
var config int PA_FrostBomber_Coil_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Frost Bomber - Beam
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostBomber_Beam_BASEDAMAGE;

var config array<int> PA_FrostBomber_Beam_Range;

var config int PA_FrostBomber_Beam_AIM;
var config int PA_FrostBomber_Beam_CRITCHANCE;
var config int PA_FrostBomber_Beam_ICLIPSIZE;
var config int PA_FrostBomber_Beam_ISOUNDRANGE;
var config int PA_FrostBomber_Beam_IENVIRONMENTDAMAGE;

//* ===========================================================================
//* Frost Necromencer rifle
//* ===========================================================================

//* -------------------------------------------------------
//* Necromancer  - Conventional
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostNecromancer_Conventional_BASEDAMAGE;

var config array<int> PA_FrostNecromancer_Conventional_Range;

var config int PA_FrostNecromancer_Conventional_AIM;
var config int PA_FrostNecromancer_Conventional_CRITCHANCE;
var config int PA_FrostNecromancer_Conventional_ICLIPSIZE;
var config int PA_FrostNecromancer_Conventional_ISOUNDRANGE;
var config int PA_FrostNecromancer_Conventional_IENVIRONMENTDAMAGE;


//* -------------------------------------------------------
//* Necromancer  - Laser
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostNecromancer_Laser_BASEDAMAGE;

var config array<int> PA_FrostNecromancer_Laser_Range;

var config int PA_FrostNecromancer_Laser_AIM;
var config int PA_FrostNecromancer_Laser_CRITCHANCE;
var config int PA_FrostNecromancer_Laser_ICLIPSIZE;
var config int PA_FrostNecromancer_Laser_ISOUNDRANGE;
var config int PA_FrostNecromancer_Laser_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Necromancer  - Magnetic
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostNecromancer_Magnetic_BASEDAMAGE;

var config array<int> PA_FrostNecromancer_Magnetic_Range;

var config int PA_FrostNecromancer_Magnetic_AIM;
var config int PA_FrostNecromancer_Magnetic_CRITCHANCE;
var config int PA_FrostNecromancer_Magnetic_ICLIPSIZE;
var config int PA_FrostNecromancer_Magnetic_ISOUNDRANGE;
var config int PA_FrostNecromancer_Magnetic_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Necromancer  - Coil
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostNecromancer_Coil_BASEDAMAGE;

var config array<int> PA_FrostNecromancer_Coil_Range;

var config int PA_FrostNecromancer_Coil_AIM;
var config int PA_FrostNecromancer_Coil_CRITCHANCE;
var config int PA_FrostNecromancer_Coil_ICLIPSIZE;
var config int PA_FrostNecromancer_Coil_ISOUNDRANGE;
var config int PA_FrostNecromancer_Coil_IENVIRONMENTDAMAGE;

//* -------------------------------------------------------
//* Necromancer  - Beam
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostNecromancer_Beam_BASEDAMAGE;

var config array<int> PA_FrostNecromancer_Beam_Range;

var config int PA_FrostNecromancer_Beam_AIM;
var config int PA_FrostNecromancer_Beam_CRITCHANCE;
var config int PA_FrostNecromancer_Beam_ICLIPSIZE;
var config int PA_FrostNecromancer_Beam_ISOUNDRANGE;
var config int PA_FrostNecromancer_Beam_IENVIRONMENTDAMAGE;

//* ===========================================================================
//* Frost Blob
//* ===========================================================================

var config WeaponDamageValue PA_FROSTBLOB_BASEDAMAGE;

//* ===========================================================================
//* Archon Bayonet
//* ===========================================================================

var config WeaponDamageValue ARCHON_BAYONET_BASEDAMAGE;
var config WeaponDamageValue ARCHON_ELITEBAYONET_BASEDAMAGE;

//* ===========================================================================
//* Sectoid Rifle
//* ===========================================================================

var config array <WeaponDamageValue> T1_SECTOID_PSIAMP_EXTRA_DAMAGE;
var config array <WeaponDamageValue> T2_SECTOID_PSIAMP_EXTRA_DAMAGE;
var config array <WeaponDamageValue> T3_SECTOID_PSIAMP_EXTRA_DAMAGE;

//* -------------------------------------------------------
//* Sectoid Blaster - Conventional
//* -------------------------------------------------------

var config WeaponDamageValue SECTOIDBLASTER_CONVENTIONAL_BASEDAMAGE;

//* -------------------------------------------------------
//* Sectoid Blaster - Laser
//* -------------------------------------------------------

var config WeaponDamageValue SECTOIDBLASTER_LASER_BASEDAMAGE;

//* -------------------------------------------------------
//* Sectoid Blaster - Magnetic
//* -------------------------------------------------------

var config WeaponDamageValue SECTOIDBLASTER_MAGNETIC_BASEDAMAGE;

//* -------------------------------------------------------
//* Sectoid Blaster - Coil
//* -------------------------------------------------------

var config WeaponDamageValue SECTOIDBLASTER_COIL_BASEDAMAGE;

//* -------------------------------------------------------
//* Sectoid Blaster - Beam
//* -------------------------------------------------------

var config WeaponDamageValue SECTOIDBLASTER_BEAM_BASEDAMAGE;

//* -------------------------------------------------------
//* Poison / Frost Blob
//* -------------------------------------------------------

var config WeaponDamageValue PA_FrostSpitGlob_Damage;
var config WeaponDamageValue PA_Andromedon_AcidBlob_Damage;
var config WeaponDamageValue PA_AcidBlob_BaseDamage;

var config int PA_PoisonSpitRadius;
var config int PA_PoisonSpitRange;
var config int PA_PoisonSpitClipSize; // 7
var config int PA_PoisonSpitSoundRange; // 6


var config int PA_FrostBlobRange; //14
var config int PA_FrostBlobRadius; // 4
var config int PA_FrostBlobClipSize; // 1
var config int PA_FrostBlobSoundRange; // 6


var config int PA_Andromedon_AcidBlob_Range;// 14
var config int PA_Andromedon_AcidBlob_Radius; //4
var config int PA_Andromedon_AcidBlob_ClipSize; // 1
var config int PA_Andromedon_AcidBlob_SoundRange; // 6

var config int PA_FrostSpitRange;
var config int PA_FrostSpitRadius;
var config int PA_FrostSpitClipSize;
var config int PA_FrostSpitSoundRange;

var config(AlienGearCosts) int LASER_ALIEN_GUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> LASER_ALIEN_GUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> LASER_ALIEN_GUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> LASER_ALIEN_GUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int LASER_ALIEN_GUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int MAGNETIC_ALIEN_GUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> MAGNETIC_ALIEN_GUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> MAGNETIC_ALIEN_GUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> MAGNETIC_ALIEN_GUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int COIL_ALIEN_GUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> COIL_ALIEN_GUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> COIL_ALIEN_GUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> COIL_ALIEN_GUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int COIL_ALIEN_GUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int BEAM_ALIEN_GUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> BEAM_ALIEN_GUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> BEAM_ALIEN_GUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> BEAM_ALIEN_GUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int BEAM_ALIEN_GUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int LASER_ALIEN_BIGGUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> LASER_ALIEN_BIGGUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> LASER_ALIEN_BIGGUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> LASER_ALIEN_BIGGUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int LASER_ALIEN_BIGGUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int MAGNETIC_ALIEN_BIGGUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> MAGNETIC_ALIEN_BIGGUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> MAGNETIC_ALIEN_BIGGUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> MAGNETIC_ALIEN_BIGGUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int MAGNETIC_ALIEN_BIGGUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int COIL_ALIEN_BIGGUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> COIL_ALIEN_BIGGUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> COIL_ALIEN_BIGGUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> COIL_ALIEN_BIGGUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int COIL_ALIEN_BIGGUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int BEAM_ALIEN_BIGGUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> BEAM_ALIEN_BIGGUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> BEAM_ALIEN_BIGGUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> BEAM_ALIEN_BIGGUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int BEAM_ALIEN_BIGGUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int LASER_ALIEN_LONGGUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> LASER_ALIEN_LONGGUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> LASER_ALIEN_LONGGUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> LASER_ALIEN_LONGGUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int LASER_ALIEN_LONGGUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int MAGNETIC_ALIEN_LONGGUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> MAGNETIC_ALIEN_LONGGUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> MAGNETIC_ALIEN_LONGGUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> MAGNETIC_ALIEN_LONGGUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int MAGNETIC_ALIEN_LONGGUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int COIL_ALIEN_LONGGUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> COIL_ALIEN_LONGGUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> COIL_ALIEN_LONGGUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> COIL_ALIEN_LONGGUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int COIL_ALIEN_LONGGUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int BEAM_ALIEN_LONGGUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> BEAM_ALIEN_LONGGUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> BEAM_ALIEN_LONGGUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> BEAM_ALIEN_LONGGUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int BEAM_ALIEN_LONGGUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int LASER_ALIEN_SHOTGUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> LASER_ALIEN_SHOTGUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> LASER_ALIEN_SHOTGUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> LASER_ALIEN_SHOTGUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int LASER_ALIEN_SHOTGUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int MAGNETIC_ALIEN_SHOTGUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> MAGNETIC_ALIEN_SHOTGUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> MAGNETIC_ALIEN_SHOTGUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> MAGNETIC_ALIEN_SHOTGUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int MAGNETIC_ALIEN_SHOTGUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int COIL_ALIEN_SHOTGUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> COIL_ALIEN_SHOTGUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> COIL_ALIEN_SHOTGUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> COIL_ALIEN_SHOTGUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int COIL_ALIEN_SHOTGUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int BEAM_ALIEN_SHOTGUN_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> BEAM_ALIEN_SHOTGUN_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> BEAM_ALIEN_SHOTGUN_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> BEAM_ALIEN_SHOTGUN_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int BEAM_ALIEN_SHOTGUN_ENGINEERING_SCORE;

var config(AlienGearCosts) int MAGNETIC_SECTOID_PSIAMP_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> MAGNETIC_SECTOID_PSIAMP_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> MAGNETIC_SECTOID_PSIAMP_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> MAGNETIC_SECTOID_PSIAMP_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int MAGNETIC_SECTOID_PSIAMP_ENGINEERING_SCORE;

var config(AlienGearCosts) int BEAM_SECTOID_PSIAMP_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> BEAM_SECTOID_PSIAMP_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> BEAM_SECTOID_PSIAMP_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> BEAM_SECTOID_PSIAMP_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int BEAM_SECTOID_PSIAMP_ENGINEERING_SCORE;

var config(AlienGearCosts) int MAGNETIC_ADDER_TAIL_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> MAGNETIC_ADDER_TAIL_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> MAGNETIC_ADDER_TAIL_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> MAGNETIC_ADDER_TAIL_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int MAGNETIC_ADDER_TAIL_ENGINEERING_SCORE;

var config(AlienGearCosts) int BEAM_ADDER_TAIL_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> BEAM_ADDER_TAIL_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> BEAM_ADDER_TAIL_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> BEAM_ADDER_TAIL_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int BEAM_ADDER_TAIL_ENGINEERING_SCORE;

var config(AlienGearCosts) int BEAM_MUTON_BAYONET_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> BEAM_MUTON_BAYONET_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> BEAM_MUTON_BAYONET_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> BEAM_MUTON_BAYONET_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int BEAM_MUTON_BAYONET_ENGINEERING_SCORE;

var config(AlienGearCosts) int BEAM_BOMBER_BAYONET_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> BEAM_BOMBER_BAYONET_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> BEAM_BOMBER_BAYONET_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> BEAM_BOMBER_BAYONET_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int BEAM_BOMBER_BAYONET_ENGINEERING_SCORE;

var config(AlienGearCosts) int BEAM_ARCHON_BAYONET_BLACKMARKET_VALUE;
var config(AlienGearCosts) array<name> BEAM_ARCHON_BAYONET_REQUIRED_TECHS;
var config(AlienGearCosts) array<name> BEAM_ARCHON_BAYONET_BUILD_COST_TYPE;
var config(AlienGearCosts) array<int> BEAM_ARCHON_BAYONET_BUILD_COST_QUANTITY;
var config(AlienGearCosts) int BEAM_ARCHON_BAYONET_ENGINEERING_SCORE;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> ModWeapons;
	ModWeapons.AddItem(CreateTemplate_PA_ArchonGun());
	ModWeapons.AddItem(CreateTemplate_PA_ArchonGunLaser());
	ModWeapons.AddItem(CreateTemplate_PA_ArchonGunMagnetic());
	ModWeapons.AddItem(CreateTemplate_PA_ArchonGunCoil());
	ModWeapons.AddItem(CreateTemplate_PA_ArchonGunBeam());
	ModWeapons.AddItem(CreateTemplate_PA_ArchonBayonet());
	ModWeapons.AddItem(CreateTemplate_PA_ArchonEliteBayonet());
	ModWeapons.AddItem(CreateTemplate_PA_ArchonPinions());

	ModWeapons.AddItem(CreateTemplate_PA_SectoidGun());
	ModWeapons.AddItem(CreateTemplate_PA_SectoidGunLaser());
	ModWeapons.AddItem(CreateTemplate_PA_SectoidGunMagnetic());
	ModWeapons.AddItem(CreateTemplate_PA_SectoidGunCoil());
	ModWeapons.AddItem(CreateTemplate_PA_SectoidGunBeam());
	
	ModWeapons.AddItem(CreateSectoid_Amp());
	ModWeapons.AddItem(CreateSectoid_Amp_MG());
	ModWeapons.AddItem(CreateSectoid_Amp_BM());

	ModWeapons.AddItem(CreateTemplate_PA_ViperGun());
	ModWeapons.AddItem(CreateTemplate_PA_ViperGunLaser());
	ModWeapons.AddItem(CreateTemplate_PA_ViperGunMagnetic());
	ModWeapons.AddItem(CreateTemplate_PA_ViperGunCoil());
	ModWeapons.AddItem(CreateTemplate_PA_ViperGunBeam());

	ModWeapons.AddItem(CreateTemplate_PA_ViperTongue());
	ModWeapons.AddItem(CreateTemplate_PA_PoisonSpitGlob());
	ModWeapons.AddItem(CreateTemplate_PA_ViperFrostSpitGlob());

	ModWeapons.AddItem(CreateTemplate_PA_MutonGun());
	ModWeapons.AddItem(CreateTemplate_PA_MutonGunLaser());
	ModWeapons.AddItem(CreateTemplate_PA_MutonGunMagnetic());
	ModWeapons.AddItem(CreateTemplate_PA_MutonGunCoil());
	ModWeapons.AddItem(CreateTemplate_PA_MutonGunBeam());

	ModWeapons.AddItem(CreateTemplate_PA_MutonBayonet());
	ModWeapons.AddItem(CreateTemplate_PA_MutonEliteBayonet());

	ModWeapons.AddItem(CreateTemplate_PA_MutonCannon());
	ModWeapons.AddItem(CreateTemplate_PA_MutonCannonLaser());
	ModWeapons.AddItem(CreateTemplate_PA_MutonCannonMagnetic());
	ModWeapons.AddItem(CreateTemplate_PA_MutonCannonCoil());
	ModWeapons.AddItem(CreateTemplate_PA_MutonCannonBeam());

	ModWeapons.AddItem(CreateTemplate_PA_MutonHarrierLauncher());
	ModWeapons.AddItem(CreateTemplate_PA_MutonHarrierLauncherLaser());
	ModWeapons.AddItem(CreateTemplate_PA_MutonHarrierLauncherMagnetic());
	ModWeapons.AddItem(CreateTemplate_PA_MutonHarrierLauncherCoil());
	ModWeapons.AddItem(CreateTemplate_PA_MutonHarrierLauncherBeam());

	ModWeapons.AddItem(CreateTemplate_PA_MutonStalkerGun());
	ModWeapons.AddItem(CreateTemplate_PA_MutonStalkerGunLaser());
	ModWeapons.AddItem(CreateTemplate_PA_MutonStalkerGunMagnetic());
	ModWeapons.AddItem(CreateTemplate_PA_MutonStalkerGunCoil());
	ModWeapons.AddItem(CreateTemplate_PA_MutonStalkerGunBeam());

	ModWeapons.AddItem(CreateTemplate_PA_MutonBeleaguerGun());
	ModWeapons.AddItem(CreateTemplate_PA_MutonBeleaguerGunLaser());
	ModWeapons.AddItem(CreateTemplate_PA_MutonBeleaguerGunMagnetic());
	ModWeapons.AddItem(CreateTemplate_PA_MutonBeleaguerGunCoil());
	ModWeapons.AddItem(CreateTemplate_PA_MutonBeleaguerGunBeam());

	// ModWeapons.AddItem(CreateTemplate_PA_SidewinderGun());
	// ModWeapons.AddItem(CreateTemplate_PA_SidewinderGunLaser());
	// ModWeapons.AddItem(CreateTemplate_PA_SidewinderGunMagnetic());
	// ModWeapons.AddItem(CreateTemplate_PA_SidewinderGunCoil());
	// ModWeapons.AddItem(CreateTemplate_PA_SidewinderGunBeam());

	// ModWeapons.AddItem(CreateTemplate_PA_NajaGun());
	// ModWeapons.AddItem(CreateTemplate_PA_NajaGunLaser());
	// ModWeapons.AddItem(CreateTemplate_PA_NajaGunMagnetic());
	// ModWeapons.AddItem(CreateTemplate_PA_NajaGunCoil());
	// ModWeapons.AddItem(CreateTemplate_PA_NajaGunBeam());

	ModWeapons.AddItem(CreateTemplate_PA_AndromedonGun());
	ModWeapons.AddItem(CreateTemplate_PA_AndromedonGunLaser());
	ModWeapons.AddItem(CreateTemplate_PA_AndromedonGunMagnetic());
	ModWeapons.AddItem(CreateTemplate_PA_AndromedonGunCoil());
	ModWeapons.AddItem(CreateTemplate_PA_AndromedonGunBeam());
	ModWeapons.AddItem(CreateTemplate_PA_AcidBlob());
	ModWeapons.AddItem(CreateTemplate_PA_FrostBlob());

	ModWeapons.AddItem(CreateTemplate_PA_FrostAdderGun());
	ModWeapons.AddItem(CreateTemplate_PA_FrostAdderGunLaser());
	ModWeapons.AddItem(CreateTemplate_PA_FrostAdderGunMagnetic());
	ModWeapons.AddItem(CreateTemplate_PA_FrostAdderGunCoil());
	ModWeapons.AddItem(CreateTemplate_PA_FrostAdderGunBeam());

	ModWeapons.AddItem(CreateTemplate_PA_AdderTail_CV());
	ModWeapons.AddItem(CreateTemplate_PA_AdderTail_MG());
	ModWeapons.AddItem(CreateTemplate_PA_AdderTail_BM());

	ModWeapons.AddItem(CreateTemplate_PA_FrostBomberGun());
	ModWeapons.AddItem(CreateTemplate_PA_FrostBomberGunLaser());
	ModWeapons.AddItem(CreateTemplate_PA_FrostBomberGunMagnetic());
	ModWeapons.AddItem(CreateTemplate_PA_FrostBomberGunCoil());
	ModWeapons.AddItem(CreateTemplate_PA_FrostBomberGunBeam());

	ModWeapons.AddItem(CreateTemplate_PA_FrostBomberBayonet());
	ModWeapons.AddItem(CreateTemplate_PA_FrostBomberEliteBayonet());

	ModWeapons.AddItem(CreateTemplate_PA_FrostNecromancerGun());
	ModWeapons.AddItem(CreateTemplate_PA_FrostNecromancerGunLaser());
	ModWeapons.AddItem(CreateTemplate_PA_FrostNecromancerGunMagnetic());
	ModWeapons.AddItem(CreateTemplate_PA_FrostNecromancerGunCoil());
	ModWeapons.AddItem(CreateTemplate_PA_FrostNecromancerGunBeam());

	return ModWeapons;
}


static function X2DataTemplate CreateTemplate_PA_AndromedonGun()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_AndromedonGun');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_AndromedonGunCat';
	Template.WeaponTech = 'conventional';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.AndromedonRifle";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 0;
	Template.RangeAccuracy = default.LMG_ALL_RANGE;
	Template.BaseDamage = default.ANDROMEDONRIFLE_CONVENTIONAL_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_IENVIRONMENTDAMAGE;
	Template.iIdealRange = class'X2Item_DefaultWeapons'.default.ANDROMEDON_IDEALRANGE;
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Andromedon_Cannon.WP_AndromedonCannon";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.TradingPostValue = 30;
	Template.bInfiniteItem = true;
	Template.StartingItem = true;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_AndromedonGunLaser()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_AndromedonGunLaser');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_AndromedonGunCat';
	Template.WeaponTech = 'laser_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.AndromedonRifle";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 150;
	Template.RangeAccuracy = default.LMG_ALL_RANGE;
	Template.BaseDamage = default.ANDROMEDONRIFLE_LASER_BASEDAMAGE;
	Template.Aim = default.LASERWEAPONAIMBONUS;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_IENVIRONMENTDAMAGE;
	Template.iIdealRange = class'X2Item_DefaultWeapons'.default.ANDROMEDON_IDEALRANGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Andromedon_Cannon.WP_AndromedonCannon";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.LASER_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'AndromedonClass';

	if (default.LASER_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.LASER_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.LASER_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.LASER_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.LASER_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.LASER_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_AndromedonGunMagnetic()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_AndromedonGunMagnetic');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_AndromedonGunCat';
	Template.WeaponTech = 'magnetic';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.AndromedonRifle";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 160;

	Template.RangeAccuracy = default.LMG_ALL_RANGE;
	Template.BaseDamage = default.ANDROMEDONRIFLE_MAGNETIC_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_IENVIRONMENTDAMAGE;
	Template.iIdealRange = class'X2Item_DefaultWeapons'.default.ANDROMEDON_IDEALRANGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Andromedon_Cannon.WP_AndromedonCannon";
	Template.iPhysicsImpulse = 5;
	
	// Template.CreatorTemplateName = 'Cannon_MG_Schematic';
	// Template.BaseItem = 'PA_AndromedonGun'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.Requirements.RequiredSoldierClass = 'AndromedonClass';

	if (default.MAGNETIC_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_AndromedonGunCoil()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_AndromedonGunCoil');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_AndromedonGunCat';
	Template.WeaponTech = 'coilgun_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.AndromedonRifle";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 170;
	Template.RangeAccuracy = default.LMG_ALL_RANGE;
	Template.BaseDamage = default.ANDROMEDONRIFLE_COIL_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_IENVIRONMENTDAMAGE;
	Template.iIdealRange = class'X2Item_DefaultWeapons'.default.ANDROMEDON_IDEALRANGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('CoilgunBonusShredAbility');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Andromedon_Cannon.WP_AndromedonCannon";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.COIL_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.Requirements.RequiredSoldierClass = 'AndromedonClass';

	if (default.COIL_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.COIL_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.COIL_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.COIL_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.COIL_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.COIL_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	return Template;
}


static function X2DataTemplate CreateTemplate_PA_AndromedonGunBeam()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_AndromedonGunBeam');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_AndromedonGunCat';
	Template.WeaponTech = 'beam';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.AndromedonRifle";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 180;

	Template.RangeAccuracy = default.LMG_ALL_RANGE;
	Template.BaseDamage = default.ANDROMEDONRIFLE_BEAM_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_BEAM_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_BEAM_IENVIRONMENTDAMAGE;
	Template.iIdealRange = class'X2Item_DefaultWeapons'.default.ANDROMEDON_IDEALRANGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Andromedon_Cannon.WP_AndromedonCannon";
	Template.iPhysicsImpulse = 5;
	
	// Template.CreatorTemplateName = 'Cannon_BM_Schematic';
	// Template.BaseItem = 'PA_AndromedonGun_MG'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.Requirements.RequiredSoldierClass = 'AndromedonClass';

	if (default.BEAM_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


static function X2DataTemplate CreateTemplate_PA_AcidBlob()
{
	local X2WeaponTemplate Template;

	Template = new class'X2WeaponTemplate';
	
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_AcidBlob');

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_AcidBlobCat';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.AndromedonRifle";
	Template.EquipSound = "StrategyUI_Grenade_Equip";
	Template.GameArchetype = "WP_Andromedon_AcidAttack.WP_Andromedon_AcidAttack";
	Template.CanBeBuilt = false;

	Template.iRange = default.PA_Andromedon_AcidBlob_Range; 
	Template.iRadius = default.PA_Andromedon_AcidBlob_Radius;
	Template.iClipSize = default.PA_Andromedon_AcidBlob_ClipSize;
	Template.InfiniteAmmo = true;
	Template.StartingItem = true;
	Template.bInfiniteItem = true;
	Template.iSoundRange = default.PA_Andromedon_AcidBlob_SoundRange;
	Template.bSoundOriginatesFromOwnerLocation = false;

	Template.BaseDamage.DamageType = 'Acid';
	Template.BaseDamage = default.PA_Andromedon_AcidBlob_Damage;
	
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.StowedLocation = eSlot_None;

	Template.Abilities.AddItem('AcidBlob');

	return Template;
}



// **************************************************************************
// ***                       Psi Amps                                     ***
// **************************************************************************

static function X2DataTemplate CreateSectoid_Amp()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'SectoidAmp_CV');
	Template.WeaponPanelImage = "_PsiAmp";                       // used by the UI. Probably determines iconview of the weapon.

	Template.ItemCat = 'weapon';
	Template.DamageTypeTemplateName = 'Psi';
	Template.WeaponCat = 'sectoidpsiamp';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///UILibrary_Common.ConvSecondaryWeapons.PsiAmp";
	Template.EquipSound = "Psi_Amp_Equip";
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.StowedLocation = eSlot_RightBack;
	Template.Tier = 0;
	// This all the resources; sounds, animations, models, physics, the works.
	
	//Template.GameArchetype = "WP_PsiAmp_CV.WP_PsiAmp_CV";

	Template.Abilities.AddItem('PsiAmpCV_BonusStats');

	Template.ExtraDamage = default.T1_SECTOID_PSIAMP_EXTRA_DAMAGE;

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	// Show In Armory Requirements
	//Template.ArmoryDisplayRequirements.RequiredTechs.AddItem('Psionics');

	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense, class'X2Ability_ItemGrantedAbilitySet'.default.PSIAMP_CV_STATBONUS, true);

	return Template;
}

static function X2DataTemplate CreateSectoid_Amp_MG()
{
	local X2WeaponTemplate Template;
	local StrategyRequirement AltReq, AltReq2;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'SectoidAmp_MG');
	Template.WeaponPanelImage = "_PsiAmp";                       // used by the UI. Probably determines iconview of the weapon.

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sectoidpsiamp';
	Template.DamageTypeTemplateName = 'Psi';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///UILibrary_Common.MagSecondaryWeapons.MagPsiAmp";
	Template.EquipSound = "Psi_Amp_Equip";
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.StowedLocation = eSlot_RightBack;
	Template.Tier = 102;
	// This all the resources; sounds, animations, models, physics, the works.
	
	//Template.GameArchetype = "WP_PsiAmp_MG.WP_PsiAmp_MG";

	Template.Abilities.AddItem('PsiAmpMG_BonusStats');

	Template.ExtraDamage = default.T2_SECTOID_PSIAMP_EXTRA_DAMAGE;

	// Template.CreatorTemplateName = 'PsiAmp_MG_Schematic'; // The schematic which creates this item
	// Template.BaseItem = 'SectoidAmp_CV'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_SECTOID_PSIAMP_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense, class'X2Ability_ItemGrantedAbilitySet'.default.PSIAMP_MG_STATBONUS);

	Template.Requirements.RequiredSoldierClass = 'SectoidClass';
	Template.Requirements.RequiredTechs = default.MAGNETIC_SECTOID_PSIAMP_REQUIRED_TECHS;
	if (default.MAGNETIC_SECTOID_PSIAMP_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_SECTOID_PSIAMP_ENGINEERING_SCORE;

	AltReq.RequiredSoldierClass = 'FrostNecromancerClass';
	AltReq.RequiredTechs = default.MAGNETIC_SECTOID_PSIAMP_REQUIRED_TECHS;
	if (default.MAGNETIC_SECTOID_PSIAMP_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.MAGNETIC_SECTOID_PSIAMP_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

	AltReq2.RequiredSoldierClass = 'SectoidAbjurerClass';
	AltReq2.RequiredTechs = default.MAGNETIC_SECTOID_PSIAMP_REQUIRED_TECHS;
	if (default.MAGNETIC_SECTOID_PSIAMP_ENGINEERING_SCORE > 0) AltReq2.RequiredEngineeringScore = default.MAGNETIC_SECTOID_PSIAMP_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq2);

			for (i = 0; i < default.MAGNETIC_SECTOID_PSIAMP_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_SECTOID_PSIAMP_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_SECTOID_PSIAMP_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_SECTOID_PSIAMP_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateSectoid_Amp_BM()
{
	local X2WeaponTemplate Template;
	local StrategyRequirement AltReq, AltReq2;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'SectoidAmp_BM');
	Template.WeaponPanelImage = "_PsiAmp";                       // used by the UI. Probably determines iconview of the weapon.

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sectoidpsiamp';
	Template.DamageTypeTemplateName = 'Psi';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///UILibrary_Common.BeamSecondaryWeapons.BeamPsiAmp";
	Template.EquipSound = "Psi_Amp_Equip";
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.StowedLocation = eSlot_RightBack;
	Template.Tier = 104;
	// This all the resources; sounds, animations, models, physics, the works.
	
	Template.GameArchetype = "WP_PsiAmp_BM.WP_PsiAmp_BM";

	Template.Abilities.AddItem('PsiAmpBM_BonusStats');

	Template.ExtraDamage = default.T3_SECTOID_PSIAMP_EXTRA_DAMAGE;

	// Template.CreatorTemplateName = 'PsiAmp_BM_Schematic'; // The schematic which creates this item
	// Template.BaseItem = 'SectoidAmp_MG'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_SECTOID_PSIAMP_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense, class'X2Ability_ItemGrantedAbilitySet'.default.PSIAMP_BM_STATBONUS);

	Template.Requirements.RequiredSoldierClass = 'SectoidClass';
	Template.Requirements.RequiredTechs = default.BEAM_SECTOID_PSIAMP_REQUIRED_TECHS;
	if (default.BEAM_SECTOID_PSIAMP_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_SECTOID_PSIAMP_ENGINEERING_SCORE;

	AltReq.RequiredSoldierClass = 'FrostNecromancerClass';
	AltReq.RequiredTechs = default.BEAM_SECTOID_PSIAMP_REQUIRED_TECHS;
	if (default.BEAM_SECTOID_PSIAMP_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.BEAM_SECTOID_PSIAMP_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

	AltReq2.RequiredSoldierClass = 'SectoidAbjurerClass';
	AltReq2.RequiredTechs = default.BEAM_SECTOID_PSIAMP_REQUIRED_TECHS;
	if (default.BEAM_SECTOID_PSIAMP_ENGINEERING_SCORE > 0) AltReq2.RequiredEngineeringScore = default.BEAM_SECTOID_PSIAMP_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq2);

			for (i = 0; i < default.BEAM_SECTOID_PSIAMP_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_SECTOID_PSIAMP_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_SECTOID_PSIAMP_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_SECTOID_PSIAMP_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


// Vanilla weapon has WeaponCat rifle, so anybody could use it
static function X2DataTemplate CreateTemplate_PA_ViperGun()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_ViperGun');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_ViperGunCat';
	Template.WeaponTech = 'conventional';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.ViperRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.PA_ViperRifle_Conventional_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_IENVIRONMENTDAMAGE;
	Template.Tier = 0;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Viper_Rifle.WP_ViperRifle";
	Template.iPhysicsImpulse = 5;

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.TradingPostValue = 30;
	Template.bInfiniteItem = true;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_ViperGunLaser()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_ViperGunLaser');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_ViperGunCat';
	Template.WeaponTech = 'laser_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.ViperRifle";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.PA_ViperRifle_Laser_BASEDAMAGE;
	Template.Aim = default.LASERWEAPONAIMBONUS;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	Template.Tier = 150;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Viper_Rifle.WP_ViperRifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.LASER_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'ViperClass3';

	if (default.LASER_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.LASER_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.LASER_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.LASER_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.LASER_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.LASER_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


// Vanilla weapon has WeaponCat rifle, so anybody could use it
static function X2DataTemplate CreateTemplate_PA_ViperGunMagnetic()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_ViperGunMagnetic');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_ViperGunCat';
	Template.WeaponTech = 'magnetic';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.ViperRifle";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 160;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.PA_ViperRifle_Magnetic_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Viper_Rifle.WP_ViperRifle";
	Template.iPhysicsImpulse = 5;

	// Template.CreatorTemplateName = 'SniperRifle_MG_Schematic';
	// Template.BaseItem = 'PA_ViperGun'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'ViperClass3';

	if (default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.MAGNETIC_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_ViperGunCoil()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_ViperGunCoil');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_ViperGunCat';
	Template.WeaponTech = 'coilgun_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.ViperRifle";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.PA_ViperRifle_Coil_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	Template.Tier = 170;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('CoilgunBonusShredAbility');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Viper_Rifle.WP_ViperRifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.COIL_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'ViperClass3';

	if (default.COIL_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.COIL_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.COIL_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.COIL_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.COIL_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.COIL_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_ViperGunBeam()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_ViperGunBeam');

	Template.WeaponPanelImage = "_BeamRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_ViperGunCat';
	Template.WeaponTech = 'beam';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.ViperRifle";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 180;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_BEAM_RANGE;
	Template.BaseDamage = default.PA_ViperRifle_Beam_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Viper_Rifle.WP_ViperRifle";
	Template.iPhysicsImpulse = 5;
	
	// Template.CreatorTemplateName = 'SniperRifle_BM_Schematic';
	// Template.BaseItem = 'PA_ViperGunMagnetic'; // Which item this will be upgraded from


	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'ViperClass3';

	if (default.BEAM_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_PoisonSpitGlob()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_PoisonSpitGlob');

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_PoisonSpitGlobCat';
	Template.strImage = "img:///UILibrary_PlayableAdvent.ViperTongue";
	Template.EquipSound = "StrategyUI_Grenade_Equip";
	Template.GameArchetype = "WP_Viper_PoisonSpit.WP_Viper_PoisonSpit";
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.iRange = default.PA_PoisonSpitRange;
	Template.iRadius = default.PA_PoisonSpitRadius;
	Template.iClipSize = default.PA_PoisonSpitClipSize;
	Template.InfiniteAmmo = true;
	Template.bHideClipSizeStat = true;
	Template.iSoundRange = default.PA_PoisonSpitSoundRange;
	Template.bSoundOriginatesFromOwnerLocation = true;
	Template.InventorySlot = eInvSlot_TertiaryWeapon; // was utility
	Template.StowedLocation = eSlot_None;
	Template.Abilities.AddItem('PA_PoisonSpit');
	Template.WeaponPrecomputedPathData.InitialPathTime = 0.5;
	Template.WeaponPrecomputedPathData.MaxPathTime = 1.0;
	Template.WeaponPrecomputedPathData.MaxNumberOfBounces = 0;
	Template.StartingItem = true;

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_ViperFrostSpitGlob()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostSpitGlob');

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_FrostSpitGlobCat';
	Template.strImage = "img:///UILibrary_PlayableAdvent.ViperTongue";
	Template.EquipSound = "StrategyUI_Grenade_Equip";
	Template.GameArchetype = "DLC_60_WP_Viper_Frost_Spit.WP_Viper_Frost_Spit";
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.iRange = default.PA_FrostBlobRange;
	Template.iRadius = default.PA_FrostBlobRadius;
	Template.iClipSize = default.PA_FrostBlobClipSize;
	Template.InfiniteAmmo = true;
	Template.bHideClipSizeStat = true;
	Template.iSoundRange = default.PA_FrostBlobSoundRange;

	Template.BaseDamage.DamageType = 'Frost';
	Template.BaseDamage = default.PA_FrostSpitGlob_Damage;

	Template.bSoundOriginatesFromOwnerLocation = true;
	Template.InventorySlot = eInvSlot_TertiaryWeapon; // was utility
	Template.StowedLocation = eSlot_None;
	Template.Abilities.AddItem('MZ_FDFrostSpit');
	Template.WeaponPrecomputedPathData.InitialPathTime = 0.5;
	Template.WeaponPrecomputedPathData.MaxPathTime = 1.0;
	Template.WeaponPrecomputedPathData.MaxNumberOfBounces = 0;
	Template.StartingItem = true;

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_ViperTongue()
{
	local X2PairedWeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2PairedWeaponTemplate', Template, 'PA_ViperTongue');

	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_ViperTongueCat';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///UILibrary_PlayableAdvent.ViperTongue";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Aim = default.PA_ViperTongueAim;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.FLAT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.PA_ViperTongue_Damage;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	Template.iIdealRange = class'X2Item_DefaultWeapons'.default.VIPER_IDEALRANGE;
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	// grant in classdata.ini instead: Template.Abilities.AddItem('GetOverHere');
	Template.GameArchetype = "WP_Viper_Strangle_and_Pull.WP_Viper_Strangle_and_Pull";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.StartingItem = true;

	Template.PairedSlot = eInvSlot_TertiaryWeapon;
	Template.PairedTemplateName = 'PA_PoisonSpitGlob';

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_AdderTail_CV()
{
	local X2PairedWeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2PairedWeaponTemplate', Template, 'PA_AdderTail_CV');

	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_AdderTailCat';
	Template.WeaponTech = 'conventional';
	Template.EquipSound = "StrategyUI_Medkit_Equip";
	Template.strImage = "img:///UILibrary_PlayableAdvent.ViperTongue";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Aim = 0;
	//Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.FLAT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.FrostAdder_M1_TailDamage;
	Template.ExtraDamage = default.FrostAdder_M1_BindDamage;
	//Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	//Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	//Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	//Template.iIdealRange = class'X2Item_DefaultWeapons'.default.VIPER_IDEALRANGE;
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	// grant in classdata.ini instead: Template.Abilities.AddItem('GetOverHere');
	Template.GameArchetype = "WP_Viper_Strangle_and_Pull.WP_Viper_Strangle_and_Pull";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.StartingItem = true;

	Template.PairedSlot = eInvSlot_TertiaryWeapon;
	Template.PairedTemplateName = 'PA_FrostSpitGlob';

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_AdderTail_MG()
{
	local X2PairedWeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2PairedWeaponTemplate', Template, 'PA_AdderTail_MG');

	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_AdderTailCat';
	Template.WeaponTech = 'magnetic';
	Template.EquipSound = "StrategyUI_Medkit_Equip";
	Template.strImage = "img:///UILibrary_PlayableAdvent.ViperTongue";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Aim = 0;
	//Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.FLAT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.FrostAdder_M2_TailDamage;
	Template.ExtraDamage = default.FrostAdder_M2_BindDamage;
	//Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	//Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	//Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	//Template.iIdealRange = class'X2Item_DefaultWeapons'.default.VIPER_IDEALRANGE;
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	// grant in classdata.ini instead: Template.Abilities.AddItem('GetOverHere');
	Template.GameArchetype = "WP_Viper_Strangle_and_Pull.WP_Viper_Strangle_and_Pull";
	Template.iPhysicsImpulse = 5;
	Template.Tier = 142;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_ADDER_TAIL_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.PairedSlot = eInvSlot_TertiaryWeapon;
	Template.PairedTemplateName = 'PA_FrostSpitGlob';

	Template.Requirements.RequiredSoldierClass = 'FrostAdderClass';

	if (default.MAGNETIC_ADDER_TAIL_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ADDER_TAIL_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.MAGNETIC_ADDER_TAIL_REQUIRED_TECHS;

			for (i = 0; i < default.MAGNETIC_ADDER_TAIL_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_ADDER_TAIL_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_ADDER_TAIL_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_ADDER_TAIL_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_AdderTail_BM()
{
	local X2PairedWeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2PairedWeaponTemplate', Template, 'PA_AdderTail_BM');

	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_AdderTailCat';
	Template.WeaponTech = 'beam';
	Template.EquipSound = "StrategyUI_Medkit_Equip";
	Template.strImage = "img:///UILibrary_PlayableAdvent.ViperTongue";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Aim = 0;
	//Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.FLAT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.FrostAdder_M3_TailDamage;
	Template.ExtraDamage = default.FrostAdder_M3_BindDamage;
	//Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	//Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	//Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	//Template.iIdealRange = class'X2Item_DefaultWeapons'.default.VIPER_IDEALRANGE;
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	// grant in classdata.ini instead: Template.Abilities.AddItem('GetOverHere');
	Template.GameArchetype = "WP_Viper_Strangle_and_Pull.WP_Viper_Strangle_and_Pull";
	Template.iPhysicsImpulse = 5;
	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ADDER_TAIL_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.Tier = 144;

	Template.PairedSlot = eInvSlot_TertiaryWeapon;
	Template.PairedTemplateName = 'PA_FrostSpitGlob';

	Template.Requirements.RequiredSoldierClass = 'FrostAdderClass';

	if (default.BEAM_ADDER_TAIL_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ADDER_TAIL_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_ADDER_TAIL_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_ADDER_TAIL_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ADDER_TAIL_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ADDER_TAIL_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ADDER_TAIL_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


// Vanilla weapon has broken image
static function X2DataTemplate CreateTemplate_PA_MutonBayonet()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonBayonet');

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_MutonBayonetCat';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///UILibrary_PlayableAdvent.MutonBayonet";
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.StowedLocation = eSlot_RightBack;
	Template.GameArchetype = "WP_Muton_Bayonet.WP_MutonBayonet";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.iRange = 0;
	Template.iRadius = 1;
	Template.InfiniteAmmo = true;
	Template.iPhysicsImpulse = 5;
	Template.iIdealRange = 1;
	Template.BaseDamage = default.MUTON_BAYONET_BASEDAMAGE;
	Template.BaseDamage.DamageType='Melee';
	Template.iSoundRange = 2;
	Template.iEnvironmentDamage = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.Abilities.AddItem('PABayonet');
	// Added in classdata initial level: Template.Abilities.AddItem('CounterattackBayonet');

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonEliteBayonet()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonEliteBayonet');

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_MutonBayonetCat';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///UILibrary_PlayableAdvent.MutonBayonet";
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.StowedLocation = eSlot_RightBack;
	Template.GameArchetype = "WP_Muton_Bayonet.WP_MutonBayonet";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.iRange = 0;
	Template.iRadius = 1;
	Template.InfiniteAmmo = true;
	Template.iPhysicsImpulse = 5;
	Template.iIdealRange = 1;
	Template.BaseDamage = default.MUTON_ELITEBAYONET_BASEDAMAGE;
	Template.BaseDamage.DamageType='Melee';
	Template.iSoundRange = 2;
	Template.iEnvironmentDamage = 10;
	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_MUTON_BAYONET_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.Abilities.AddItem('PABayonetCharge');
	Template.Abilities.AddItem('PABayonet');
	// Added in classdata initial level: Template.Abilities.AddItem('CounterattackBayonet');
	Template.Tier = 144;

	Template.Requirements.RequiredSoldierClass = 'MutonClass';

	if (default.BEAM_MUTON_BAYONET_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_MUTON_BAYONET_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_MUTON_BAYONET_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_MUTON_BAYONET_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_MUTON_BAYONET_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_MUTON_BAYONET_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_MUTON_BAYONET_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonGun()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonGun');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonGunCat';
	Template.WeaponTech = 'conventional';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.MutonRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 0;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.MutonRifle_Conventional_BaseDamage;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Muton_Rifle.WP_MutonRifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.StartingItem = true;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonGunLaser()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonGunLaser');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonGunCat';
	Template.WeaponTech = 'laser_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.MutonRifle";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 150;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.MutonRifle_Laser_BaseDamage;
	Template.Aim = default.LASERWEAPONAIMBONUS;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Muton_Rifle.WP_MutonRifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.LASER_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'MutonClass';

	if (default.LASER_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.LASER_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.LASER_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.LASER_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.LASER_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.LASER_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonGunMagnetic()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonGunMagnetic');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonGunCat';
	Template.WeaponTech = 'magnetic';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.MutonRifle";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 160;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.MutonRifle_Magnetic_BaseDamage;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Muton_Rifle.WP_MutonRifle";
	Template.iPhysicsImpulse = 5;
	
	//Template.CreatorTemplateName = 'AssaultRifle_MG_Schematic';
	//Template.BaseItem = 'PA_MutonGun'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'MutonClass';

	if (default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.MAGNETIC_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonGunCoil()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonGunCoil');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonGunCat';
	Template.WeaponTech = 'coilgun_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.MutonRifle";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 170;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.MutonRifle_Coil_BaseDamage;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('CoilgunBonusShredAbility');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Muton_Rifle.WP_MutonRifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.COIL_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'MutonClass';

	if (default.COIL_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.COIL_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.COIL_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.COIL_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.COIL_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.COIL_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


static function X2DataTemplate CreateTemplate_PA_MutonGunBeam()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonGunBeam');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonGunCat';
	Template.WeaponTech = 'beam';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.MutonRifle";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 180;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_BEAM_RANGE;
	Template.BaseDamage = default.MutonRifle_Beam_BaseDamage;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Muton_Rifle.WP_MutonRifle";
	Template.iPhysicsImpulse = 5;
	
	//Template.CreatorTemplateName = 'AssaultRifle_BM_Schematic';
	//Template.BaseItem = 'PA_MutonGunMagnetic'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'MutonClass';

	if (default.BEAM_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonCannon()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonCannon');

	Template.WeaponPanelImage = "_BeamCannon";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonCannonCat';
	Template.WeaponTech = 'conventional';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_Base";
	Template.EquipSound = "Conventional_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 0;
	Template.RangeAccuracy = default.LMG_ALL_RANGE;
	Template.BaseDamage = default.MutonCannon_Conventional_BaseDamage;
	Template.Aim = class'X2Item_DefaultWeapons'.default.LMG_CONVENTIONAL_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_CONVENTIONAL_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.LMG_CONVENTIONAL_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.LMG_CONVENTIONAL_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_CONVENTIONAL_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "LWMutonM3Rifle.Archetypes.WP_MutonM3Rifle_Base";

	Template.AddDefaultAttachment('Mag', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Mag",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_MagA");
    Template.AddDefaultAttachment('Core', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Core",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_CoreA");
    Template.AddDefaultAttachment('Core_Center', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Core_Center");
    Template.AddDefaultAttachment('HeatSink', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_HeatSink",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_HeatsinkA");
    Template.AddDefaultAttachment('Suppressor', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Suppressor",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_SupressorA");

	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.StartingItem = true;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonCannonLaser()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonCannonLaser');

	Template.WeaponPanelImage = "_BeamCannon";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonCannonCat';
	Template.WeaponTech = 'laser_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_Base";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 150;
	Template.RangeAccuracy = default.LMG_ALL_RANGE;
	Template.BaseDamage = default.MutonCannon_Laser_BaseDamage;
	Template.Aim = default.LASERWEAPONAIMBONUS;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "LWMutonM3Rifle.Archetypes.WP_MutonM3Rifle_Base";

	Template.AddDefaultAttachment('Mag', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Mag",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_MagA");
    Template.AddDefaultAttachment('Core', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Core",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_CoreA");
    Template.AddDefaultAttachment('Core_Center', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Core_Center");
    Template.AddDefaultAttachment('HeatSink', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_HeatSink",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_HeatsinkA");
    Template.AddDefaultAttachment('Suppressor', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Suppressor",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_SupressorA");
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.LASER_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'MutonClass';

	if (default.LASER_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.LASER_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.LASER_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.LASER_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.LASER_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.LASER_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonCannonMagnetic()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonCannonMagnetic');

	Template.WeaponPanelImage = "_BeamCannon";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonCannonCat';
	Template.WeaponTech = 'magnetic';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_Base";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 160;
	Template.RangeAccuracy = default.LMG_ALL_RANGE;
	Template.BaseDamage = default.MutonCannon_Magnetic_BaseDamage;
	Template.Aim = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "LWMutonM3Rifle.Archetypes.WP_MutonM3Rifle_Base";

	Template.AddDefaultAttachment('Mag', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Mag",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_MagA");
    Template.AddDefaultAttachment('Core', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Core",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_CoreA");
    Template.AddDefaultAttachment('Core_Center', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Core_Center");
    Template.AddDefaultAttachment('HeatSink', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_HeatSink",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_HeatsinkA");
    Template.AddDefaultAttachment('Suppressor', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Suppressor",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_SupressorA");
	Template.iPhysicsImpulse = 5;
	
	//Template.CreatorTemplateName = 'AssaultRifle_MG_Schematic';
	//Template.BaseItem = 'PA_MutonGun'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'MutonClass';

	if (default.MAGNETIC_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonCannonCoil()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonCannonCoil');

	Template.WeaponPanelImage = "_BeamCannon";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonCannonCat';
	Template.WeaponTech = 'coilgun_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_Base";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 170;
	Template.RangeAccuracy = default.LMG_ALL_RANGE;
	Template.BaseDamage = default.MutonCannon_Coil_BaseDamage;
	Template.Aim = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('CoilgunBonusShredAbility');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "LWMutonM3Rifle.Archetypes.WP_MutonM3Rifle_Base";

	Template.AddDefaultAttachment('Mag', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Mag",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_MagA");
    Template.AddDefaultAttachment('Core', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Core",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_CoreA");
    Template.AddDefaultAttachment('Core_Center', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Core_Center");
    Template.AddDefaultAttachment('HeatSink', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_HeatSink",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_HeatsinkA");
    Template.AddDefaultAttachment('Suppressor', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Suppressor",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_SupressorA");
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.COIL_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'MutonClass';

	if (default.COIL_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.COIL_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.COIL_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.COIL_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.COIL_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.COIL_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


static function X2DataTemplate CreateTemplate_PA_MutonCannonBeam()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonCannonBeam');

	Template.WeaponPanelImage = "_BeamCannon";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonCannonCat';
	Template.WeaponTech = 'beam';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_Base";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 180;

	Template.RangeAccuracy = default.LMG_ALL_RANGE;
	Template.BaseDamage = default.MutonCannon_Beam_BaseDamage;
	Template.Aim = class'X2Item_DefaultWeapons'.default.LMG_BEAM_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_BEAM_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.LMG_BEAM_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.LMG_BEAM_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_BEAM_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "LWMutonM3Rifle.Archetypes.WP_MutonM3Rifle_Base";

	Template.AddDefaultAttachment('Mag', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Mag",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_MagA");
    Template.AddDefaultAttachment('Core', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Core",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_CoreA");
    Template.AddDefaultAttachment('Core_Center', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Core_Center");
    Template.AddDefaultAttachment('HeatSink', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_HeatSink",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_HeatsinkA");
    Template.AddDefaultAttachment('Suppressor', "LWMutonM3Rifle.Meshes.SK_MutonM3Rifle_Suppressor",, "img:///UILibrary_Common.UI_BeamCannon.BeamCannon_SupressorA");
	Template.iPhysicsImpulse = 5;
	
	//Template.CreatorTemplateName = 'AssaultRifle_BM_Schematic';
	//Template.BaseItem = 'PA_MutonGunMagnetic'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'MutonClass';

	if (default.BEAM_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonStalkerGun()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonStalkerGun');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonStalkerGunCat';
	Template.WeaponTech = 'conventional';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///WoTC_Muton_Hunter.UI.MutonHunterRifle_Icon";
	Template.EquipSound = "Conventional_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 0;
	Template.RangeAccuracy = default.MUTONSTALKERGUN_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.MUTONSTALKERGUN_CONVENTIONAL_BASEDAMAGE;
	Template.Aim = default.MUTONSTALKERGUN_CONVENTIONAL_AIM;
	Template.CritChance = default.MUTONSTALKERGUN_CONVENTIONAL_CRITCHANCE;
	Template.iClipSize = default.MUTONSTALKERGUN_CONVENTIONAL_CLIPSIZE;
	Template.iSoundRange = default.MUTONSTALKERGUN_CONVENTIONAL_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONSTALKERGUN_CONVENTIONAL_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WoTC_Muton_Hunter.Archetypes.WP_Muton_Hunter_Rifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.StartingItem = true;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonStalkerGunLaser()
{
	local X2WeaponTemplate Template;
	local StrategyRequirement AltReq;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonStalkerGunLaser');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonStalkerGunCat';
	Template.WeaponTech = 'laser_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///WoTC_Muton_Hunter.UI.MutonHunterRifle_Icon";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 150;
	Template.RangeAccuracy = default.MUTONSTALKERGUN_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.MUTONSTALKERGUN_CONVENTIONAL_BASEDAMAGE;
	Template.Aim = default.MUTONSTALKERGUN_CONVENTIONAL_AIM;
	Template.CritChance = default.MUTONSTALKERGUN_CONVENTIONAL_CRITCHANCE;
	Template.iClipSize = default.MUTONSTALKERGUN_CONVENTIONAL_CLIPSIZE;
	Template.iSoundRange = default.MUTONSTALKERGUN_CONVENTIONAL_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONSTALKERGUN_CONVENTIONAL_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WoTC_Muton_Hunter.Archetypes.WP_Muton_Hunter_Rifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.LASER_ALIEN_LONGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'MutonHunterClass';
	Template.Requirements.RequiredTechs = default.LASER_ALIEN_LONGGUN_REQUIRED_TECHS;

	AltReq.RequiredSoldierClass = 'MutonProwlerClass';
	AltReq.RequiredTechs = default.LASER_ALIEN_LONGGUN_REQUIRED_TECHS;
    Template.AlternateRequirements.AddItem(AltReq);

	if (default.LASER_ALIEN_LONGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_LONGGUN_ENGINEERING_SCORE;

			for (i = 0; i < default.LASER_ALIEN_LONGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.LASER_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.LASER_ALIEN_LONGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.LASER_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonStalkerGunMagnetic()
{
	local X2WeaponTemplate Template;
	local StrategyRequirement AltReq;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonStalkerGunMagnetic');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonStalkerGunCat';
	Template.WeaponTech = 'magnetic';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///WoTC_Muton_Hunter.UI.MutonHunterRifle_Icon";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 160;
	Template.RangeAccuracy = default.MUTONSTALKERGUN_LASER_RANGE;
	Template.BaseDamage = default.MUTONSTALKERGUN_LASER_BASEDAMAGE;
	Template.Aim = default.MUTONSTALKERGUN_LASER_AIM;
	Template.CritChance = default.MUTONSTALKERGUN_LASER_CRITCHANCE;
	Template.iClipSize = default.MUTONSTALKERGUN_LASER_CLIPSIZE;
	Template.iSoundRange = default.MUTONSTALKERGUN_LASER_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONSTALKERGUN_LASER_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WoTC_Muton_Hunter.Archetypes.WP_Muton_Hunter_Rifle";
	Template.iPhysicsImpulse = 5;
	
	//Template.CreatorTemplateName = 'AssaultRifle_MG_Schematic';
	//Template.BaseItem = 'PA_MutonGun'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_ALIEN_LONGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';
	
	Template.Requirements.RequiredSoldierClass = 'MutonHunterClass';
	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_LONGGUN_REQUIRED_TECHS;

	AltReq.RequiredSoldierClass = 'MutonProwlerClass';
	AltReq.RequiredTechs = default.MAGNETIC_ALIEN_LONGGUN_REQUIRED_TECHS;
    Template.AlternateRequirements.AddItem(AltReq);

	if (default.MAGNETIC_ALIEN_LONGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_LONGGUN_ENGINEERING_SCORE;

			for (i = 0; i < default.MAGNETIC_ALIEN_LONGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_LONGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonStalkerGunCoil()
{
	local X2WeaponTemplate Template;
	local StrategyRequirement AltReq;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonStalkerGunCoil');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonStalkerGunCat';
	Template.WeaponTech = 'coilgun_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///WoTC_Muton_Hunter.UI.MutonHunterRifle_Icon";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 170;
	Template.RangeAccuracy = default.MUTONSTALKERGUN_MAGNETIC_RANGE;
	Template.BaseDamage = default.MUTONSTALKERGUN_MAGNETIC_BASEDAMAGE;
	Template.Aim = default.MUTONSTALKERGUN_MAGNETIC_AIM;
	Template.CritChance = default.MUTONSTALKERGUN_MAGNETIC_CRITCHANCE;
	Template.iClipSize = default.MUTONSTALKERGUN_MAGNETIC_CLIPSIZE;
	Template.iSoundRange = default.MUTONSTALKERGUN_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONSTALKERGUN_MAGNETIC_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('CoilgunBonusShredAbility');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WoTC_Muton_Hunter.Archetypes.WP_Muton_Hunter_Rifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.COIL_ALIEN_LONGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';
	
	Template.Requirements.RequiredSoldierClass = 'MutonHunterClass';
	Template.Requirements.RequiredTechs = default.COIL_ALIEN_LONGGUN_REQUIRED_TECHS;

	AltReq.RequiredSoldierClass = 'MutonProwlerClass';
	AltReq.RequiredTechs = default.COIL_ALIEN_LONGGUN_REQUIRED_TECHS;
    Template.AlternateRequirements.AddItem(AltReq);

	if (default.COIL_ALIEN_LONGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_LONGGUN_ENGINEERING_SCORE;

			for (i = 0; i < default.COIL_ALIEN_LONGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.COIL_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.COIL_ALIEN_LONGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.COIL_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


static function X2DataTemplate CreateTemplate_PA_MutonStalkerGunBeam()
{
	local X2WeaponTemplate Template;
	local StrategyRequirement AltReq;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonStalkerGunBeam');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonStalkerGunCat';
	Template.WeaponTech = 'beam';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///WoTC_Muton_Hunter.UI.MutonHunterRifle_Icon";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 180;
	Template.RangeAccuracy = default.MUTONSTALKERGUN_COIL_RANGE;
	Template.BaseDamage = default.MUTONSTALKERGUN_COIL_BASEDAMAGE;
	Template.Aim = default.MUTONSTALKERGUN_COIL_AIM;
	Template.CritChance = default.MUTONSTALKERGUN_COIL_CRITCHANCE;
	Template.iClipSize = default.MUTONSTALKERGUN_COIL_CLIPSIZE;
	Template.iSoundRange = default.MUTONSTALKERGUN_COIL_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONSTALKERGUN_COIL_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WoTC_Muton_Hunter.Archetypes.WP_Muton_Hunter_Rifle";
	Template.iPhysicsImpulse = 5;
	
	//Template.CreatorTemplateName = 'AssaultRifle_BM_Schematic';
	//Template.BaseItem = 'PA_MutonGunMagnetic'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ALIEN_LONGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';
	
	Template.Requirements.RequiredSoldierClass = 'MutonHunterClass';
	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_LONGGUN_REQUIRED_TECHS;

	AltReq.RequiredSoldierClass = 'MutonProwlerClass';
	AltReq.RequiredTechs = default.BEAM_ALIEN_LONGGUN_REQUIRED_TECHS;
    Template.AlternateRequirements.AddItem(AltReq);

	if (default.BEAM_ALIEN_LONGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_LONGGUN_ENGINEERING_SCORE;

			for (i = 0; i < default.BEAM_ALIEN_LONGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ALIEN_LONGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonBeleaguerGun()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonBeleaguerGun');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonBeleaguerGunCat';
	Template.WeaponTech = 'conventional';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///WoTC_Muton_Harrier_UI.BeleaguerRifle_Icon";
	Template.EquipSound = "Conventional_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 0;
	Template.RangeAccuracy = default.MUTONBELEAGUE_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.MUTONBELEAGUERGUN_CONVENTIONAL_BASEDAMAGE;
	Template.ExtraDamage = default.MUTONBELEAGUERGUN_CONVENTIONAL_EXTRADAMAGE;
	Template.Aim = default.MUTONBELEAGUERGUN_CONVENTIONAL_AIM;
	Template.CritChance = default.MUTONBELEAGUERGUN_CONVENTIONAL_CRITCHANCE;
	Template.iClipSize = default.MUTONBELEAGUERGUN_CONVENTIONAL_CLIPSIZE;
	Template.iSoundRange = default.MUTONBELEAGUERGUN_CONVENTIONAL_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONBELEAGUERGUN_CONVENTIONAL_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WoTC_Muton_Beleaguer_Rifle.Archetypes.WP_BeleaguerRifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.StartingItem = true;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonBeleaguerGunLaser()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonBeleaguerGunLaser');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonBeleaguerGunCat';
	Template.WeaponTech = 'laser_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///WoTC_Muton_Harrier_UI.BeleaguerRifle_Icon";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 150;
	Template.RangeAccuracy = default.MUTONBELEAGUERGUN_LASER_RANGE;
	Template.BaseDamage = default.MUTONBELEAGUERGUN_LASER_BASEDAMAGE;
	Template.ExtraDamage = default.MUTONBELEAGUERGUN_LASER_EXTRADAMAGE;
	Template.Aim = default.MUTONBELEAGUERGUN_LASER_AIM;
	Template.CritChance = default.MUTONBELEAGUERGUN_LASER_CRITCHANCE;
	Template.iClipSize = default.MUTONBELEAGUERGUN_LASER_CLIPSIZE;
	Template.iSoundRange = default.MUTONBELEAGUERGUN_LASER_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONBELEAGUERGUN_LASER_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WoTC_Muton_Beleaguer_Rifle.Archetypes.WP_BeleaguerRifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.LASER_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'MutonBeleaguerClass';

	if (default.LASER_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.LASER_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.LASER_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.LASER_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.LASER_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.LASER_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonBeleaguerGunMagnetic()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonBeleaguerGunMagnetic');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonBeleaguerGunCat';
	Template.WeaponTech = 'magnetic';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///WoTC_Muton_Harrier_UI.BeleaguerRifle_Icon";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 160;
	Template.RangeAccuracy = default.MUTONBELEAGUERGUN_MAGNETIC_RANGE;
	Template.BaseDamage = default.MUTONBELEAGUERGUN_MAGNETIC_BASEDAMAGE;
	Template.ExtraDamage = default.MUTONBELEAGUERGUN_MAGNETIC_EXTRADAMAGE;
	Template.Aim = default.MUTONBELEAGUERGUN_MAGNETIC_AIM;
	Template.CritChance = default.MUTONBELEAGUERGUN_MAGNETIC_CRITCHANCE;
	Template.iClipSize = default.MUTONBELEAGUERGUN_MAGNETIC_CLIPSIZE;
	Template.iSoundRange = default.MUTONBELEAGUERGUN_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONBELEAGUERGUN_MAGNETIC_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WoTC_Muton_Beleaguer_Rifle.Archetypes.WP_BeleaguerRifle";
	Template.iPhysicsImpulse = 5;
	
	//Template.CreatorTemplateName = 'AssaultRifle_MG_Schematic';
	//Template.BaseItem = 'PA_MutonGun'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'MutonBeleaguerClass';

	if (default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.MAGNETIC_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonBeleaguerGunCoil()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonBeleaguerGunCoil');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonBeleaguerGunCat';
	Template.WeaponTech = 'coilgun_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///WoTC_Muton_Harrier_UI.BeleaguerRifle_Icon";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 170;
	Template.RangeAccuracy = default.MUTONBELEAGUERGUN_COIL_RANGE;
	Template.BaseDamage = default.MUTONBELEAGUERGUN_COIL_BASEDAMAGE;
	Template.ExtraDamage = default.MUTONBELEAGUERGUN_COIL_EXTRADAMAGE;
	Template.Aim = default.MUTONBELEAGUERGUN_COIL_AIM;
	Template.CritChance = default.MUTONBELEAGUERGUN_COIL_CRITCHANCE;
	Template.iClipSize = default.MUTONBELEAGUERGUN_COIL_CLIPSIZE;
	Template.iSoundRange = default.MUTONBELEAGUERGUN_COIL_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONBELEAGUERGUN_COIL_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('CoilgunBonusShredAbility');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WoTC_Muton_Beleaguer_Rifle.Archetypes.WP_BeleaguerRifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.COIL_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'MutonBeleaguerClass';

	if (default.COIL_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.COIL_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.COIL_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.COIL_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.COIL_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.COIL_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


static function X2DataTemplate CreateTemplate_PA_MutonBeleaguerGunBeam()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonBeleaguerGunBeam');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_MutonBeleaguerGunCat';
	Template.WeaponTech = 'beam';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///WoTC_Muton_Harrier_UI.BeleaguerRifle_Icon";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 180;

	Template.RangeAccuracy = default.MUTONBELEAGUERGUN_BEAM_RANGE;
	Template.BaseDamage = default.MUTONBELEAGUERGUN_BEAM_BASEDAMAGE;
	Template.ExtraDamage = default.MUTONBELEAGUERGUN_BEAM_EXTRADAMAGE;
	Template.Aim = default.MUTONBELEAGUERGUN_BEAM_AIM;
	Template.CritChance = default.MUTONBELEAGUERGUN_BEAM_CRITCHANCE;
	Template.iClipSize = default.MUTONBELEAGUERGUN_BEAM_CLIPSIZE;
	Template.iSoundRange = default.MUTONBELEAGUERGUN_BEAM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONBELEAGUERGUN_BEAM_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WoTC_Muton_Beleaguer_Rifle.Archetypes.WP_BeleaguerRifle";
	Template.iPhysicsImpulse = 5;
	
	//Template.CreatorTemplateName = 'AssaultRifle_BM_Schematic';
	//Template.BaseItem = 'PA_MutonGunMagnetic'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'MutonBeleaguerClass';

	if (default.BEAM_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonHarrierLauncher()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonHarrierLauncher');
	
	Template.WeaponPanelImage = "_ConventionalRifle";                       // used by the UI. Probably determines iconview of the weapon.
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_MutonHarrierLauncherCat';
	Template.WeaponTech = 'conventional';
	Template.EquipSound = "Conventional_Weapon_Equip";
	Template.strImage = "img:///WoTC_Muton_Harrier_UI.HarrierLauncher_Icon"; //Texture2D'WoTC_Muton_Harrier_UI.HarrierLauncher_Icon'
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer); //invalidates multiplayer availability

	Template.RangeAccuracy = default.MUTONHARRIERLAUNCHER_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.MUTONHARRIERLAUNCHER_CONVENTIONAL_BASEDAMAGE;
	Template.Aim = default.MUTONHARRIERLAUNCHER_CONVENTIONAL_AIM;
	Template.CritChance = default.MUTONHARRIERLAUNCHER_CONVENTIONAL_CRITCHANCE;
	Template.iClipSize = default.MUTONHARRIERLAUNCHER_CONVENTIONAL_CLIPSIZE;
	Template.iSoundRange = default.MUTONHARRIERLAUNCHER_CONVENTIONAL_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONHARRIERLAUNCHER_CONVENTIONAL_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Heavy';
	
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Template.Abilities.AddItem('StandardShot');
	//Template.Abilities.AddItem('Overwatch');
	//Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('PAHarrierGrenade');
	Template.Abilities.AddItem('HarrierGrenadeFuse');
	
	//Template.WeaponPrecomputedPathData.InitialPathTime = 1.5;
	//Template.WeaponPrecomputedPathData.MaxPathTime = 2.5;
	//Template.WeaponPrecomputedPathData.MaxNumberOfBounces = 0;
	
	// This all the resources; sounds, animations, models, physics, the works.
	Template.GameArchetype = "WoTC_Muton_Harrier_Launcher.Archetypes.WP_HarrierLauncher"; //XComWeapon'WoTC_Muton_Harrier_Launcher.Archetypes.WP_HarrierLauncher'

	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.StartingItem = true;

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonHarrierLauncherLaser()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonHarrierLauncherLaser');
	
	Template.WeaponPanelImage = "_ConventionalRifle";                       // used by the UI. Probably determines iconview of the weapon.
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_MutonHarrierLauncherCat';
	Template.WeaponTech = 'laser_lw';
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.strImage = "img:///WoTC_Muton_Harrier_UI.HarrierLauncher_Icon"; //Texture2D'WoTC_Muton_Harrier_UI.HarrierLauncher_Icon'
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer); //invalidates multiplayer availability
	Template.Tier = 150;

	Template.RangeAccuracy = default.MUTONHARRIERLAUNCHER_LASER_RANGE;
	Template.BaseDamage = default.MUTONHARRIERLAUNCHER_LASER_BASEDAMAGE;
	Template.Aim = default.MUTONHARRIERLAUNCHER_LASER_AIM;
	Template.CritChance = default.MUTONHARRIERLAUNCHER_LASER_CRITCHANCE;
	Template.iClipSize = default.MUTONHARRIERLAUNCHER_LASER_CLIPSIZE;
	Template.iSoundRange = default.MUTONHARRIERLAUNCHER_LASER_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONHARRIERLAUNCHER_LASER_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Heavy';
	
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Template.Abilities.AddItem('StandardShot');
	//Template.Abilities.AddItem('Overwatch');
	//Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('PAHarrierGrenade');
	Template.Abilities.AddItem('HarrierGrenadeFuse');
	
	//Template.WeaponPrecomputedPathData.InitialPathTime = 1.5;
	//Template.WeaponPrecomputedPathData.MaxPathTime = 2.5;
	//Template.WeaponPrecomputedPathData.MaxNumberOfBounces = 0;
	
	// This all the resources; sounds, animations, models, physics, the works.
	Template.GameArchetype = "WoTC_Muton_Harrier_Launcher.Archetypes.WP_HarrierLauncher"; //XComWeapon'WoTC_Muton_Harrier_Launcher.Archetypes.WP_HarrierLauncher'

	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.LASER_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.Requirements.RequiredSoldierClass = 'MutonHarrierClass';

	if (default.LASER_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.LASER_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.LASER_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.LASER_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.LASER_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.LASER_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonHarrierLauncherMagnetic()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonHarrierLauncherMagnetic');
	
	Template.WeaponPanelImage = "_ConventionalRifle";                       // used by the UI. Probably determines iconview of the weapon.
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_MutonHarrierLauncherCat';
	Template.WeaponTech = 'magnetic';
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.strImage = "img:///WoTC_Muton_Harrier_UI.HarrierLauncher_Icon"; //Texture2D'WoTC_Muton_Harrier_UI.HarrierLauncher_Icon'
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer); //invalidates multiplayer availability
	Template.Tier = 160;

	Template.RangeAccuracy = default.MUTONHARRIERLAUNCHER_MAGNETIC_RANGE;
	Template.BaseDamage = default.MUTONHARRIERLAUNCHER_MAGNETIC_BASEDAMAGE;
	Template.Aim = default.MUTONHARRIERLAUNCHER_MAGNETIC_AIM;
	Template.CritChance = default.MUTONHARRIERLAUNCHER_MAGNETIC_CRITCHANCE;
	Template.iClipSize = default.MUTONHARRIERLAUNCHER_MAGNETIC_CLIPSIZE;
	Template.iSoundRange = default.MUTONHARRIERLAUNCHER_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONHARRIERLAUNCHER_MAGNETIC_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Heavy';
	
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Template.Abilities.AddItem('StandardShot');
	//Template.Abilities.AddItem('Overwatch');
	//Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('PAHarrierGrenade');
	Template.Abilities.AddItem('HarrierGrenadeFuse');
	Template.Abilities.AddItem('PAHarrierLauncherRestoration');
	
	//Template.WeaponPrecomputedPathData.InitialPathTime = 1.5;
	//Template.WeaponPrecomputedPathData.MaxPathTime = 2.5;
	//Template.WeaponPrecomputedPathData.MaxNumberOfBounces = 0;
	
	// This all the resources; sounds, animations, models, physics, the works.
	Template.GameArchetype = "WoTC_Muton_Harrier_Launcher.Archetypes.WP_HarrierLauncher"; //XComWeapon'WoTC_Muton_Harrier_Launcher.Archetypes.WP_HarrierLauncher'

	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.Requirements.RequiredSoldierClass = 'MutonHarrierClass';

	if (default.MAGNETIC_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonHarrierLauncherCoil()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonHarrierLauncherCoil');
	
	Template.WeaponPanelImage = "_ConventionalRifle";                       // used by the UI. Probably determines iconview of the weapon.
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_MutonHarrierLauncherCat';
	Template.WeaponTech = 'coilgun_lw';
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.strImage = "img:///WoTC_Muton_Harrier_UI.HarrierLauncher_Icon"; //Texture2D'WoTC_Muton_Harrier_UI.HarrierLauncher_Icon'
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer); //invalidates multiplayer availability
	Template.Tier = 170;

	Template.RangeAccuracy = default.MUTONHARRIERLAUNCHER_COIL_RANGE;
	Template.BaseDamage = default.MUTONHARRIERLAUNCHER_COIL_BASEDAMAGE;
	Template.Aim = default.MUTONHARRIERLAUNCHER_COIL_AIM;
	Template.CritChance = default.MUTONHARRIERLAUNCHER_COIL_CRITCHANCE;
	Template.iClipSize = default.MUTONHARRIERLAUNCHER_COIL_CLIPSIZE;
	Template.iSoundRange = default.MUTONHARRIERLAUNCHER_COIL_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONHARRIERLAUNCHER_COIL_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Heavy';
	
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Template.Abilities.AddItem('StandardShot');
	//Template.Abilities.AddItem('Overwatch');
	//Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('PAHarrierGrenade');
	Template.Abilities.AddItem('HarrierGrenadeFuse');
	Template.Abilities.AddItem('CoilgunBonusShredAbility');
	Template.Abilities.AddItem('PAHarrierLauncherRestoration');
	
	//Template.WeaponPrecomputedPathData.InitialPathTime = 1.5;
	//Template.WeaponPrecomputedPathData.MaxPathTime = 2.5;
	//Template.WeaponPrecomputedPathData.MaxNumberOfBounces = 0;
	
	// This all the resources; sounds, animations, models, physics, the works.
	Template.GameArchetype = "WoTC_Muton_Harrier_Launcher.Archetypes.WP_HarrierLauncher"; //XComWeapon'WoTC_Muton_Harrier_Launcher.Archetypes.WP_HarrierLauncher'

	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.COIL_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.Requirements.RequiredSoldierClass = 'MutonHarrierClass';

	if (default.COIL_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.COIL_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.COIL_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.COIL_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.COIL_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.COIL_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_MutonHarrierLauncherBeam()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_MutonHarrierLauncherBeam');
	
	Template.WeaponPanelImage = "_ConventionalRifle";                       // used by the UI. Probably determines iconview of the weapon.
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_MutonHarrierLauncherCat';
	Template.WeaponTech = 'beam';
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.strImage = "img:///WoTC_Muton_Harrier_UI.HarrierLauncher_Icon"; //Texture2D'WoTC_Muton_Harrier_UI.HarrierLauncher_Icon'
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer); //invalidates multiplayer availability
	Template.Tier = 180;

	Template.RangeAccuracy = default.MUTONHARRIERLAUNCHER_BEAM_RANGE;
	Template.BaseDamage = default.MUTONHARRIERLAUNCHER_BEAM_BASEDAMAGE;
	Template.Aim = default.MUTONHARRIERLAUNCHER_BEAM_AIM;
	Template.CritChance = default.MUTONHARRIERLAUNCHER_BEAM_CRITCHANCE;
	Template.iClipSize = default.MUTONHARRIERLAUNCHER_BEAM_CLIPSIZE;
	Template.iSoundRange = default.MUTONHARRIERLAUNCHER_BEAM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.MUTONHARRIERLAUNCHER_BEAM_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Heavy';
	
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Template.Abilities.AddItem('StandardShot');
	//Template.Abilities.AddItem('Overwatch');
	//Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('PAHarrierGrenade');
	Template.Abilities.AddItem('HarrierGrenadeFuse');
	Template.Abilities.AddItem('PAHarrierLauncherIntensifier');
	
	//Template.WeaponPrecomputedPathData.InitialPathTime = 1.5;
	//Template.WeaponPrecomputedPathData.MaxPathTime = 2.5;
	//Template.WeaponPrecomputedPathData.MaxNumberOfBounces = 0;
	
	// This all the resources; sounds, animations, models, physics, the works.
	Template.GameArchetype = "WoTC_Muton_Harrier_Launcher.Archetypes.WP_HarrierLauncher"; //XComWeapon'WoTC_Muton_Harrier_Launcher.Archetypes.WP_HarrierLauncher'

	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.Requirements.RequiredSoldierClass = 'MutonHarrierClass';

	if (default.BEAM_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

//SECTOIDS

static function X2DataTemplate CreateTemplate_PA_SectoidGun()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_SectoidGun');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_SectoidGunCat';
	Template.WeaponTech = 'conventional';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.SectoidPistol";
	Template.EquipSound = "Conventional_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 0;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.SECTOIDBLASTER_CONVENTIONAL_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Sectoid_ArmPistol.WP_SectoidPistol";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.StartingItem = true;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_SectoidGunLaser()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;
	local StrategyRequirement AltReq;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_SectoidGunLaser');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_SectoidGunCat';
	Template.WeaponTech = 'laser_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.SectoidPistol";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 150;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.SECTOIDBLASTER_LASER_BASEDAMAGE;
	Template.Aim = default.LASERWEAPONAIMBONUS;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Sectoid_ArmPistol.WP_SectoidPistol";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.LASER_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'SectoidClass';

	if (default.LASER_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.LASER_ALIEN_GUN_REQUIRED_TECHS;

	AltReq.RequiredSoldierClass = 'SectoidAbjurerClass';
	AltReq.RequiredTechs = default.LASER_ALIEN_GUN_REQUIRED_TECHS;
	if (default.LASER_ALIEN_GUN_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.LASER_ALIEN_GUN_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

			for (i = 0; i < default.LASER_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.LASER_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.LASER_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.LASER_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_SectoidGunMagnetic()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;
	local StrategyRequirement AltReq;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_SectoidGunMagnetic');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_SectoidGunCat';
	Template.WeaponTech = 'magnetic';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.SectoidPistol";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 160;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.SECTOIDBLASTER_MAGNETIC_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Sectoid_ArmPistol.WP_SectoidPistol";
	Template.iPhysicsImpulse = 5;
	
	//Template.CreatorTemplateName = 'Pistol_MG_Schematic';
	//Template.BaseItem = 'PA_SectoidGun'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.Requirements.RequiredSoldierClass = 'SectoidClass';

	if (default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_GUN_REQUIRED_TECHS;

	AltReq.RequiredSoldierClass = 'SectoidAbjurerClass';
	AltReq.RequiredTechs = default.MAGNETIC_ALIEN_GUN_REQUIRED_TECHS;
	if (default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

			for (i = 0; i < default.MAGNETIC_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_SectoidGunCoil()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;
	local StrategyRequirement AltReq;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_SectoidGunCoil');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_SectoidGunCat';
	Template.WeaponTech = 'coilgun_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.SectoidPistol";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 170;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.SECTOIDBLASTER_COIL_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('CoilgunBonusShredAbility');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Sectoid_ArmPistol.WP_SectoidPistol";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.COIL_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'SectoidClass';

	if (default.COIL_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.COIL_ALIEN_GUN_REQUIRED_TECHS;

	AltReq.RequiredSoldierClass = 'SectoidAbjurerClass';
	AltReq.RequiredTechs = default.COIL_ALIEN_GUN_REQUIRED_TECHS;
	if (default.COIL_ALIEN_GUN_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.COIL_ALIEN_GUN_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

			for (i = 0; i < default.COIL_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.COIL_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.COIL_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.COIL_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_SectoidGunBeam()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;
	local StrategyRequirement AltReq;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_SectoidGunBeam');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_SectoidGunCat';
	Template.WeaponTech = 'beam';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.SectoidPistol";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 180;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_BEAM_RANGE;
	Template.BaseDamage = default.SECTOIDBLASTER_BEAM_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Sectoid_ArmPistol.WP_SectoidPistol";
	Template.iPhysicsImpulse = 5;
	
	//Template.CreatorTemplateName = 'Pistol_BM_Schematic';
	//Template.BaseItem = 'PA_SectoidGunMagnetic'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.Requirements.RequiredSoldierClass = 'SectoidClass';

	if (default.BEAM_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_GUN_REQUIRED_TECHS;

	AltReq.RequiredSoldierClass = 'SectoidAbjurerClass';
	AltReq.RequiredTechs = default.BEAM_ALIEN_GUN_REQUIRED_TECHS;
	if (default.BEAM_ALIEN_GUN_ENGINEERING_SCORE > 0) AltReq.RequiredEngineeringScore = default.BEAM_ALIEN_GUN_ENGINEERING_SCORE;
    Template.AlternateRequirements.AddItem(AltReq);

			for (i = 0; i < default.BEAM_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

// static function X2DataTemplate CreateTemplate_PA_SidewinderGun()
// {
// 	local X2WeaponTemplate Template;

// 	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_SidewinderGun');

// 	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
// 	Template.WeaponCat = 'PA_SidewinderGunCat';
// 	Template.WeaponTech = 'conventional';
// 	Template.ItemCat = 'weapon';
// 	Template.strImage = "img:///LWSidewinderSMG.Textures.LWBeamSMG_Common";
// 	Template.EquipSound = "Conventional_Weapon_Equip";
// 	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

// 	Template.RangeAccuracy = default.SIDEWINDERGUN_RANGE;
// 	Template.BaseDamage = default.SIDEWINDERGUN_CONVENTIONAL_BASEDAMAGE;
// 	Template.Aim = default.SIDEWINDERGUN_AIM;
// 	Template.CritChance = default.SIDEWINDERGUN_CRITCHANCE;
// 	Template.iClipSize = default.SIDEWINDERGUN_ICLIPSIZE;
// 	Template.iSoundRange = default.SIDEWINDERGUN_ISOUNDRANGE;
// 	Template.iEnvironmentDamage = default.SIDEWINDERGUN_CONVENTIONAL_IENVIRONMENTDAMAGE;
// 	Template.Tier = 0;
	
// 	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

// 	Template.InventorySlot = eInvSlot_PrimaryWeapon;
// 	Template.Abilities.AddItem('StandardShot');
// 	Template.Abilities.AddItem('Overwatch');
// 	Template.Abilities.AddItem('OverwatchShot');
// 	Template.Abilities.AddItem('Reload');
// 	Template.Abilities.AddItem('HotLoadAmmo');
// 	// added as class levels up: Template.Abilities.AddItem('Suppression');
// 	// added as class levels up: Template.Abilities.AddItem('Execute');
// 	Template.GameArchetype = "LWSidewinderSMG.Archetypes.WP_Sidewinder_SMG";
// 	Template.iPhysicsImpulse = 5;

// 	Template.StartingItem = true;
// 	Template.CanBeBuilt = false;
// 	Template.bInfiniteItem = true;

// 	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

// 	return Template;
// }

// static function X2DataTemplate CreateTemplate_PA_SidewinderGunLaser()
// {
// 	local X2WeaponTemplate Template;
// 	local ArtifactCost	Resources;
// 	local int i;

// 	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_SidewinderGunLaser');

// 	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
// 	Template.WeaponCat = 'PA_SidewinderGunCat';
// 	Template.WeaponTech = 'laser_lw';
// 	Template.ItemCat = 'weapon';
// 	Template.strImage = "img:///LWSidewinderSMG.Textures.LWBeamSMG_Common";
// 	Template.EquipSound = "Beam_Weapon_Equip";
// 	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

// 	Template.RangeAccuracy = default.SIDEWINDERGUN_RANGE;
// 	Template.BaseDamage = default.SIDEWINDERGUN_LASER_BaseDamage;
// 	Template.Aim = default.LASERWEAPONAIMBONUS;
// 	Template.CritChance = default.SIDEWINDERGUN_CRITCHANCE;
// 	Template.iClipSize = default.SIDEWINDERGUN_ICLIPSIZE;
// 	Template.iSoundRange = default.SIDEWINDERGUN_ISOUNDRANGE;
// 	Template.iEnvironmentDamage = default.SIDEWINDERGUN_LASER_IENVIRONMENTDAMAGE;
// 	Template.Tier = 150;
	
// 	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

// 	Template.InventorySlot = eInvSlot_PrimaryWeapon;
// 	Template.Abilities.AddItem('StandardShot');
// 	Template.Abilities.AddItem('Overwatch');
// 	Template.Abilities.AddItem('OverwatchShot');
// 	Template.Abilities.AddItem('Reload');
// 	Template.Abilities.AddItem('HotLoadAmmo');
// 	// added as class levels up: Template.Abilities.AddItem('Suppression');
// 	// added as class levels up: Template.Abilities.AddItem('Execute');
// 	Template.GameArchetype = "LWSidewinderSMG.Archetypes.WP_Sidewinder_SMG";
// 	Template.iPhysicsImpulse = 5;

// 	Template.CanBeBuilt = true;
// 	Template.TradingPostValue = default.LASER_ALIEN_GUN_BLACKMARKET_VALUE;
// 	Template.bInfiniteItem = false;
// 	Template.StartingItem = false;

// 	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

// 	Template.Requirements.RequiredSoldierClass = 'SidewinderClass';

// 	if (default.LASER_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_GUN_ENGINEERING_SCORE;
// 	Template.Requirements.RequiredTechs = default.LASER_ALIEN_GUN_REQUIRED_TECHS;

// 			for (i = 0; i < default.LASER_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
// 			{
// 				if (default.LASER_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
// 				{
// 	Resources.ItemTemplateName = default.LASER_ALIEN_GUN_BUILD_COST_TYPE[i];
// 	Resources.Quantity = default.LASER_ALIEN_GUN_BUILD_COST_QUANTITY[i];
// 	Template.Cost.ResourceCosts.AddItem(Resources);
// 				}
// 			}

// 	return Template;
// }


// // Vanilla weapon has WeaponCat rifle, so anybody could use it
// static function X2DataTemplate CreateTemplate_PA_SidewinderGunMagnetic()
// {
// 	local X2WeaponTemplate Template;
// 	local ArtifactCost	Resources;
// 	local int i;

// 	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_SidewinderGunMagnetic');

// 	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
// 	Template.WeaponCat = 'PA_SidewinderGunCat';
// 	Template.WeaponTech = 'magnetic';
// 	Template.ItemCat = 'weapon';
// 	Template.strImage = "img:///LWSidewinderSMG.Textures.LWBeamSMG_Common";
// 	Template.EquipSound = "Magnetic_Weapon_Equip";
// 	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
// 	Template.Tier = 160;
// 	Template.RangeAccuracy = default.SIDEWINDERGUN_RANGE;
// 	Template.BaseDamage = default.SIDEWINDERGUN_MAGNETIC_BASEDAMAGE;
// 	Template.Aim = default.SIDEWINDERGUN_AIM;
// 	Template.CritChance = default.SIDEWINDERGUN_CRITCHANCE;
// 	Template.iClipSize = default.SIDEWINDERGUN_ICLIPSIZE;
// 	Template.iSoundRange = default.SIDEWINDERGUN_ISOUNDRANGE;
// 	Template.iEnvironmentDamage = default.SIDEWINDERGUN_MAGNETIC_IENVIRONMENTDAMAGE;
	
// 	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

// 	Template.InventorySlot = eInvSlot_PrimaryWeapon;
// 	Template.Abilities.AddItem('StandardShot');
// 	Template.Abilities.AddItem('Overwatch');
// 	Template.Abilities.AddItem('OverwatchShot');
// 	Template.Abilities.AddItem('Reload');
// 	Template.Abilities.AddItem('HotLoadAmmo');
// 	// added as class levels up: Template.Abilities.AddItem('Suppression');
// 	// added as class levels up: Template.Abilities.AddItem('Execute');
// 	Template.GameArchetype = "LWSidewinderSMG.Archetypes.WP_Sidewinder_SMG";
// 	Template.iPhysicsImpulse = 5;

// 	// Template.CreatorTemplateName = 'SniperRifle_MG_Schematic';
// 	// Template.BaseItem = 'PA_ViperGun'; // Which item this will be upgraded from

// 	Template.CanBeBuilt = true;
// 	Template.TradingPostValue = default.MAGNETIC_ALIEN_GUN_BLACKMARKET_VALUE;
// 	Template.bInfiniteItem = false;
// 	Template.StartingItem = false;

// 	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

// 	Template.Requirements.RequiredSoldierClass = 'SidewinderClass';

// 	if (default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE;
// 	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_GUN_REQUIRED_TECHS;

// 			for (i = 0; i < default.MAGNETIC_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
// 			{
// 				if (default.MAGNETIC_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
// 				{
// 	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_GUN_BUILD_COST_TYPE[i];
// 	Resources.Quantity = default.MAGNETIC_ALIEN_GUN_BUILD_COST_QUANTITY[i];
// 	Template.Cost.ResourceCosts.AddItem(Resources);
// 				}
// 			}

// 	return Template;
// }

// static function X2DataTemplate CreateTemplate_PA_SidewinderGunCoil()
// {
// 	local X2WeaponTemplate Template;
// 	local ArtifactCost	Resources;
// 	local int i;

// 	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_SidewinderGunCoil');

// 	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
// 	Template.WeaponCat = 'PA_SidewinderGunCat';
// 	Template.WeaponTech = 'coilgun_lw';
// 	Template.ItemCat = 'weapon';
// 	Template.strImage = "img:///LWSidewinderSMG.Textures.LWBeamSMG_Common";
// 	Template.EquipSound = "Magnetic_Weapon_Equip";
// 	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

// 	Template.RangeAccuracy = default.SIDEWINDERGUN_RANGE;
// 	Template.BaseDamage = default.SIDEWINDERGUN_Coil_BaseDamage;
// 	Template.Aim = default.SIDEWINDERGUN_AIM;
// 	Template.CritChance = default.SIDEWINDERGUN_CRITCHANCE;
// 	Template.iClipSize = default.SIDEWINDERGUN_ICLIPSIZE;
// 	Template.iSoundRange = default.SIDEWINDERGUN_ISOUNDRANGE;
// 	Template.iEnvironmentDamage = default.SIDEWINDERGUN_COIL_IENVIRONMENTDAMAGE;
// 	Template.Tier = 170;
	
// 	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

// 	Template.InventorySlot = eInvSlot_PrimaryWeapon;
// 	Template.Abilities.AddItem('StandardShot');
// 	Template.Abilities.AddItem('Overwatch');
// 	Template.Abilities.AddItem('OverwatchShot');
// 	Template.Abilities.AddItem('Reload');
// 	Template.Abilities.AddItem('HotLoadAmmo');
// 	Template.Abilities.AddItem('CoilgunBonusShredAbility');
// 	// added as class levels up: Template.Abilities.AddItem('Suppression');
// 	// added as class levels up: Template.Abilities.AddItem('Execute');
// 	Template.GameArchetype = "LWSidewinderSMG.Archetypes.WP_Sidewinder_SMG";
// 	Template.iPhysicsImpulse = 5;

// 	Template.CanBeBuilt = true;
// 	Template.TradingPostValue = default.COIL_ALIEN_GUN_BLACKMARKET_VALUE;
// 	Template.bInfiniteItem = false;
// 	Template.StartingItem = false;

// 	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

// 	Template.Requirements.RequiredSoldierClass = 'SidewinderClass';

// 	if (default.COIL_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_GUN_ENGINEERING_SCORE;
// 	Template.Requirements.RequiredTechs = default.COIL_ALIEN_GUN_REQUIRED_TECHS;

// 			for (i = 0; i < default.COIL_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
// 			{
// 				if (default.COIL_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
// 				{
// 	Resources.ItemTemplateName = default.COIL_ALIEN_GUN_BUILD_COST_TYPE[i];
// 	Resources.Quantity = default.COIL_ALIEN_GUN_BUILD_COST_QUANTITY[i];
// 	Template.Cost.ResourceCosts.AddItem(Resources);
// 				}
// 			}

// 	return Template;
// }

// static function X2DataTemplate CreateTemplate_PA_SidewinderGunBeam()
// {
// 	local X2WeaponTemplate Template;
// 	local ArtifactCost	Resources;
// 	local int i;

// 	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_SidewinderGunBeam');

// 	Template.WeaponPanelImage = "_BeamRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
// 	Template.WeaponCat = 'PA_SidewinderGunCat';
// 	Template.WeaponTech = 'beam';
// 	Template.ItemCat = 'weapon';
// 	Template.strImage = "img:///LWSidewinderSMG.Textures.LWBeamSMG_Common";
// 	Template.EquipSound = "Beam_Weapon_Equip";
// 	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
// 	Template.Tier = 180;

// 	Template.RangeAccuracy = default.SIDEWINDERGUN_RANGE;
// 	Template.BaseDamage = default.SIDEWINDERGUN_BEAM_BASEDAMAGE;
// 	Template.Aim = default.SIDEWINDERGUN_AIM;
// 	Template.CritChance = default.SIDEWINDERGUN_CRITCHANCE;
// 	Template.iClipSize = default.SIDEWINDERGUN_ICLIPSIZE;
// 	Template.iSoundRange = default.SIDEWINDERGUN_ISOUNDRANGE;
// 	Template.iEnvironmentDamage = default.SIDEWINDERGUN_BEAM_IENVIRONMENTDAMAGE;
	
// 	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

// 	Template.InventorySlot = eInvSlot_PrimaryWeapon;
// 	Template.Abilities.AddItem('StandardShot');
// 	Template.Abilities.AddItem('Overwatch');
// 	Template.Abilities.AddItem('OverwatchShot');
// 	Template.Abilities.AddItem('Reload');
// 	Template.Abilities.AddItem('HotLoadAmmo');
// 	// added as class levels up: Template.Abilities.AddItem('Suppression');
// 	// added as class levels up: Template.Abilities.AddItem('Execute');
// 	Template.GameArchetype = "LWSidewinderSMG.Archetypes.WP_Sidewinder_SMG";
// 	Template.iPhysicsImpulse = 5;
	
// 	// Template.CreatorTemplateName = 'SniperRifle_BM_Schematic';
// 	// Template.BaseItem = 'PA_ViperGunMagnetic'; // Which item this will be upgraded from

// 	Template.CanBeBuilt = true;
// 	Template.TradingPostValue = default.BEAM_ALIEN_GUN_BLACKMARKET_VALUE;
// 	Template.bInfiniteItem = false;
// 	Template.StartingItem = false;

// 	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

// 	Template.Requirements.RequiredSoldierClass = 'SidewinderClass';

// 	if (default.BEAM_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_GUN_ENGINEERING_SCORE;
// 	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_GUN_REQUIRED_TECHS;

// 			for (i = 0; i < default.BEAM_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
// 			{
// 				if (default.BEAM_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
// 				{
// 	Resources.ItemTemplateName = default.BEAM_ALIEN_GUN_BUILD_COST_TYPE[i];
// 	Resources.Quantity = default.BEAM_ALIEN_GUN_BUILD_COST_QUANTITY[i];
// 	Template.Cost.ResourceCosts.AddItem(Resources);
// 				}
// 			}

// 	return Template;
// }

// static function X2DataTemplate CreateTemplate_PA_NajaGun()
// {
// 	local X2WeaponTemplate Template;

// 	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_NajaGun');

// 	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
// 	Template.WeaponCat = 'PA_NajaGunCat';
// 	Template.WeaponTech = 'conventional';
// 	Template.ItemCat = 'weapon';
// 	Template.strImage = "img:///UILibrary_Common.UI_BeamSniper.BeamSniper_Base";
// 	Template.EquipSound = "Conventional_Weapon_Equip";
// 	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

// 	Template.RangeAccuracy = default.NAJAGUN_RANGE;
// 	Template.BaseDamage = default.NAJAGUN_CONVENTIONAL_BASEDAMAGE;
// 	Template.Aim = default.NAJAGUN_AIM;
// 	Template.CritChance = default.NAJAGUN_CRITCHANCE;
// 	Template.iClipSize = default.NAJAGUN_ICLIPSIZE;
// 	Template.iSoundRange = default.NAJAGUN_ISOUNDRANGE;
// 	Template.iEnvironmentDamage = default.NAJAGUN_CONVENTIONAL_IENVIRONMENTDAMAGE;
// 	Template.Tier = 0;
	
// 	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;
// 	Template.iTypicalActionCost = 2;

// 	Template.InventorySlot = eInvSlot_PrimaryWeapon;
// 	Template.Abilities.AddItem('SniperStandardFire');
// 	Template.Abilities.AddItem('SniperRifleOverwatch');
// 	Template.Abilities.AddItem('OverwatchShot');
// 	Template.Abilities.AddItem('Reload');
// 	Template.Abilities.AddItem('HotLoadAmmo');
// 	// added as class levels up: Template.Abilities.AddItem('Suppression');
// 	// added as class levels up: Template.Abilities.AddItem('Execute');
// 	Template.GameArchetype = "NajaRifle.WP_NajaRifle";
// 	Template.iPhysicsImpulse = 5;

// 	Template.StartingItem = true;
// 	Template.CanBeBuilt = false;
// 	Template.bInfiniteItem = true;

// 	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

// 	return Template;
// }

// static function X2DataTemplate CreateTemplate_PA_NajaGunLaser()
// {
// 	local X2WeaponTemplate Template;
// 	local ArtifactCost	Resources;
// 	local int i;

// 	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_NajaGunLaser');

// 	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
// 	Template.WeaponCat = 'PA_NajaGunCat';
// 	Template.WeaponTech = 'laser_lw';
// 	Template.ItemCat = 'weapon';
// 	Template.strImage = "img:///UILibrary_Common.UI_BeamSniper.BeamSniper_Base";
// 	Template.EquipSound = "Beam_Weapon_Equip";
// 	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

// 	Template.RangeAccuracy = default.NAJAGUN_RANGE;
// 	Template.BaseDamage = default.NAJAGUN_LASER_BaseDamage;
// 	Template.Aim = default.LASERWEAPONAIMBONUS;
// 	Template.CritChance = default.NAJAGUN_CRITCHANCE;
// 	Template.iClipSize = default.NAJAGUN_ICLIPSIZE;
// 	Template.iSoundRange = default.NAJAGUN_ISOUNDRANGE;
// 	Template.iEnvironmentDamage = default.NAJAGUN_LASER_IENVIRONMENTDAMAGE;
// 	Template.Tier = 150;
	
// 	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;
// 	Template.iTypicalActionCost = 2;

// 	Template.InventorySlot = eInvSlot_PrimaryWeapon;
// 	Template.Abilities.AddItem('SniperStandardFire');
// 	Template.Abilities.AddItem('SniperRifleOverwatch');
// 	Template.Abilities.AddItem('OverwatchShot');
// 	Template.Abilities.AddItem('Reload');
// 	Template.Abilities.AddItem('HotLoadAmmo');
// 	// added as class levels up: Template.Abilities.AddItem('Suppression');
// 	// added as class levels up: Template.Abilities.AddItem('Execute');
// 	Template.GameArchetype = "NajaRifle.WP_NajaRifle";
// 	Template.iPhysicsImpulse = 5;

// 	Template.CanBeBuilt = true;
// 	Template.TradingPostValue = default.LASER_ALIEN_LONGGUN_BLACKMARKET_VALUE;
// 	Template.bInfiniteItem = false;
// 	Template.StartingItem = false;

// 	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

// 	Template.Requirements.RequiredSoldierClass = 'NajaClass';

// 	if (default.LASER_ALIEN_LONGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_LONGGUN_ENGINEERING_SCORE;
// 	Template.Requirements.RequiredTechs = default.LASER_ALIEN_LONGGUN_REQUIRED_TECHS;

// 			for (i = 0; i < default.LASER_ALIEN_LONGGUN_BUILD_COST_TYPE.Length; i++)
// 			{
// 				if (default.LASER_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i] > 0)
// 				{
// 	Resources.ItemTemplateName = default.LASER_ALIEN_LONGGUN_BUILD_COST_TYPE[i];
// 	Resources.Quantity = default.LASER_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i];
// 	Template.Cost.ResourceCosts.AddItem(Resources);
// 				}
// 			}

// 	return Template;
// }


// // Vanilla weapon has WeaponCat rifle, so anybody could use it
// static function X2DataTemplate CreateTemplate_PA_NajaGunMagnetic()
// {
// 	local X2WeaponTemplate Template;
// 	local ArtifactCost	Resources;
// 	local int i;

// 	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_NajaGunMagnetic');

// 	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
// 	Template.WeaponCat = 'PA_NajaGunCat';
// 	Template.WeaponTech = 'magnetic';
// 	Template.ItemCat = 'weapon';
// 	Template.strImage = "img:///UILibrary_Common.UI_BeamSniper.BeamSniper_Base";
// 	Template.EquipSound = "Magnetic_Weapon_Equip";
// 	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
// 	Template.Tier = 160;
// 	Template.RangeAccuracy = default.NAJAGUN_RANGE;
// 	Template.BaseDamage = default.NAJAGUN_MAGNETIC_BASEDAMAGE;
// 	Template.Aim = default.NAJAGUN_AIM;
// 	Template.CritChance = default.NAJAGUN_CRITCHANCE;
// 	Template.iClipSize = default.NAJAGUN_ICLIPSIZE;
// 	Template.iSoundRange = default.NAJAGUN_ISOUNDRANGE;
// 	Template.iEnvironmentDamage = default.NAJAGUN_MAGNETIC_IENVIRONMENTDAMAGE;
	
// 	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;
// 	Template.iTypicalActionCost = 2;

// 	Template.InventorySlot = eInvSlot_PrimaryWeapon;
// 	Template.Abilities.AddItem('SniperStandardFire');
// 	Template.Abilities.AddItem('SniperRifleOverwatch');
// 	Template.Abilities.AddItem('OverwatchShot');
// 	Template.Abilities.AddItem('Reload');
// 	Template.Abilities.AddItem('HotLoadAmmo');
// 	// added as class levels up: Template.Abilities.AddItem('Suppression');
// 	// added as class levels up: Template.Abilities.AddItem('Execute');
// 	Template.GameArchetype = "NajaRifle.WP_NajaRifle";
// 	Template.iPhysicsImpulse = 5;

// 	// Template.CreatorTemplateName = 'SniperRifle_MG_Schematic';
// 	// Template.BaseItem = 'PA_ViperGun'; // Which item this will be upgraded from

// 	Template.CanBeBuilt = true;
// 	Template.TradingPostValue = default.MAGNETIC_ALIEN_LONGGUN_BLACKMARKET_VALUE;
// 	Template.bInfiniteItem = false;
// 	Template.StartingItem = false;

// 	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

// 	Template.Requirements.RequiredSoldierClass = 'NajaClass';

// 	if (default.MAGNETIC_ALIEN_LONGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_LONGGUN_ENGINEERING_SCORE;
// 	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_LONGGUN_REQUIRED_TECHS;

// 			for (i = 0; i < default.MAGNETIC_ALIEN_LONGGUN_BUILD_COST_TYPE.Length; i++)
// 			{
// 				if (default.MAGNETIC_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i] > 0)
// 				{
// 	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_LONGGUN_BUILD_COST_TYPE[i];
// 	Resources.Quantity = default.MAGNETIC_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i];
// 	Template.Cost.ResourceCosts.AddItem(Resources);
// 				}
// 			}

// 	return Template;
// }

// static function X2DataTemplate CreateTemplate_PA_NajaGunCoil()
// {
// 	local X2WeaponTemplate Template;
// 	local ArtifactCost	Resources;
// 	local int i;

// 	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_NajaGunCoil');

// 	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
// 	Template.WeaponCat = 'PA_NajaGunCat';
// 	Template.WeaponTech = 'coilgun_lw';
// 	Template.ItemCat = 'weapon';
// 	Template.strImage = "img:///UILibrary_Common.UI_BeamSniper.BeamSniper_Base";
// 	Template.EquipSound = "Magnetic_Weapon_Equip";
// 	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

// 	Template.RangeAccuracy = default.NAJAGUN_RANGE;
// 	Template.BaseDamage = default.NAJAGUN_Coil_BaseDamage;
// 	Template.Aim = default.NAJAGUN_AIM;
// 	Template.CritChance = default.NAJAGUN_CRITCHANCE;
// 	Template.iClipSize = default.NAJAGUN_ICLIPSIZE;
// 	Template.iSoundRange = default.NAJAGUN_ISOUNDRANGE;
// 	Template.iEnvironmentDamage = default.NAJAGUN_COIL_IENVIRONMENTDAMAGE;
// 	Template.Tier = 170;
	
// 	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;
// 	Template.iTypicalActionCost = 2;

// 	Template.InventorySlot = eInvSlot_PrimaryWeapon;
// 	Template.Abilities.AddItem('SniperStandardFire');
// 	Template.Abilities.AddItem('SniperRifleOverwatch');
// 	Template.Abilities.AddItem('OverwatchShot');
// 	Template.Abilities.AddItem('Reload');
// 	Template.Abilities.AddItem('HotLoadAmmo');
// 	Template.Abilities.AddItem('CoilgunBonusShredAbility');
// 	// added as class levels up: Template.Abilities.AddItem('Suppression');
// 	// added as class levels up: Template.Abilities.AddItem('Execute');
// 	Template.GameArchetype = "NajaRifle.WP_NajaRifle";
// 	Template.iPhysicsImpulse = 5;

// 	Template.CanBeBuilt = true;
// 	Template.TradingPostValue = default.COIL_ALIEN_LONGGUN_BLACKMARKET_VALUE;
// 	Template.bInfiniteItem = false;
// 	Template.StartingItem = false;

// 	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

// 	Template.Requirements.RequiredSoldierClass = 'NajaClass';

// 	if (default.COIL_ALIEN_LONGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_LONGGUN_ENGINEERING_SCORE;
// 	Template.Requirements.RequiredTechs = default.COIL_ALIEN_LONGGUN_REQUIRED_TECHS;

// 			for (i = 0; i < default.COIL_ALIEN_LONGGUN_BUILD_COST_TYPE.Length; i++)
// 			{
// 				if (default.COIL_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i] > 0)
// 				{
// 	Resources.ItemTemplateName = default.COIL_ALIEN_LONGGUN_BUILD_COST_TYPE[i];
// 	Resources.Quantity = default.COIL_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i];
// 	Template.Cost.ResourceCosts.AddItem(Resources);
// 				}
// 			}

// 	return Template;
// }

// static function X2DataTemplate CreateTemplate_PA_NajaGunBeam()
// {
// 	local X2WeaponTemplate Template;
// 	local ArtifactCost	Resources;
// 	local int i;

// 	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_NajaGunBeam');

// 	Template.WeaponPanelImage = "_BeamRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
// 	Template.WeaponCat = 'PA_NajaGunCat';
// 	Template.WeaponTech = 'beam';
// 	Template.ItemCat = 'weapon';
// 	Template.strImage = "img:///UILibrary_Common.UI_BeamSniper.BeamSniper_Base";
// 	Template.EquipSound = "Beam_Weapon_Equip";
// 	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
// 	Template.Tier = 180;

// 	Template.RangeAccuracy = default.NAJAGUN_RANGE;
// 	Template.BaseDamage = default.NAJAGUN_BEAM_BASEDAMAGE;
// 	Template.Aim = default.NAJAGUN_AIM;
// 	Template.CritChance = default.NAJAGUN_CRITCHANCE;
// 	Template.iClipSize = default.NAJAGUN_ICLIPSIZE;
// 	Template.iSoundRange = default.NAJAGUN_ISOUNDRANGE;
// 	Template.iEnvironmentDamage = default.NAJAGUN_BEAM_IENVIRONMENTDAMAGE;
	
// 	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;
// 	Template.iTypicalActionCost = 2;

// 	Template.InventorySlot = eInvSlot_PrimaryWeapon;
// 	Template.Abilities.AddItem('SniperStandardFire');
// 	Template.Abilities.AddItem('SniperRifleOverwatch');
// 	Template.Abilities.AddItem('OverwatchShot');
// 	Template.Abilities.AddItem('Reload');
// 	Template.Abilities.AddItem('HotLoadAmmo');
// 	// added as class levels up: Template.Abilities.AddItem('Suppression');
// 	// added as class levels up: Template.Abilities.AddItem('Execute');
// 	Template.GameArchetype = "NajaRifle.WP_NajaRifle";
// 	Template.iPhysicsImpulse = 5;
	
// 	// Template.CreatorTemplateName = 'SniperRifle_BM_Schematic';
// 	// Template.BaseItem = 'PA_ViperGunMagnetic'; // Which item this will be upgraded from

// 	Template.CanBeBuilt = true;
// 	Template.TradingPostValue = default.BEAM_ALIEN_LONGGUN_BLACKMARKET_VALUE;
// 	Template.bInfiniteItem = false;
// 	Template.StartingItem = false;

// 	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

// 	Template.Requirements.RequiredSoldierClass = 'NajaClass';

// 	if (default.BEAM_ALIEN_LONGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_LONGGUN_ENGINEERING_SCORE;
// 	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_LONGGUN_REQUIRED_TECHS;

// 			for (i = 0; i < default.BEAM_ALIEN_LONGGUN_BUILD_COST_TYPE.Length; i++)
// 			{
// 				if (default.BEAM_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i] > 0)
// 				{
// 	Resources.ItemTemplateName = default.BEAM_ALIEN_LONGGUN_BUILD_COST_TYPE[i];
// 	Resources.Quantity = default.BEAM_ALIEN_LONGGUN_BUILD_COST_QUANTITY[i];
// 	Template.Cost.ResourceCosts.AddItem(Resources);
// 				}
// 			}

// 	return Template;
// }

static function X2DataTemplate CreateTemplate_PA_ArchonGun()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_ArchonGun');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_ArchonGunCat';
	Template.WeaponTech = 'conventional';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.ArchonStaff";
	Template.EquipSound = "Conventional_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 0;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.PA_ArchonGun_Conventional_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_CONVENTIONAL_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_CONVENTIONAL_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Archon_Rifle.WP_ArchonRifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.StartingItem = true;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_ArchonGunLaser()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_ArchonGunLaser');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_ArchonGunCat';
	Template.WeaponTech = 'laser_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.ArchonStaff";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 150;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.PA_ArchonGun_Laser_BASEDAMAGE;
	Template.Aim = default.LASERWEAPONAIMBONUS;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Archon_Rifle.WP_ArchonRifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.LASER_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'ArchonClass';

	if (default.LASER_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.LASER_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.LASER_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.LASER_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.LASER_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.LASER_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_ArchonGunMagnetic()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_ArchonGunMagnetic');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_ArchonGunCat';
	Template.WeaponTech = 'magnetic';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.ArchonStaff";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 160;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.PA_ArchonGun_Magnetic_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Archon_Rifle.WP_ArchonRifle";
	Template.iPhysicsImpulse = 5;
	
	//Template.CreatorTemplateName = 'AssaultRifle_MG_Schematic';
	//Template.BaseItem = 'PA_MutonGun'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'ArchonClass';

	if (default.MAGNETIC_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_ArchonGunCoil()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_ArchonGunCoil');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_ArchonGunCat';
	Template.WeaponTech = 'coilgun_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.ArchonStaff";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 170;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.PA_ArchonGun_Coil_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_MAGNETIC_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('CoilgunBonusShredAbility');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Archon_Rifle.WP_ArchonRifle";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.COIL_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'ArchonClass';

	if (default.COIL_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.COIL_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.COIL_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.COIL_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.COIL_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.COIL_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


static function X2DataTemplate CreateTemplate_PA_ArchonGunBeam()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_ArchonGunBeam');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_ArchonGunCat';
	Template.WeaponTech = 'beam';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.ArchonStaff";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 180;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_BEAM_RANGE;
	Template.BaseDamage = default.PA_ArchonGun_Beam_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.LMG_BEAM_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.LMG_BEAM_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_Archon_Rifle.WP_ArchonRifle";
	Template.iPhysicsImpulse = 5;
	
	//Template.CreatorTemplateName = 'AssaultRifle_BM_Schematic';
	//Template.BaseItem = 'PA_MutonGunMagnetic'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ALIEN_BIGGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'ArchonClass';

	if (default.BEAM_ALIEN_BIGGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_BIGGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_BIGGUN_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_ALIEN_BIGGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ALIEN_BIGGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ALIEN_BIGGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_ArchonPinions()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_ArchonPinions');
	
	Template.WeaponPanelImage = "_ConventionalRifle";                       // used by the UI. Probably determines iconview of the weapon.
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_ArchonPinionsCat';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.ArchonStaff";

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.FLAT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.PA_ArchonPinions_BaseDamage;
	Template.iClipSize = 0;
	Template.iSoundRange = 0;
	Template.iEnvironmentDamage = default.PA_ArchonPinions_IENVIRONMENTDAMAGE;
	Template.iIdealRange = default.PA_ArchonPinions_Range;
	Template.iPhysicsImpulse = 5;
	Template.DamageTypeTemplateName = 'BlazingPinions';

	Template.InventorySlot = eInvSlot_TertiaryWeapon;
	Template.Abilities.AddItem('BlazingPinionsStage2');

	// This all the resources; sounds, animations, models, physics, the works.
	Template.GameArchetype = "WP_Archon_Blazing_Pinions.WP_Blazing_Pinions_CV";

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.StartingItem = true;

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_ArchonBayonet()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_ArchonBayonet');

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_ArchonMeleeCat';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///UILibrary_PlayableAdvent.MutonBayonet";
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.StowedLocation = eSlot_RightBack;
	Template.GameArchetype = "WP_Archon_Staff.WP_ArchonStaff";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.iRange = 0;
	Template.iRadius = 1;
	Template.InfiniteAmmo = true;
	Template.iPhysicsImpulse = 5;
	Template.iIdealRange = 1;
	Template.BaseDamage = default.ARCHON_BAYONET_BASEDAMAGE;
	Template.BaseDamage.DamageType='Melee';
	Template.iSoundRange = 2;
	Template.iEnvironmentDamage = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.Abilities.AddItem('StandardMelee');
	Template.AddAbilityIconOverride('StandardMelee', "img:///UILibrary_PerkIcons.UIPerk_archon_beatdown");

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_ArchonEliteBayonet()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_ArchonEliteBayonet');

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_ArchonMeleeCat';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///UILibrary_PlayableAdvent.MutonBayonet";
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.StowedLocation = eSlot_RightBack;
	Template.GameArchetype = "WP_Archon_Staff.WP_ArchonStaff";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.iRange = 0;
	Template.iRadius = 1;
	Template.InfiniteAmmo = true;
	Template.iPhysicsImpulse = 5;
	Template.iIdealRange = 1;
	Template.BaseDamage = default.ARCHON_ELITEBAYONET_BASEDAMAGE;
	Template.BaseDamage.DamageType='Melee';
	Template.iSoundRange = 2;
	Template.iEnvironmentDamage = 10;
	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ARCHON_BAYONET_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.Abilities.AddItem('StandardMelee');
	Template.AddAbilityIconOverride('StandardMelee', "img:///UILibrary_PerkIcons.UIPerk_archon_beatdown");
	Template.Abilities.AddItem('LightningSlash_LW');
	Template.Tier = 144;

	Template.Requirements.RequiredSoldierClass = 'ArchonClass';

	if (default.BEAM_ARCHON_BAYONET_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ARCHON_BAYONET_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_ARCHON_BAYONET_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_ARCHON_BAYONET_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ARCHON_BAYONET_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ARCHON_BAYONET_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ARCHON_BAYONET_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostAdderGun()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostAdderGun');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostAdderGunCat';
	Template.WeaponTech = 'conventional';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_FrostDivision.Armory_Shotgun";
	Template.EquipSound = "Conventional_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

	Template.RangeAccuracy = default.PA_FrostAdder_Coil_Range;
	Template.BaseDamage = default.PA_FrostAdder_Coil_BASEDAMAGE;
	Template.Aim = default.PA_FrostAdder_Coil_AIM;
	Template.CritChance = default.PA_FrostAdder_Coil_CRITCHANCE;
	Template.iClipSize = default.PA_FrostAdder_Coil_ICLIPSIZE;
	Template.iSoundRange = default.PA_FrostAdder_Coil_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PA_FrostAdder_Coil_IENVIRONMENTDAMAGE;
	Template.Tier = 0;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_FrostViperShotgun";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostAdderGunLaser()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostAdderGunLaser');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostAdderGunCat';
	Template.WeaponTech = 'laser_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_FrostDivision.Armory_Shotgun";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

	Template.RangeAccuracy = default.PA_FrostAdder_Laser_Range;
	Template.BaseDamage = default.PA_FrostAdder_Laser_BASEDAMAGE;
	Template.Aim = default.PA_FrostAdder_Laser_AIM;
	Template.CritChance = default.PA_FrostAdder_Laser_CRITCHANCE;
	Template.iClipSize = default.PA_FrostAdder_Laser_ICLIPSIZE;
	Template.iSoundRange = default.PA_FrostAdder_Laser_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PA_FrostAdder_Laser_IENVIRONMENTDAMAGE;
	Template.Tier = 150;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_FrostViperShotgun";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.LASER_ALIEN_SHOTGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'FrostAdderClass';

	if (default.LASER_ALIEN_SHOTGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_SHOTGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.LASER_ALIEN_SHOTGUN_REQUIRED_TECHS;

			for (i = 0; i < default.LASER_ALIEN_SHOTGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.LASER_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.LASER_ALIEN_SHOTGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.LASER_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


// Vanilla weapon has WeaponCat rifle, so anybody could use it
static function X2DataTemplate CreateTemplate_PA_FrostAdderGunMagnetic()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostAdderGunMagnetic');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostAdderGunCat';
	Template.WeaponTech = 'magnetic';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_FrostDivision.Armory_Shotgun";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 160;
	Template.RangeAccuracy = default.PA_FrostAdder_Magnetic_Range;
	Template.BaseDamage = default.PA_FrostAdder_Magnetic_BASEDAMAGE;
	Template.Aim = default.PA_FrostAdder_Magnetic_AIM;
	Template.CritChance = default.PA_FrostAdder_Magnetic_CRITCHANCE;
	Template.iClipSize = default.PA_FrostAdder_Magnetic_ICLIPSIZE;
	Template.iSoundRange = default.PA_FrostAdder_Magnetic_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PA_FrostAdder_Magnetic_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_FrostViperShotgun";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);

	// Template.CreatorTemplateName = 'SniperRifle_MG_Schematic';
	// Template.BaseItem = 'PA_ViperGun'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_ALIEN_SHOTGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'FrostAdderClass';

	if (default.MAGNETIC_ALIEN_SHOTGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_SHOTGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_SHOTGUN_REQUIRED_TECHS;

			for (i = 0; i < default.MAGNETIC_ALIEN_SHOTGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_SHOTGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostAdderGunCoil()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostAdderGunCoil');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostAdderGunCat';
	Template.WeaponTech = 'coilgun_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_FrostDivision.Armory_Shotgun";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

	Template.RangeAccuracy = default.PA_FrostAdder_Coil_Range;
	Template.BaseDamage = default.PA_FrostAdder_Coil_BASEDAMAGE;
	Template.Aim = default.PA_FrostAdder_Coil_AIM;
	Template.CritChance = default.PA_FrostAdder_Coil_CRITCHANCE;
	Template.iClipSize = default.PA_FrostAdder_Coil_ICLIPSIZE;
	Template.iSoundRange = default.PA_FrostAdder_Coil_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PA_FrostAdder_Coil_IENVIRONMENTDAMAGE;
	Template.Tier = 170;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('CoilgunBonusShredAbility');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_FrostViperShotgun";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.COIL_ALIEN_SHOTGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'FrostAdderClass';

	if (default.COIL_ALIEN_SHOTGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_SHOTGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.COIL_ALIEN_SHOTGUN_REQUIRED_TECHS;

			for (i = 0; i < default.COIL_ALIEN_SHOTGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.COIL_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.COIL_ALIEN_SHOTGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.COIL_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostAdderGunBeam()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostAdderGunBeam');

	Template.WeaponPanelImage = "_BeamRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostAdderGunCat';
	Template.WeaponTech = 'beam';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_FrostDivision.Armory_Shotgun";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 180;

	Template.RangeAccuracy = default.PA_FrostAdder_Coil_Range;
	Template.BaseDamage = default.PA_FrostAdder_Coil_BASEDAMAGE;
	Template.Aim = default.PA_FrostAdder_Coil_AIM;
	Template.CritChance = default.PA_FrostAdder_Coil_CRITCHANCE;
	Template.iClipSize = default.PA_FrostAdder_Coil_ICLIPSIZE;
	Template.iSoundRange = default.PA_FrostAdder_Coil_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PA_FrostAdder_Coil_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_FrostViperShotgun";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);
	
	// Template.CreatorTemplateName = 'SniperRifle_BM_Schematic';
	// Template.BaseItem = 'PA_ViperGunMagnetic'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ALIEN_SHOTGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'FrostAdderClass';

	if (default.BEAM_ALIEN_SHOTGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_SHOTGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_SHOTGUN_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_ALIEN_SHOTGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ALIEN_SHOTGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostBomberGun()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostBomberGun');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostBomberGunCat';
	Template.WeaponTech = 'conventional';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_FrostDivision.Armory_Shotgun";
	Template.EquipSound = "Conventional_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

	Template.RangeAccuracy = default.PA_FrostBomber_Conventional_Range;
	Template.BaseDamage = default.PA_FrostBomber_Conventional_BASEDAMAGE;
	Template.Aim = default.PA_FrostBomber_Conventional_AIM;
	Template.CritChance = default.PA_FrostBomber_Conventional_CRITCHANCE;
	Template.iClipSize = default.PA_FrostBomber_Conventional_ICLIPSIZE;
	Template.iSoundRange = default.PA_FrostBomber_Conventional_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PA_FrostBomber_Conventional_IENVIRONMENTDAMAGE;
	Template.Tier = 0;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_FrostMutonShotgun";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);

	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostBomberGunLaser()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostBomberGunLaser');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostBomberGunCat';
	Template.WeaponTech = 'laser_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_FrostDivision.Armory_Shotgun";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

	Template.RangeAccuracy = default.PA_FrostBomber_Laser_Range;
	Template.BaseDamage = default.PA_FrostBomber_Laser_BASEDAMAGE;
	Template.Aim = default.PA_FrostBomber_Laser_AIM;
	Template.CritChance = default.PA_FrostBomber_Laser_CRITCHANCE;
	Template.iClipSize = default.PA_FrostBomber_Laser_ICLIPSIZE;
	Template.iSoundRange = default.PA_FrostBomber_Laser_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PA_FrostBomber_Laser_IENVIRONMENTDAMAGE;
	Template.Tier = 150;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_FrostMutonShotgun";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.LASER_ALIEN_SHOTGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'FrostBomberClass';

	if (default.LASER_ALIEN_SHOTGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_SHOTGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.LASER_ALIEN_SHOTGUN_REQUIRED_TECHS;

			for (i = 0; i < default.LASER_ALIEN_SHOTGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.LASER_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.LASER_ALIEN_SHOTGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.LASER_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}


// Vanilla weapon has WeaponCat rifle, so anybody could use it
static function X2DataTemplate CreateTemplate_PA_FrostBomberGunMagnetic()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostBomberGunMagnetic');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostBomberGunCat';
	Template.WeaponTech = 'magnetic';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_FrostDivision.Armory_Shotgun";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 160;
	Template.RangeAccuracy = default.PA_FrostBomber_Magnetic_Range;
	Template.BaseDamage = default.PA_FrostBomber_Magnetic_BASEDAMAGE;
	Template.Aim = default.PA_FrostBomber_Magnetic_AIM;
	Template.CritChance = default.PA_FrostBomber_Magnetic_CRITCHANCE;
	Template.iClipSize = default.PA_FrostBomber_Magnetic_ICLIPSIZE;
	Template.iSoundRange = default.PA_FrostBomber_Magnetic_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PA_FrostBomber_Magnetic_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_FrostMutonShotgun";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);

	// Template.CreatorTemplateName = 'SniperRifle_MG_Schematic';
	// Template.BaseItem = 'PA_ViperGun'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_ALIEN_SHOTGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'FrostBomberClass';

	if (default.MAGNETIC_ALIEN_SHOTGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_SHOTGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_SHOTGUN_REQUIRED_TECHS;

			for (i = 0; i < default.MAGNETIC_ALIEN_SHOTGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_SHOTGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostBomberGunCoil()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostBomberGunCoil');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostBomberGunCat';
	Template.WeaponTech = 'coilgun_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_FrostDivision.Armory_Shotgun";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);

	Template.RangeAccuracy = default.PA_FrostBomber_Coil_Range;
	Template.BaseDamage = default.PA_FrostBomber_Coil_BASEDAMAGE;
	Template.Aim = default.PA_FrostBomber_Coil_AIM;
	Template.CritChance = default.PA_FrostBomber_Coil_CRITCHANCE;
	Template.iClipSize = default.PA_FrostBomber_Coil_ICLIPSIZE;
	Template.iSoundRange = default.PA_FrostBomber_Coil_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PA_FrostBomber_Coil_IENVIRONMENTDAMAGE;
	Template.Tier = 170;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('CoilgunBonusShredAbility');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_FrostMutonShotgun";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.COIL_ALIEN_SHOTGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'FrostBomberClass';

	if (default.COIL_ALIEN_SHOTGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_SHOTGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.COIL_ALIEN_SHOTGUN_REQUIRED_TECHS;

			for (i = 0; i < default.COIL_ALIEN_SHOTGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.COIL_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.COIL_ALIEN_SHOTGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.COIL_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostBomberGunBeam()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostBomberGunBeam');

	Template.WeaponPanelImage = "_BeamRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostBomberGunCat';
	Template.WeaponTech = 'beam';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_FrostDivision.Armory_Shotgun";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 180;

	Template.RangeAccuracy = default.PA_FrostBomber_Beam_Range;
	Template.BaseDamage = default.PA_FrostBomber_Beam_BASEDAMAGE;
	Template.Aim = default.PA_FrostBomber_Beam_AIM;
	Template.CritChance = default.PA_FrostBomber_Beam_CRITCHANCE;
	Template.iClipSize = default.PA_FrostBomber_Beam_ICLIPSIZE;
	Template.iSoundRange = default.PA_FrostBomber_Beam_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PA_FrostBomber_Beam_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_FrostMutonShotgun";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);
	
	// Template.CreatorTemplateName = 'SniperRifle_BM_Schematic';
	// Template.BaseItem = 'PA_ViperGunMagnetic'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ALIEN_SHOTGUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'FrostBomberClass';

	if (default.BEAM_ALIEN_SHOTGUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_SHOTGUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_SHOTGUN_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_ALIEN_SHOTGUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ALIEN_SHOTGUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ALIEN_SHOTGUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

// Vanilla weapon has broken image
static function X2DataTemplate CreateTemplate_PA_FrostBomberBayonet()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostBomberBayonet');

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_FrostBomberBayonetCat';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///UILibrary_PlayableAdvent.MutonBayonet";
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.StowedLocation = eSlot_RightBack;
	Template.GameArchetype = "WP_Muton_Bayonet.WP_MutonBayonet";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.iRange = 0;
	Template.iRadius = 1;
	Template.InfiniteAmmo = true;
	Template.iPhysicsImpulse = 5;
	Template.iIdealRange = 1;
	Template.BaseDamage = default.FrostBomber_BAYONET_BASEDAMAGE;
	Template.BaseDamage.DamageType='Melee';
	Template.iSoundRange = 2;
	Template.iEnvironmentDamage = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.Abilities.AddItem('MZ_FDMutonBayonetStab');
	// Added in classdata initial level: Template.Abilities.AddItem('CounterattackBayonet');

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostBomberEliteBayonet()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostBomberEliteBayonet');

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_FrostBomberBayonetCat';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///UILibrary_PlayableAdvent.MutonBayonet";
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.StowedLocation = eSlot_RightBack;
	Template.GameArchetype = "WP_Muton_Bayonet.WP_MutonBayonet";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.iRange = 0;
	Template.iRadius = 1;
	Template.InfiniteAmmo = true;
	Template.iPhysicsImpulse = 5;
	Template.iIdealRange = 1;
	Template.BaseDamage = default.FrostBomber_ELITEBAYONET_BASEDAMAGE;
	Template.BaseDamage.DamageType='Melee';
	Template.iSoundRange = 2;
	Template.iEnvironmentDamage = 10;
	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_BOMBER_BAYONET_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.Abilities.AddItem('MZ_FDMutonBayonetCharge');
	Template.Abilities.AddItem('MZ_FDMutonBayonetStab');
	// Added in classdata initial level: Template.Abilities.AddItem('MZ_FDMutonBayonetCounter');
	Template.Tier = 144;

	Template.Requirements.RequiredSoldierClass = 'FrostBomberClass';

	if (default.BEAM_BOMBER_BAYONET_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_BOMBER_BAYONET_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_BOMBER_BAYONET_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_BOMBER_BAYONET_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_BOMBER_BAYONET_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_BOMBER_BAYONET_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_BOMBER_BAYONET_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostBlob()
{
	local X2WeaponTemplate Template;

	Template = new class'X2WeaponTemplate';
	
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostBlob');

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_FrostBlobCat';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.AndromedonRifle";
	Template.EquipSound = "StrategyUI_Grenade_Equip";
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_Andromedon_FrostBlobAttack";
	Template.CanBeBuilt = false;

	Template.iRange = 14;
	Template.iRadius = 4;
	Template.iClipSize = 1;
	Template.InfiniteAmmo = true;
	Template.StartingItem = true;
	Template.bInfiniteItem = true;
	Template.iSoundRange = 6;
	Template.bSoundOriginatesFromOwnerLocation = false;

	Template.BaseDamage.DamageType = 'Frost';
	Template.BaseDamage = default.PA_FROSTBLOB_BASEDAMAGE;
	
	Template.InventorySlot = eInvSlot_TertiaryWeapon;
	Template.StowedLocation = eSlot_None;

	Template.Abilities.AddItem('MZ_FDAndromedonFrostBlob');

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostNecromancerGun()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostNecromancerGun');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostNecromancerGunCat';
	Template.WeaponTech = 'conventional';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.SectoidPistol";
	Template.EquipSound = "Conventional_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 0;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.PA_FrostNecromancer_Conventional_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_CONVENTIONAL_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_SectoidBlaster";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.StartingItem = true;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostNecromancerGunLaser()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostNecromancerGunLaser');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostNecromancerGunCat';
	Template.WeaponTech = 'laser_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.SectoidPistol";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 150;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.PA_FrostNecromancer_Laser_BASEDAMAGE;
	Template.Aim = default.LASERWEAPONAIMBONUS;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_SectoidBlaster";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.LASER_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'FrostNecromancerClass';

	if (default.LASER_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.LASER_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.LASER_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.LASER_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.LASER_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.LASER_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.LASER_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostNecromancerGunMagnetic()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostNecromancerGunMagnetic');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostNecromancerGunCat';
	Template.WeaponTech = 'magnetic';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.SectoidPistol";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 160;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.PA_FrostNecromancer_Magnetic_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_SectoidBlaster";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);
	
	//Template.CreatorTemplateName = 'Pistol_MG_Schematic';
	//Template.BaseItem = 'PA_SectoidGun'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.MAGNETIC_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.Requirements.RequiredSoldierClass = 'FrostNecromancerClass';

	if (default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.MAGNETIC_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.MAGNETIC_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.MAGNETIC_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.MAGNETIC_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.MAGNETIC_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.MAGNETIC_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostNecromancerGunCoil()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostNecromancerGunCoil');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostNecromancerGunCat';
	Template.WeaponTech = 'coilgun_lw';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.SectoidPistol";
	Template.EquipSound = "Magnetic_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 170;
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_MAGNETIC_RANGE;
	Template.BaseDamage = default.PA_FrostNecromancer_Coil_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('CoilgunBonusShredAbility');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_SectoidBlaster";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.COIL_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;
	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.Requirements.RequiredSoldierClass = 'FrostNecromancerClass';

	if (default.COIL_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.COIL_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.COIL_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.COIL_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.COIL_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.COIL_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.COIL_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_FrostNecromancerGunBeam()
{
	local X2WeaponTemplate Template;
	local ArtifactCost	Resources;
	local int i;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_FrostNecromancerGunBeam');

	Template.WeaponPanelImage = "_MagneticRifle";                       // used by the UI. Probably determines iconview of the weapon.
	
	Template.WeaponCat = 'PA_FrostNecromancerGunCat';
	Template.WeaponTech = 'beam';
	Template.ItemCat = 'weapon';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.SectoidPistol";
	Template.EquipSound = "Beam_Weapon_Equip";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.Tier = 180;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.MEDIUM_BEAM_RANGE;
	Template.BaseDamage = default.PA_FrostNecromancer_Beam_BASEDAMAGE;
	Template.Aim = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_AIM;
	Template.CritChance = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_CRITCHANCE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_ICLIPSIZE;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_BEAM_IENVIRONMENTDAMAGE;
	
	Template.NumUpgradeSlots = default.ALIEN_FIREARM_UPGRADESLOTS;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	//Template.Abilities.AddItem('HotLoadAmmo');
	// added as class levels up: Template.Abilities.AddItem('Suppression');
	// added as class levels up: Template.Abilities.AddItem('Execute');
	Template.GameArchetype = "WP_FrostDivisionRifle.WP_SectoidBlaster";
	Template.iPhysicsImpulse = 5;

	//class'BitterfrostHelper'.static.AddBitterfrostToWeaponEffects(Template);
	
	//Template.CreatorTemplateName = 'Pistol_BM_Schematic';
	//Template.BaseItem = 'PA_SectoidGunMagnetic'; // Which item this will be upgraded from

	Template.CanBeBuilt = true;
	Template.TradingPostValue = default.BEAM_ALIEN_GUN_BLACKMARKET_VALUE;
	Template.bInfiniteItem = false;
	Template.StartingItem = false;

	Template.Requirements.RequiredSoldierClass = 'FrostNecromancerClass';

	if (default.BEAM_ALIEN_GUN_ENGINEERING_SCORE > 0) Template.Requirements.RequiredEngineeringScore = default.BEAM_ALIEN_GUN_ENGINEERING_SCORE;
	Template.Requirements.RequiredTechs = default.BEAM_ALIEN_GUN_REQUIRED_TECHS;

			for (i = 0; i < default.BEAM_ALIEN_GUN_BUILD_COST_TYPE.Length; i++)
			{
				if (default.BEAM_ALIEN_GUN_BUILD_COST_QUANTITY[i] > 0)
				{
	Resources.ItemTemplateName = default.BEAM_ALIEN_GUN_BUILD_COST_TYPE[i];
	Resources.Quantity = default.BEAM_ALIEN_GUN_BUILD_COST_QUANTITY[i];
	Template.Cost.ResourceCosts.AddItem(Resources);
				}
			}

	return Template;
}