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
	class CUP_B_US_Soldier_SL_OEFCP
	{
		displayName = "CUP_B_US_Soldier_SL_OEFCP";

primaryWeapon[] = {"CUP_arifle_M4A3_ACOG_Laser","","CUP_acc_ANPEQ_2_Black_Top","CUP_optic_ACOG2_PIP",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_ESS_Headset_OEFCP";
vestClass = "CUP_V_B_IOTV_OEFCP_SL_USArmy";
backpackClass = "FRXA_tf_rt1523g_M81";

linkedItems[] = {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_HandGrenade_M67",1,1},{"B_IR_Grenade",0,0},{"SmokeShellGreen",2,1},{"CUP_15Rnd_9x19_M9",2,15},{"SmokeShell",2,1}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_epinephrine",5}};
basicMedVest[] = {};
basicMedBackpack[] = {};
	};
	class CUP_B_US_Soldier_LAT_OEFCP
	{
displayName = "CUP_B_US_Soldier_LAT_OEFCP";

primaryWeapon[] = {"CUP_arifle_M4A3_CCO_Laser","","CUP_acc_ANPEQ_2_Black_Top","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};
binocular = "CUP_LRTV";

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_GCOVERED_Headset_OEFCP";
vestClass = "CUP_V_B_IOTV_OEFCP_Rifleman_Deltoid_USArmy";
backpackClass = "FRXA_tf_rt1523g_M81";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_fieldDressing",15}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	};
	class CUP_B_US_Soldier_AT_OEFCP
	{
displayName = "CUP_B_US_Soldier_AT_OEFCP";

primaryWeapon[] = {"CUP_arifle_M4A3_CCO_Laser","","CUP_acc_ANPEQ_2_Black_Top","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {"CUP_launch_MAAWS_Scope","","","",{"CUP_MAAWS_HEAT_M",1},{},""};
handgunWeapon[] = {};

uniformClass = "CUP_U_B_USArmy_ACU_Gloves_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_GCOVERED_Headset_OEFCP";
vestClass = "CUP_V_B_IOTV_OEFCP_Rifleman_Deltoid_USArmy";
backpackClass = "CUP_B_USPack_AT_MAAWS_DP_OEFCP";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",6,30},{"SmokeShell",2,1},{"CUP_HandGrenade_M67",1,1}};
backpackItems[] = {{"CUP_MAAWS_HEDP_M",1,1}};

basicMedUniform[] = {{"ACE_tourniquet",4},{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	};
	class CUP_B_US_Soldier_TL_OEFCP
	{
displayName = "CUP_B_US_Soldier_TL_OEFCP";

primaryWeapon[] = {"CUP_arifle_M4A1_M203_ACOG_Laser","","CUP_acc_ANPEQ_2","CUP_optic_ACOG2_PIP",{"CUP_30Rnd_556x45_Stanag",30},{"CUP_1Rnd_HEDP_M203",1},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_USArmy_ACU_Gloves_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_GCOVERED_Headset_OEFCP";
vestClass = "CUP_V_B_IOTV_OEFCP_TL_USArmy";
backpackClass = "CUP_B_USPack_TL_OEFCP";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_HandGrenade_M67",1,1},{"CUP_1Rnd_HEDP_M203",5,1},{"SmokeShellGreen",2,1}};
backpackItems[] = {{"CUP_1Rnd_StarFlare_Red_M203",5,1},{"CUP_1Rnd_Smoke_M203",2,1},{"CUP_1Rnd_SmokeRed_M203",2,1},{"CUP_1Rnd_SmokeGreen_M203",2,1},{"CUP_1Rnd_HEDP_M203",5,1},{"CUP_1Rnd_StarFlare_White_M203",5,1}};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	};
	class CUP_B_US_Soldier_ACOG_OEFCP
	{
displayName = "CUP_B_US_Soldier_ACOG_OEFCP";

primaryWeapon[] = {"CUP_arifle_M4A3_ACOG_Laser","","CUP_acc_ANPEQ_2_Black_Top","CUP_optic_ACOG2_PIP",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_OEFCP";
vestClass = "CUP_V_B_IOTV_OEFCP_Rifleman_USArmy";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1}};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};

	};
	class
	{
displayName = "CUP_B_US_Medic_OEFCP";

primaryWeapon[] = {"CUP_arifle_M4A1_CCO_Laser","","CUP_acc_ANPEQ_2_Black_Top","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_ESS_OEFCP";
vestClass = "CUP_V_B_IOTV_OEFCP_Medic_USArmy";
backpackClass = "CUP_B_USPack_Medic_OEFCP";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_bloodIV",10},{"ACE_fieldDressing",20},{"ACE_morphine",10},{"ACE_epinephrine",10}};

	};
	class CUP_B_US_Medic_OEFCP
	{
displayName = "CUP_B_US_Medic_OEFCP";

primaryWeapon[] = {"CUP_arifle_M4A1_CCO_Laser","","CUP_acc_ANPEQ_2_Black_Top","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_ESS_OEFCP";
vestClass = "CUP_V_B_IOTV_OEFCP_Medic_USArmy";
backpackClass = "CUP_B_USPack_Medic_OEFCP";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_bloodIV",10},{"ACE_fieldDressing",20},{"ACE_morphine",10},{"ACE_epinephrine",10}};

	};
	class CUP_B_US_Soldier_AR_OEFCP
	{
displayName = "CUP_B_US_Soldier_AR_OEFCP";

primaryWeapon[] = {"CUP_lmg_M249_ElcanM145","","","CUP_optic_ElcanM145_PIP",{"CUP_200Rnd_TE4_Red_Tracer_556x45_M249",200},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Rolled_Gloves_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_ESS_Headset_OEFCP";
vestClass = "CUP_V_B_IOTV_OEFCP_SAW_USArmy";
backpackClass = "CUP_B_USPack_AmmoSAW_OEFCP";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch",2,200}};
backpackItems[] = {{"CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch",2,200}};

basicMedUniform[] = {{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_fieldDressing",15},{"ACE_epinephrine",5}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	};
	class CUP_B_US_Soldier_AAR_OEFCP
	{
		displayName = "CUP_B_US_Soldier_AAR_OEFCP";

primaryWeapon[] = {"CUP_arifle_M4A3_CCO_Laser","","CUP_acc_ANPEQ_2_Black_Top","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};

uniformClass = "CUP_U_B_USArmy_ACU_Gloves_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_OEFCP";
vestClass = "CUP_V_B_IOTV_OEFCP_Rifleman_USArmy";
backpackClass = "CUP_B_USPack_AmmoSAW_OEFCP";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_HandGrenade_M67",1,1},{"SmokeShell",2,1}};
backpackItems[] = {{"CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch",2,200}};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_fieldDressing",15}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	};
	class CUP_B_US_Officer_OEFCP
	{
displayName = "CUP_B_US_Officer_OEFCP";

primaryWeapon[] = {"CUP_arifle_M4A1_black","","","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_USArmy_ACU_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_GCOVERED_OCP";
vestClass = "CUP_V_B_IOTV_OCP_Empty_USArmy";
backpackClass = "FRXA_tf_rt1523g_M81";

linkedItems[] = {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",5,30},{"SmokeShell",2,1},{"CUP_15Rnd_9x19_M9",2,15}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_tourniquet",4},{"ACE_morphine",5}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	};
	class CUP_B_US_Soldier_UAV_OEFCP
	{
displayName = "CUP_B_US_Soldier_UAV_OEFCP";

primaryWeapon[] = {"CUP_arifle_M4A1_CCO_Laser","","CUP_acc_ANPEQ_2_Black_Top","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};
binocular = "CUP_LRTV";

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_GCOVERED_Headset_OEFCP";
vestClass = "CUP_V_B_IOTV_OEFCP_Rifleman_USArmy";
backpackClass = "FRXA_tf_rt1523g_M81";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",5,30}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	};
	class CUP_B_US_Pilot
	{
displayName = "CUP_B_US_Pilot";

primaryWeapon[] = {"CUP_arifle_M4A1","","","",{"CUP_30Rnd_556x45_Stanag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_Colt1911","","","",{"CUP_7Rnd_45ACP_1911",7},{},""};

uniformClass = "CUP_U_B_USArmy_PilotOverall";
headgearClass = "H_PilotHelmetFighter_B";
vestClass = "CUP_V_B_USArmy_PilotVest";
backpackClass = "TFAR_rt1523g_green";

linkedItems[] = {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",4,30},{"CUP_7Rnd_45ACP_1911",2,7}};
backpackItems[] = {{"ToolKit",1}};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_fieldDressing",15}};
basicMedVest[] = {};
basicMedBackpack[] = {};
	};
	class CUP_B_US_Sniper_M107_OEFCP
	{
//Requires the following DLC: Mark
displayName = "CUP_B_US_Sniper_M107_OEFCP";

primaryWeapon[] = {"CUP_srifle_M107_LeupoldVX3","","","optic_tws",{"CUP_10Rnd_127x99_M107",10},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "U_B_FullGhillie_lsh";
vestClass = "V_HarnessO_gry";
backpackClass = "FRXA_tf_rt1523g_M81";

linkedItems[] = {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_GPNVG_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_15Rnd_9x19_M9",2,15},{"CUP_10Rnd_127x99_M107",8,10}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_fieldDressing",15}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	};
	class CUP_B_US_Spotter_OEFCP
	{
		//Requires the following DLC: Mark
displayName = "CUP_B_US_Spotter_OEFCP";

primaryWeapon[] = {"CUP_arifle_M4A1_M203_ANPAS13c1_Laser","","CUP_acc_ANPEQ_2","CUP_optic_AN_PAS_13c1",{"CUP_30Rnd_556x45_Stanag",30},{"CUP_1Rnd_HEDP_M203",1},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};
binocular = "CUP_Vector21Nite";

uniformClass = "U_B_FullGhillie_lsh";
vestClass = "V_HarnessO_gry";
backpackClass = "FRXA_tf_rt1523g_M81";

linkedItems[] = {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_GPNVG_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1}};
backpackItems[] = {{"CUP_1Rnd_HEDP_M203",5,1},{"1Rnd_SmokeGreen_Grenade_shell",2,1},{"1Rnd_SmokeRed_Grenade_shell",2,1}};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_bloodIV_250",4}};
	};
	
};
