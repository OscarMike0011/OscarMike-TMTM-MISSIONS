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
	
	class rhsusf_army_ocp_officer
	{
	displayName = "rhsusf_army_ocp_officer";

primaryWeapon[] = {"rhs_m4a1_acog2","","rhsusf_acc_anpeq15_top","rhsusf_acc_ACOG2",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""};
binocular = "rhsusf_bino_m24";

uniformClass = "rhs_uniform_acu_oefcp";
headgearClass = "H_Beret_02";
vestClass = "rhsusf_iotv_ocp_Squadleader";
backpackClass = "TFAR_rt1523g_big_rhs";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhsusf_mag_15Rnd_9x19_FMJ",3,15},{"rhs_mag_m18_red",1,1},{"rhs_mag_m18_purple",1,1},{"rhs_mag_m18_yellow",1,1},{"rhs_mag_m67",1,1}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",10},{"ACE_splint",2},{"ACE_tourniquet",2}};
basicMedVest[] = {{"ACE_fieldDressing",10}};
basicMedBackpack[] = {{"ACE_morphine",4}};
	
	};
	class rhsusf_army_ocp_medic
	{
	displayName = "rhsusf_army_ocp_medic";

primaryWeapon[] = {"rhs_m4_compm4","","","rhsusf_acc_compm4",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""};

uniformClass = "rhs_uniform_acu_oefcp";
headgearClass = "rhsusf_ach_helmet_ocp";
vestClass = "rhsusf_iotv_ocp_Medic";
backpackClass = "rhsusf_assault_eagleaiii_ocp_medic";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"rhs_mag_m67",2,1},{"SmokeShell",2,1}};
vestItems[] = {{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhsusf_mag_15Rnd_9x19_FMJ",2,15},{"rhs_mag_m18_red",1,1}};
backpackItems[] = {{"ACE_EntrenchingTool",1}};

basicMedUniform[] = {};
basicMedVest[] = {{"ACE_bloodIV",2}};
basicMedBackpack[] = {{"ACE_splint",8},{"ACE_personalAidKit",1},{"ACE_surgicalKit",1},{"ACE_tourniquet",6},{"ACE_epinephrine",10},{"ACE_morphine",10},{"ACE_bloodIV",10},{"ACE_fieldDressing",40}};
	};
	class rhsusf_army_ocp_crewman
	{
	displayName = "rhsusf_army_ocp_crewman";

primaryWeapon[] = {"rhs_weap_m4_carryhandle","","","",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""};
binocular = "rhsusf_bino_m24_ARD";

uniformClass = "rhs_uniform_acu_oefcp";
headgearClass = "rhsusf_cvc_helmet";
vestClass = "rhsusf_iotv_ocp";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"rhsusf_mag_15Rnd_9x19_FMJ",1,15},{"rhs_mag_an_m8hc",1,1}};
vestItems[] = {{"rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30},{"rhsusf_mag_15Rnd_9x19_FMJ",1,15}};

basicMedUniform[] = {{"ACE_fieldDressing",10},{"ACE_epinephrine",2},{"ACE_morphine",2}};
basicMedVest[] = {};

	};
	class rhsusf_army_ocp_squadleader
	{
	displayName = "rhsusf_army_ocp_squadleader";

primaryWeapon[] = {"rhs_m4a1_acog3","","rhsusf_acc_anpeq15_top","rhsusf_acc_ACOG3",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};
binocular = "rhsusf_bino_m24_ARD";

uniformClass = "rhs_uniform_acu_oefcp";
headgearClass = "rhsusf_ach_helmet_headset_ocp";
vestClass = "rhsusf_iotv_ocp_Squadleader";
backpackClass = "TFAR_rt1523g_big_rhs";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {};
vestItems[] = {{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhs_mag_m18_red",1,1},{"rhs_mag_m18_purple",1,1},{"rhs_mag_m18_yellow",1,1},{"rhs_mag_m67",1,1},{"Chemlight_red",2,1}};
backpackItems[] = {{"ACE_EntrenchingTool",1},{"rhs_mag_m67",2,1},{"SmokeShell",4,1}};

basicMedUniform[] = {{"ACE_tourniquet",4},{"ACE_splint",2}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_fieldDressing",10},{"ACE_bloodIV",1},{"ACE_bloodIV_500",1}};
	
	};
	class rhsusf_army_ocp_teamleader
	{
	displayName = "rhsusf_army_ocp_teamleader";

primaryWeapon[] = {"rhs_weap_m4a1_m203","","","rhsusf_acc_ACOG2",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{"rhs_mag_M441_HE",1},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};
binocular = "rhsusf_bino_m24";

uniformClass = "rhs_uniform_acu_oefcp";
headgearClass = "rhsusf_ach_helmet_ESS_ocp";
vestClass = "rhsusf_iotv_ocp_Teamleader";
backpackClass = "rhsusf_assault_eagleaiii_ocp";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1},{"rhs_mag_m67",2,1}};
vestItems[] = {{"rhs_mag_m18_purple",1,1},{"rhs_mag_m18_yellow",1,1},{"rhs_mag_m67",1,1}};
backpackItems[] = {{"rhs_mag_m67",2,1},{"SmokeShell",4,1},{"rhs_mag_M441_HE",10,1},{"rhs_mag_m713_Red",2,1},{"rhs_mag_m714_White",2,1},{"rhs_mag_m715_Green",2,1},{"rhs_mag_m716_yellow",2,1}};

basicMedUniform[] = {};
basicMedVest[] = {{"ACE_splint",2},{"ACE_tourniquet",2}};
basicMedBackpack[] = {{"ACE_fieldDressing",10},{"ACE_bloodIV",1},{"ACE_bloodIV_500",1},{"ACE_morphine",2},{"ACE_epinephrine",2}};	
	};
	class rhsusf_army_ocp_rifleman_m4
	{
	displayName = "rhsusf_army_ocp_rifleman_m4";

primaryWeapon[] = {"rhs_m4_compm4","","","rhsusf_acc_compm4",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""};
secondaryWeapon[] = {"rhs_weap_m72a7","","","",{},{},""};
handgunWeapon[] = {};

uniformClass = "rhs_uniform_acu_oefcp";
headgearClass = "rhsusf_ach_helmet_ocp";
vestClass = "rhsusf_iotv_ocp_Rifleman";
backpackClass = "rhsusf_assault_eagleaiii_ocp";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhs_mag_m67",2,1}};
backpackItems[] = {{"rhs_mag_m67",2,1},{"SmokeShell",4,1}};

basicMedUniform[] = {{"ACE_splint",2},{"ACE_tourniquet",2}};
basicMedVest[] = {{"ACE_bloodIV",1},{"ACE_fieldDressing",10},{"ACE_epinephrine",2},{"ACE_morphine",2}};
basicMedBackpack[] = {{"ACE_fieldDressing",10},{"ACE_bloodIV",1},{"ACE_bloodIV_500",1},{"ACE_epinephrine",2},{"ACE_morphine",2}};	
	};
	class rhsusf_army_ocp_javelin
	{
	displayName = "rhsusf_army_ocp_javelin";

primaryWeapon[] = {"rhs_m4_compm4","","","rhsusf_acc_compm4",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""};
secondaryWeapon[] = {"rhs_weap_fgm148","","","",{"rhs_fgm148_magazine_AT",1},{},""};
handgunWeapon[] = {};

uniformClass = "rhs_uniform_acu_oefcp";
headgearClass = "rhsusf_ach_helmet_ocp";
vestClass = "rhsusf_iotv_ocp_Rifleman";
backpackClass = "rhsusf_assault_eagleaiii_ocp";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhs_mag_m67",1,1}};
backpackItems[] = {{"rhs_mag_m67",2,1},{"SmokeShell",4,1}};

basicMedUniform[] = {{"ACE_epinephrine",2},{"ACE_fieldDressing",10},{"ACE_morphine",2}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_fieldDressing",10},{"ACE_epinephrine",2},{"ACE_morphine",2}};
	};
	class rhsusf_army_ocp_autorifleman
	{
	displayName = "rhsusf_army_ocp_autorifleman";

primaryWeapon[] = {"rhs_weap_m249_light_L_vfg2","","rhsusf_acc_anpeq15side","rhsusf_acc_ELCAN_ard",{"rhsusf_100Rnd_556x45_soft_pouch",100},{},"rhsusf_acc_grip4_bipod"};
secondaryWeapon[] = {};
handgunWeapon[] = {};

uniformClass = "rhs_uniform_acu_oefcp";
headgearClass = "rhsusf_ach_helmet_ocp";
vestClass = "rhsusf_iotv_ocp_SAW";
backpackClass = "rhsusf_assault_eagleaiii_ocp_ar";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1},{"rhs_mag_m67",1,1}};
vestItems[] = {{"rhsusf_100Rnd_556x45_soft_pouch",2,100},{"rhs_mag_m67",1,1},{"rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",1,200}};
backpackItems[] = {{"rhsusf_100Rnd_556x45_soft_pouch",4,100}};

basicMedUniform[] = {{"ACE_tourniquet",2},{"ACE_splint",2},{"ACE_epinephrine",2},{"ACE_morphine",2},{"ACE_fieldDressing",10}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_fieldDressing",10}};
	};	
};