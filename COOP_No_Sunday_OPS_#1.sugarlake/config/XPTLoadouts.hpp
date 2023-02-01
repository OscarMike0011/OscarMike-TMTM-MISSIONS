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

	class B_officer_F {
		// Requires the following DLC:
		// Contact Platform
		displayName = "Commander@Command";

		primaryWeapon[] = {"CUP_arifle_ACRC_blk_556","muzzle_snds_M","CUP_acc_ANPEQ_15_Black","CUP_optic_Elcan_SpecterDR_RMR_black_PIP",{"CUP_30Rnd_556x45_Stanag",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};
		binocular = "CUP_SOFLAM";

		uniformClass = "tmtm_u_combatUniform_mcamB";
		headgearClass = "tmtm_h_fastEars_mcamB";
		vestClass = "tmtm_v_GER_PVest_OFC_black";
		backpackClass = "FRXA_tf_rt1523g_Black";

		linkedItems[] = {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {{"ACE_EntrenchingTool",1}};
		vestItems[] = {{"ACE_IR_Strobe_Item",4},{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_15Rnd_9x19_M9",1,15},{"CUP_HandGrenade_M67",2,1},{"B_IR_Grenade",2,1}};
		backpackItems[] = {};

		advMedUniform[] = {{"ACE_fieldDressing",20},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		advMedVest[] = {};
		advMedBackpack[] = {};
	};

	class B_medic_F {
		// Requires the following DLC:
		// Contact Platform
		displayName = "Medic";

		primaryWeapon[] = {"CUP_arifle_ACRC_blk_556","muzzle_snds_M","CUP_acc_ANPEQ_15_Black","CUP_optic_Elcan_SpecterDR_RMR_black",{"CUP_30Rnd_556x45_Stanag",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "tmtm_u_combatUniform_mcamB";
		headgearClass = "tmtm_h_fastEars_mcamB";
		facewearClass = "tmtm_f_balaclava_ratnik_headphones";
		vestClass = "tmtm_v_GER_PVest_Med_black";
		backpackClass = "CUP_B_AssaultPack_Black";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {};
		vestItems[] = {{"ACE_IR_Strobe_Item",4},{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_HandGrenade_M67",2,1},{"B_IR_Grenade",2,1}};
		backpackItems[] = {};

		advMedUniform[] = {{"ACE_fieldDressing",20},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		advMedVest[] = {{"ACE_fieldDressing",40},{"ACE_splint",6}};
		advMedBackpack[] = {{"ACE_epinephrine",15},{"ACE_morphine",15},{"ACE_tourniquet",6},{"ACE_surgicalKit",1},{"ACE_personalAidKit",1},{"ACE_bloodIV",5},{"ACE_bloodIV_250",5},{"ACE_bloodIV_500",5}};
	};

	class B_Pilot_F {
		displayName = "Command Pilot@Command Bird";

		primaryWeapon[] = {"SMG_01_Holo_F","CUP_muzzle_mfsup_Suppressor_Mac10","","optic_Holosight_smg",{"30Rnd_45ACP_Mag_SMG_01",25},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "U_B_PilotCoveralls";
		headgearClass = "H_PilotHelmetFighter_B";
		facewearClass = "G_Combat";
		backpackClass = "FRXA_tf_rt1523g_Black";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch",""};

		uniformItems[] = {{"30Rnd_45ACP_Mag_SMG_01",2,25}};
		backpackItems[] = {};

		advMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		advMedBackpack[] = {};
	};

	class B_Soldier_F {
		// Requires the following DLC:
		// Contact Platform
		displayName = "Rifleman";

		primaryWeapon[] = {"CUP_arifle_ACRC_blk_556","muzzle_snds_M","CUP_acc_ANPEQ_15_Black","CUP_optic_Elcan_SpecterDR_RMR_black",{"CUP_30Rnd_556x45_Stanag",30},{},""};
		secondaryWeapon[] = {"CUP_launch_M72A6","","","",{},{},""};
		handgunWeapon[] = {};

		uniformClass = "tmtm_u_combatUniform_mcamB";
		headgearClass = "tmtm_h_fastEars_mcamB";
		facewearClass = "tmtm_f_balaclava_ratnik_headphones_v2";
		vestClass = "tmtm_V_GER_PVest_RFL_LT_black";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {};
		vestItems[] = {{"ACE_IR_Strobe_Item",4},{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_HandGrenade_M67",2,1},{"B_IR_Grenade",2,1}};

		advMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_tourniquet",4},{"ACE_morphine",5}};
		advMedVest[] = {};
	};

	class B_soldier_M_F {
		// Requires the following DLC:
		// Contact Platform
		displayName = "Marksman";

		primaryWeapon[] = {"CUP_srifle_Mk18_blk","muzzle_snds_B","CUP_acc_ANPEQ_15_Black","optic_MRCO",{"ACE_20Rnd_762x51_Mag_Tracer_Dim",20},{},"bipod_01_F_blk"};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};
		binocular = "Rangefinder";

		uniformClass = "tmtm_u_combatUniform_mcamB";
		headgearClass = "tmtm_h_fastEars_mcamB";
		vestClass = "tmtm_V_GER_PVest_RFL_LT_black";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {};
		vestItems[] = {{"ACE_IR_Strobe_Item",4},{"CUP_HandGrenade_M67",2,1},{"B_IR_Grenade",2,1},{"ACE_20Rnd_762x51_Mag_Tracer_Dim",6,20}};

		advMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		advMedVest[] = {};
	};

	class B_Soldier_GL_F {
		// Requires the following DLC:
		// Contact Platform
		displayName = "Grenadier";

		primaryWeapon[] = {"CUP_arifle_ACRC_EGLM_blk_556","muzzle_snds_M","","CUP_optic_Elcan_SpecterDR_RMR_black",{"CUP_30Rnd_556x45_Stanag",30},{"CUP_1Rnd_HEDP_M203",1},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "tmtm_u_combatUniform_mcamB";
		headgearClass = "tmtm_h_fastEars_mcamB";
		vestClass = "tmtm_v_GER_PVest_Gren_LT_black";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {};
		vestItems[] = {{"CUP_1Rnd_HEDP_M203",9,1},{"UGL_FlareCIR_F",2,1},{"CUP_30Rnd_556x45_Stanag",6,30}};

		advMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_tourniquet",4},{"ACE_morphine",4}};
		advMedVest[] = {};
	};

	class B_soldier_exp_F {
		// Requires the following DLC:
		// Contact Platform
		displayName = "EOD";

		primaryWeapon[] = {"CUP_arifle_ACRC_blk_556","muzzle_snds_M","CUP_acc_ANPEQ_15_Black","CUP_optic_Elcan_SpecterDR_RMR_black",{"CUP_30Rnd_556x45_Stanag",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "tmtm_u_combatUniform_mcamB";
		headgearClass = "tmtm_h_fastEars_mcamB";
		facewearClass = "G_Combat";
		vestClass = "tmtm_V_GER_PVest_RFL_LT_black";
		backpackClass = "CUP_B_USPack_Black";

		linkedItems[] = {"ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {};
		vestItems[] = {{"ACE_IR_Strobe_Item",4},{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_HandGrenade_M67",2,1},{"B_IR_Grenade",2,1}};
		backpackItems[] = {{"ACE_Clacker",1},{"ACE_wirecutter",1},{"ToolKit",1},{"MineDetector",1},{"ACE_DefusalKit",1},{"DemoCharge_Remote_Mag",6,1}};

		advMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		advMedVest[] = {};
		advMedBackpack[] = {};
	};



};