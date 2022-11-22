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
	
	class B_W_Officer_F {
		// Requires the following DLC:
		// Western Sahara
		// Contact Platform
		displayName = "Commander@Godfather";

		primaryWeapon[] = {"arifle_MXC_khk_F","","acc_pointer_IR_lush_lxWS","optic_Aco",{"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"hgun_Pistol_heavy_01_F","","","",{"11Rnd_45ACP_Mag",15},{},""};
		binocular = "Rangefinder";

		uniformClass = "U_B_CombatUniform_mcam_wdl_f";
		headgearClass = "H_HelmetSpecB_wdl";
		facewearClass = "tmtm_f_balaclava_ratnik_headphones";
		vestClass = "V_PlateCarrierSpec_wdl";
		backpackClass = "FRXA_tf_rt1523g_Ranger_Green";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {{"ACE_IR_Strobe_Item",4}};
		vestItems[] = {{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1},{"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",6,30}};
		backpackItems[] = {};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_tourniquet",4},{"ACE_epinephrine",5},{"ACE_morphine",5}};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
	};

	class B_W_Medic_F {
		// Requires the following DLC:
		// Western Sahara
		// Contact Platform
		displayName = "Medic@Godfather";

		primaryWeapon[] = {"arifle_MX_Black_Pointer_F","","acc_pointer_IR_lush_lxWS","optic_ACO_grn",{"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"hgun_P07_khk_F","","","",{"16Rnd_9x21_Mag",17},{},""};

		uniformClass = "U_B_CombatUniform_tshirt_mcam_wdL_f";
		headgearClass = "H_HelmetSpecB_wdl";
		facewearClass = "G_Tactical_Clear";
		vestClass = "V_PlateCarrierSpec_wdl";
		backpackClass = "B_AssaultPack_wdl_BWMedic_F";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {{"30Rnd_9x21_Mag",2,30}};
		vestItems[] = {{"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",6,30},{"SmokeShell",4,1},{"CUP_HandGrenade_M67",1,1}};
		backpackItems[] = {{"ACE_IR_Strobe_Item",4}};

		basicMedUniform[] = {};
		basicMedVest[] = {};
		basicMedBackpack[] = {{"ACE_fieldDressing",40},{"ACE_bloodIV_500",10},{"ACE_epinephrine",20},{"ACE_morphine",20},{"ACE_personalAidKit",1},{"ACE_tourniquet",6}};
	};
	class B_W_Soldier_F {
		// Requires the following DLC:
		// Western Sahara
		// Contact Platform
		displayName = "Rifleman@Alpha";

		primaryWeapon[] = {"arifle_MX_Black_ACO_Pointer_F","","acc_pointer_IR_lush_lxWS","optic_Aco",{"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"hgun_P07_khk_F","","","",{"16Rnd_9x21_Mag",17},{},""};

		uniformClass = "U_B_CombatUniform_mcam_wdl_f";
		headgearClass = "H_HelmetSpecB_wdl";
		facewearClass = "tmtm_f_balaclava_ratnik_headphones";
		vestClass = "V_PlateCarrierSpec_wdl";

		linkedItems[] = {"ItemMap","","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {{"ACE_IR_Strobe_Item",4}};
		vestItems[] = {{"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1}};

		basicMedUniform[] = {{"ACE_fieldDressing",20},{"ACE_epinephrine",5},{"ACE_tourniquet",4},{"ACE_morphine",5}};
		basicMedVest[] = {};
	};

	class B_W_soldier_M_F {
		// Requires the following DLC:
		// Western Sahara
		// Contact Platform
		displayName = "Marksman@Alpha";

		primaryWeapon[] = {"CUP_srifle_M14_DMR","","acc_pointer_IR_lush_lxWS","optic_Arco_lush_F",{"CUP_20Rnd_TE1_Green_Tracer_762x51_DMR",20},{},"bipod_01_F_blk"};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"hgun_P07_khk_F","","","",{"16Rnd_9x21_Mag",17},{},""};
		binocular = "Rangefinder";

		uniformClass = "U_B_CombatUniform_mcam_wdl_f";
		headgearClass = "H_HelmetSpecB_wdl";
		facewearClass = "G_Tactical_Black";
		vestClass = "V_PlateCarrier1_wdl";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {{"ACE_IR_Strobe_Item",4}};
		vestItems[] = {{"CUP_20Rnd_TE1_Green_Tracer_762x51_DMR",8,20},{"CUP_HandGrenade_M67",2,1}};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5}};
		basicMedVest[] = {};
	};

	class B_W_Soldier_LAT_F {
		// Requires the following DLC:
		// Western Sahara
		// Contact Platform
		displayName = "Rifleman AT@Alpha";

		primaryWeapon[] = {"arifle_MX_Black_ACO_Pointer_F","","acc_pointer_IR_lush_lxWS","optic_Aco",{"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",30},{},""};
		secondaryWeapon[] = {"launch_MRAWS_green_rail_F","","","",{"MRAWS_HEAT_F",1},{},""};
		handgunWeapon[] = {"hgun_P07_khk_F","","","",{"16Rnd_9x21_Mag",17},{},""};

		uniformClass = "U_B_CombatUniform_mcam_wdl_f";
		headgearClass = "H_HelmetSpecB";
		vestClass = "V_PlateCarrier2_wdl";
		backpackClass = "B_AssaultPack_wdl_BWLAT_F";

		linkedItems[] = {"ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {{"ACE_IR_Strobe_Item",4}};
		vestItems[] = {{"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1},{"16Rnd_9x21_Mag",1,17}};
		backpackItems[] = {{"MRAWS_HEAT_F",1,1}};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_tourniquet",4},{"ACE_morphine",5}};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
	};

	class B_W_Soldier_GL_F {
		// Requires the following DLC:
		// Western Sahara
		// Contact Platform
		displayName = "Grenadier@Alpha";

		primaryWeapon[] = {"arifle_MX_GL_Black_ACO_F","","acc_pointer_IR_lush_lxWS","optic_Aco",{"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",30},{"1Rnd_HE_Grenade_shell",1},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"hgun_P07_khk_F","","","",{"16Rnd_9x21_Mag",17},{},""};

		uniformClass = "U_B_CombatUniform_mcam_wdl_f";
		headgearClass = "H_HelmetSpecB_wdl";
		facewearClass = "tmtm_f_balaclava_ratnik_headphones";
		vestClass = "V_PlateCarrierGL_wdl";

		linkedItems[] = {"ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {{"ACE_IR_Strobe_Item",4}};
		vestItems[] = {{"ACE_HuntIR_monitor",1},{"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",6,30},{"ACE_HuntIR_M203",2,1},{"UGL_FlareCIR_F",2,1},{"CUP_1Rnd_HEDP_M203",6,1},{"16Rnd_9x21_Mag",2,17},{"1Rnd_SmokeBlue_Grenade_shell",1,1},{"1Rnd_Smoke_Grenade_shell",1,1}};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
	};
	class B_W_Soldier_AR_F {
		// Requires the following DLC:
		// Western Sahara
		// Contact Platform
		displayName = "Autorifleman@Delta";

		primaryWeapon[] = {"arifle_MX_SW_Black_Pointer_F","","acc_pointer_IR_lush_lxWS","optic_ACO_grn",{"ACE_100Rnd_65x39_caseless_mag_Tracer_Dim",100},{},"bipod_01_F_blk"};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"hgun_P07_khk_F","","","",{"16Rnd_9x21_Mag",17},{},""};

		uniformClass = "U_B_CombatUniform_tshirt_mcam_wdL_f";
		headgearClass = "H_HelmetSpecB_wdl";
		facewearClass = "tmtm_f_balaclava_ratnik_headphones";
		vestClass = "V_PlateCarrierSpec_wdl";

		linkedItems[] = {"ItemMap","","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {{"ACE_IR_Strobe_Item",4}};
		vestItems[] = {{"ACE_100Rnd_65x39_caseless_mag_Tracer_Dim",4,100}};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
	};
	class B_W_Crew_F {
		// Requires the following DLC:
		// Contact Platform
		displayName = "B_W_Crew_F";

		primaryWeapon[] = {"arifle_MXC_Black_F","","","",{"30Rnd_65x39_caseless_black_mag",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"hgun_P07_khk_F","","","",{"16Rnd_9x21_Mag",17},{},""};

		uniformClass = "U_B_CombatUniform_vest_mcam_wdl_f";
		headgearClass = "H_HelmetCrew_B";
		facewearClass = "tmtm_f_balaclava_ratnik_headphones_winter";
		vestClass = "V_BandollierB_rgr";
		backpackClass = "B_Carryall_green_F";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"};

		uniformItems[] = {{"FirstAidKit",1},{"30Rnd_65x39_caseless_black_mag",2,30}};
		vestItems[] = {{"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",3,30}};
		backpackItems[] = {{"ToolKit",1}};

		basicMedUniform[] = {};
		basicMedVest[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedBackpack[] = {};
	};



};