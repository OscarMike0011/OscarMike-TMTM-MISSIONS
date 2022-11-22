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
	class B_Soldier_F
	{
displayName = "B_Soldier_F";

primaryWeapon[] = {"CUP_arifle_M4A1_black","","CUP_acc_ANPEQ_2_grey","CUP_optic_ACOG_PIP",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {"CUP_launch_M72A6_Loaded","","","",{"CUP_M72A6_M",1},{},""};
handgunWeapon[] = {};

uniformClass = "CUP_U_B_USArmy_ACU_Gloves_UCP";
headgearClass = "CUP_H_USArmy_HelmetACH_UCP";
vestClass = "CUP_V_B_IOTV_UCP_Rifleman_USArmy";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_GPNVG_black"};

uniformItems[] = {};
vestItems[] = {{"ACE_EntrenchingTool",1},{"CUP_30Rnd_556x45_Stanag",5,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1}};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_morphine",5}};
basicMedVest[] = {{"ACE_fieldDressing",20}};	
	};	
	class B_Pilot_F
	{
//Requires the following DLC: Contact
displayName = "B_Pilot_F";

primaryWeapon[] = {"CUP_arifle_M4A1_black","","CUP_acc_ANPEQ_15_Black","",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};

uniformClass = "CUP_U_B_USArmy_ACU_Gloves_UCP";
headgearClass = "CUP_H_CZ_Helmet05";
vestClass = "CUP_V_B_IOTV_UCP_Empty_USArmy";
backpackClass = "ACE_NonSteerableParachute";

linkedItems[] = {"ItemMap","","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_GPNVG_black"};

uniformItems[] = {};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",2,30}};
backpackItems[] = {};

basicMedUniform[] = {};
basicMedVest[] = {{"ACE_tourniquet",4},{"ACE_fieldDressing",20},{"ACE_morphine",5},{"ACE_epinephrine",5}};
basicMedBackpack[] = {};
	};	
	class B_medic_F
	{
displayName = "B_medic_F";

primaryWeapon[] = {"CUP_arifle_M4A1_black","","CUP_acc_ANPEQ_15_Black","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_UCP";
headgearClass = "CUP_H_USArmy_MICH_UCP";
vestClass = "CUP_V_B_IOTV_UCP_Medic_USArmy";
backpackClass = "CUP_B_US_Assault_UCP";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_GPNVG_black"};

uniformItems[] = {};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag_Tracer_Green",5,30},{"CUP_HandGrenade_M67",1,1},{"SmokeShell",4,1},{"CUP_15Rnd_9x19_M9",1,15}};
backpackItems[] = {{"ACE_EntrenchingTool",1}};

basicMedUniform[] = {};
basicMedVest[] = {{"ACE_morphine",10},{"ACE_epinephrine",10}};
basicMedBackpack[] = {{"ACE_bloodIV",10},{"ACE_fieldDressing",40},{"ACE_personalAidKit",1},{"ACE_splint",10},{"ACE_tourniquet",4}};
	};	
	class B_Soldier_SL_F
	{
		//Requires the following DLC: Contact
displayName = "B_Soldier_SL_F";

primaryWeapon[] = {"CUP_arifle_M4A1_black","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG2_PIP",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};
binocular = "Rangefinder";

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_UCP";
headgearClass = "CUP_H_USArmy_HelmetACH_ESS_Headset_UCP";
vestClass = "CUP_V_B_IOTV_UCP_SL_USArmy";
backpackClass = "FRXA_tf_rt1523g_big_UCP";

linkedItems[] = {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_GPNVG_black"};

uniformItems[] = {};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_15Rnd_9x19_M9",1,15},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1},{"SmokeShellBlue",2,1},{"SmokeShellGreen",2,1}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",20}};
basicMedVest[] = {{"ACE_morphine",5},{"ACE_epinephrine",5}};
basicMedBackpack[] = {};

	};	
	class B_soldier_AR_F
	{
		//Requires the following DLC: Contact
displayName = "B_soldier_AR_F";

primaryWeapon[] = {"CUP_lmg_m249_pip2","","","CUP_optic_ElcanM145_PIP",{"CUP_100Rnd_TE4_Green_Tracer_556x45_M249",100},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};

uniformClass = "CUP_U_B_USArmy_ACU_Gloves_UCP";
headgearClass = "CUP_H_USArmy_HelmetACH_UCP";
vestClass = "CUP_V_B_IOTV_UCP_SAW_USArmy";
backpackClass = "CUP_B_US_Assault_UCP";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_GPNVG_black"};

uniformItems[] = {};
vestItems[] = {{"CUP_HandGrenade_M67",1,1},{"SmokeShell",2,1}};
backpackItems[] = {{"ACE_EntrenchingTool",1},{"CUP_100Rnd_TE4_Green_Tracer_556x45_M249",2,100}};

basicMedUniform[] = {};
basicMedVest[] = {{"ACE_fieldDressing",20},{"ACE_epinephrine",5},{"ACE_morphine",5}};
basicMedBackpack[] = {};

	};	
	class B_soldier_AAR_F
	{
	//Requires the following DLC: Contact
displayName = "B_soldier_AAR_F";

primaryWeapon[] = {"CUP_arifle_M4A1_black","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG_TA01NSN_RMR_Black_PIP",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_UCP";
headgearClass = "CUP_H_USArmy_HelmetACH_GCOVERED_UCP";
vestClass = "CUP_V_B_IOTV_UCP_Empty_USArmy";
backpackClass = "CUP_B_US_Assault_UCP";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_GPNVG_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_HandGrenade_M67",1,1}};
backpackItems[] = {{"CUP_100Rnd_TE4_Green_Tracer_556x45_M249",4,100}};

basicMedUniform[] = {{"ACE_fieldDressing",20},{"ACE_epinephrine",5},{"ACE_morphine",5}};
basicMedVest[] = {};
basicMedBackpack[] = {};
	
	};	
	class B_Soldier_TL_F
	{
	//Requires the following DLC: Contact
displayName = "B_Soldier_TL_F";

primaryWeapon[] = {"CUP_arifle_M4A1_BUIS_GL","","CUP_acc_ANPEQ_15_Black","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag",30},{"1Rnd_HE_Grenade_shell",1},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};
binocular = "Binocular";

uniformClass = "CUP_U_B_USArmy_ACU_Gloves_UCP";
headgearClass = "CUP_H_USArmy_HelmetACH_UCP";
vestClass = "CUP_V_B_IOTV_UCP_Grenadier_USArmy";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_GPNVG_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_1Rnd_HE_M203",10,1},{"CUP_1Rnd_SmokeRed_M203",2,1},{"CUP_1Rnd_Smoke_M203",2,1},{"CUP_1Rnd_SmokeGreen_M203",2,1},{"CUP_1Rnd_SmokeYellow_M203",2,1},{"CUP_30Rnd_556x45_Stanag",6,30}};

basicMedUniform[] = {{"ACE_fieldDressing",20},{"ACE_epinephrine",5},{"ACE_morphine",5}};
basicMedVest[] = {};
	
	};	
	class B_soldier_AT_F
	{
	//Requires the following DLC: Contact
displayName = "B_soldier_AT_F";

primaryWeapon[] = {"CUP_arifle_M4A1_black","","CUP_acc_ANPEQ_15_Black","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {"CUP_launch_MAAWS","","","CUP_optic_MAAWS_Scope",{"CUP_MAAWS_HEAT_M",1},{},""};
handgunWeapon[] = {};

uniformClass = "CUP_U_B_USArmy_ACU_Gloves_UCP";
headgearClass = "CUP_H_USArmy_HelmetACH_UCP";
vestClass = "CUP_V_B_IOTV_UCP_Rifleman_Deltoid_USArmy";
backpackClass = "CUP_B_US_Assault_UCP";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_GPNVG_black"};

uniformItems[] = {};
vestItems[] = {{"ACE_EntrenchingTool",1},{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",6,30}};
backpackItems[] = {{"CUP_MAAWS_HEDP_M",2,1}};

basicMedUniform[] = {{"ACE_fieldDressing",20},{"ACE_morphine",5},{"ACE_epinephrine",5}};
basicMedVest[] = {};
basicMedBackpack[] = {};
	
	};	
};