// XPTloadouts.hpp
// Used for defining advanced respawn loadouts for players
// Default behaviour is to check if the player unit has a special loadout defined. Otherwise, it will check to see if the classname matches a loadout
// Advanced functionality allows mission creator to define exactly where items are placed in unit inventories
// Also supports sub-loadout randomization. If a loadout has sub-classes defined, the script will automatically select one of them to apply to the unit.
class loadouts
{	
	class example
	{
		displayName = "Example Loadout"; // Currently unused, basically just a human-readable name for the loadout
		
		// Weapon definitions all use the following format:
		// {Weapon Classname, Suppressor, Pointer (Laser/Flashlight), Optic, [Primary magazine, ammo count], [Secondary Magazine (GL), ammo count], Bipod}
		// Any empty definitions must be defined as an empty string, or an empty array. Otherwise the loadout will not apply correctly.
		
		primaryWeapon[] = {"arifle_MXC_F", "", "acc_flashlight", "optic_ACO", {"30Rnd_65x39_caseless_mag",30}, {}, ""}; // Primary weapon definition
		secondaryWeapon[] = {"launch_B_Titan_short_F", "", "", "", {"Titan_AP", 1}, {}, ""}; // Secondary weapon (Launcher) definition.
		handgunWeapon[] = {"hgun_ACPC2_F", "", "", "", {"9Rnd_45ACP_Mag", 9}, {}, ""}; // Handgun definition
		binocular = "Binocular";
		
		uniformClass = "U_B_CombatUniform_mcam_tshirt";
		headgearClass = "H_Watchcap_blk";
		facewearClass = "";
		vestClass = "V_Chestrig_khk";
		backpackClass = "B_AssaultPack_mcamo";
		
		// Linked items requires all six definitions to be present. Use empty strings if you do not want to add that item.
		linkedItems[] = {"ItemMap", "ItemGPS", "ItemRadio", "ItemCompass", "ItemWatch", ""}; // Linked items for the unit, must follow the order of: Map, GPS, Radio, Compass, Watch, NVGs.
		
		// When placed in an item array, magazines should also have their ammo count defined
		uniformItems[] = {{"FirstAidKit", 3}, {"30Rnd_65x39_caseless_mag", 4, 30}}; // Items to place in uniform. Includes weapon magazines
		vestItems[] = {{"FirstAidKit", 3}, {"30Rnd_65x39_caseless_mag", 4, 30}}; // Items to place in vest. Includes weapon magazines
		backpackItems[] = {{"FirstAidKit", 3}, {"30Rnd_65x39_caseless_mag", 4, 30}}; // Items to place in backpack. Includes weapon magazines
		
		basicMedUniform[] = {}; // Items to be placed in the uniform only when basic medical is being used
		basicMedVest[] = {}; // Items to be placed in the vest only when basic medical is being used
		basicMedBackpack[] = {}; // Items to be placed in the backpack only when basic medical is being used
		
		advMedUniform[] = {}; // Items to be placed in the uniform only when advanced medical is being used
		advMedVest[] = {}; // Items to be placed in the vest only when advanced medical is being used
		advMedBackpack[] = {}; // Items to be placed in the backpack only when advanced medical is being used
	};
	
	class example_random
	{
		displayName = "Random Loadouts";
		class random_1
		{
			// Loadout info goes here
		};
		class random_2
		{
			// Loadout info goes here
		};
	};
	
	// Empty loadout with comments removed. Use this for your loadouts
	class base
	{
		displayName = "Base Loadout";
		
		primaryWeapon[] = {"", "", "", "", {}, {}, ""};
		secondaryWeapon[] = {"", "", "", "", {}, {}, ""};
		handgunWeapon[] = {"", "", "", "", {}, {}, ""};
		binocular = "";
		
		uniformClass = "";
		headgearClass = "";
		facewearClass = "";
		vestClass = "";
		backpackClass = "";
		
		linkedItems[] = {"ItemMap", "ItemGPS", "ItemRadio", "ItemCompass", "ItemWatch", "NVGoggles"};
		
		uniformItems[] = {};
		vestItems[] = {};
		backpackItems[] = {};
		
		basicMedUniform[] = {};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
		
		advMedUniform[] = {};
		advMedVest[] = {};
		advMedBackpack[] = {};
	};
	class B_W_Officer_F {
		// Requires the following DLC:
		// Contact Platform
		displayName = "Commander@Command";

		primaryWeapon[] = {"arifle_MX_Black_F","muzzle_snds_H","ACE_acc_pointer_green","optic_Arco_blk_F",{"30Rnd_65x39_caseless_black_mag_Tracer",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","CUP_acc_MLPLS_Laser","optic_MRD_black",{"11Rnd_45ACP_Mag",15},{},""};
		binocular = "Binocular";

		uniformClass = "U_B_CBRN_Suit_01_Wdl_F";
		headgearClass = "H_HelmetSpecB_wdl";
		facewearClass = "G_AirPurifyingRespirator_01_F";
		vestClass = "V_PlateCarrierSpec_wdl";
		backpackClass = "FRXA_tf_rt1523g_big_Ranger_Green";

		linkedItems[] = {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {};
		vestItems[] = {,{"30Rnd_65x39_caseless_black_mag_Tracer",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1}};
		backpackItems[] = {};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
	};

	class B_W_Medic_F {
		// Requires the following DLC:
		// Contact Platform
		displayName = "B_W_Medic_F";

		primaryWeapon[] = {"arifle_MX_Black_Pointer_F","muzzle_snds_H","acc_pointer_IR","optic_Arco_blk_F",{"30Rnd_65x39_caseless_black_mag_Tracer",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "U_B_CBRN_Suit_01_Wdl_F";
		headgearClass = "H_HelmetSpecB_wdl";
		facewearClass = "G_AirPurifyingRespirator_01_F";
		vestClass = "V_PlateCarrierSpec_wdl";
		backpackClass = "B_AssaultPack_wdl_BWMedic_F";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {};
		vestItems[] = {{"30Rnd_65x39_caseless_black_mag_Tracer",6,30},{"CUP_HandGrenade_M67",2,1}};
		backpackItems[] = {};

		basicMedUniform[] = {{"ACE_personalAidKit",1},{"ACE_fieldDressing",20}};
		basicMedVest[] = {};
		basicMedBackpack[] = {{"ACE_fieldDressing",45},{"ACE_epinephrine",15},{"ACE_morphine",15},{"ACE_tourniquet",4},{"ACE_bloodIV_500",4},{"ACE_bloodIV_250",4},{"ACE_bloodIV",4},{"ACE_adenosine",10}};
	};


	class B_W_Soldier_UAV_F {
		// Requires the following DLC:
		// Contact Platform
		// Apex
		displayName = "UAV Operator@Command";

		primaryWeapon[] = {"arifle_MXC_Black_Holo_Pointer_F","muzzle_snds_H","acc_pointer_IR","optic_Arco_blk_F",{"30Rnd_65x39_caseless_black_mag_Tracer",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};
		binocular = "Laserdesignator_01_khk_F";

		uniformClass = "U_B_CBRN_Suit_01_Wdl_F";
		headgearClass = "H_HelmetSpecB_wdl";
		facewearClass = "G_AirPurifyingRespirator_01_F";
		vestClass = "V_PlateCarrierSpec_wdl";
		backpackClass = "B_UAV_01_backpack_F";

		linkedItems[] = {"ItemMap","B_UavTerminal","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {};
		vestItems[] = {{"30Rnd_65x39_caseless_black_mag_Tracer",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1}};
		backpackItems[] = {};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
	};
	class B_W_Soldier_TL_F {
		// Requires the following DLC:
		// Contact Platform
		// Apex
		displayName = "Team Leader@Alpha";

		primaryWeapon[] = {"arifle_MX_GL_Black_Hamr_pointer_F","muzzle_snds_H","acc_pointer_IR","optic_Hamr",{"30Rnd_65x39_caseless_black_mag_Tracer",30},{"CUP_1Rnd_HEDP_M203",1},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "U_B_CBRN_Suit_01_Wdl_F";
		headgearClass = "H_HelmetSpecB_wdl";
		facewearClass = "G_AirPurifyingRespirator_01_F";
		vestClass = "V_PlateCarrierGL_wdl";
		backpackClass = "B_CombinationUnitRespirator_01_F";

		linkedItems[] = {"ItemMap","DSA_Detector","TFAR_anprc152","ItemCompass","ItemWatch","NVGogglesB_blk_F"};

		uniformItems[] = {};
		vestItems[] = {,{"CUP_1Rnd_HEDP_M203",10,1},{"3Rnd_HE_Grenade_shell",2,3},{"30Rnd_65x39_caseless_black_mag_Tracer",6,30}};
		backpackItems[] = {};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
	};

	class B_W_Soldier_F {
		// Requires the following DLC:
		// Contact Platform
		// Apex
		displayName = "B_W_Soldier_F";

		primaryWeapon[] = {"arifle_MX_Black_ACO_Pointer_F","muzzle_snds_H","acc_pointer_IR","optic_Hamr",{"30Rnd_65x39_caseless_black_mag_Tracer",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "U_B_CBRN_Suit_01_Wdl_F";
		headgearClass = "H_HelmetSpecB_wdl";
		facewearClass = "tmtm_f_balaclava_ratnik_headphones_winter";
		vestClass = "V_PlateCarrier2_wdl";
		backpackClass = "B_CombinationUnitRespirator_01_F";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {};
		vestItems[] = {,{"30Rnd_65x39_caseless_black_mag_Tracer",6,30},{"CUP_HandGrenade_M67",4,1},{"SmokeShell",2,1}};
		backpackItems[] = {};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
	};
	class B_W_Soldier_AR_F {
		// Requires the following DLC:
		// Contact Platform
		// Apex
		displayName = "B_W_Soldier_AR_F";

		primaryWeapon[] = {"arifle_MX_SW_Black_Pointer_F","muzzle_snds_H","acc_pointer_IR","optic_Hamr",{"100Rnd_65x39_caseless_black_mag_tracer",100},{},"bipod_01_F_blk"};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "U_B_CBRN_Suit_01_Wdl_F";
		headgearClass = "H_HelmetSpecB_wdl";
		facewearClass = "G_AirPurifyingRespirator_01_F";
		vestClass = "V_PlateCarrier2_wdl";
		backpackClass = "B_CombinationUnitRespirator_01_F";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {};
		vestItems[] = {,{"100Rnd_65x39_caseless_black_mag_tracer",4,100},{"CUP_HandGrenade_M67",2,1}};
		backpackItems[] = {};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
	};
	class B_W_Soldier_Exp_F {
		// Requires the following DLC:
		// Contact Platform
		// Apex
		displayName = "B_W_Soldier_Exp_F";

		primaryWeapon[] = {"arifle_MX_Black_F","muzzle_snds_H","acc_pointer_IR","optic_Hamr",{"30Rnd_65x39_caseless_black_mag_Tracer",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "U_B_CBRN_Suit_01_Wdl_F";
		headgearClass = "H_HelmetSpecB_wdl";
		facewearClass = "G_AirPurifyingRespirator_01_F";
		vestClass = "V_PlateCarrierGL_wdl";
		backpackClass = "B_CombinationUnitRespirator_01_F";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {};
		vestItems[] = {,{"ACE_Clacker",1},{"30Rnd_65x39_caseless_black_mag_Tracer",6,30},{"DemoCharge_Remote_Mag",3,1}};
		backpackItems[] = {};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_epinephrine",5},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
	};
	class B_Pilot_F {
		// Requires the following DLC:
		// Contact Platform
		displayName = "Pilot@Spooky";

		primaryWeapon[] = {"SMG_01_Holo_F","","","optic_Holosight_smg",{"30Rnd_45ACP_Mag_SMG_01",25},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "U_B_PilotCoveralls";
		headgearClass = "H_PilotHelmetFighter_B";
		facewearClass = "tmtm_f_GSSh01_headphones";
		backpackClass = "FRXA_tf_rt1523g_Ranger_Green";

		linkedItems[] = {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch",""};

		uniformItems[] = {{"30Rnd_45ACP_Mag_SMG_01",3,25},{"SmokeShell",1,1},{"SmokeShellBlue",1,1},{"Chemlight_green",1,1}};
		backpackItems[] = {};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedBackpack[] = {};
	};

};