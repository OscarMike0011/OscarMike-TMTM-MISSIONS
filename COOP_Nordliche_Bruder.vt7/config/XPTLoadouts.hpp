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
	class CUP_B_GER_Fleck_Operator
	{
	displayName = "CUP_B_GER_Fleck_Operator";

primaryWeapon[] = {"CUP_arifle_HK416_CQB_Wood_G33_snds_las","CUP_muzzle_snds_M16_camo","CUP_acc_LLM01_od_F","CUP_optic_G33_HWS_OD",{"CUP_30Rnd_556x45_PMAG_QP_Olive",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Fleck_Crye";
headgearClass = "CUP_H_OpsCore_Covered_Fleck_SF";
facewearClass = "CUP_G_ESS_BLK_Facewrap_Black";
vestClass = "CUP_V_B_GER_Armatus_BB_Fleck";
backpackClass = "FRXA_tf_rt1523g_big_MARPAT_Woodlaand";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_PMAG_QP_Olive",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",10},{"ACE_tourniquet",4},{"ACE_morphine",3},{"ACE_epinephrine",3}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_bloodIV_500",1},{"CUP_17Rnd_9x19_glock17",3,17}};
	};
class CUP_B_GER_Fleck_Operator_Medic
{
	displayName = "CUP_B_GER_Fleck_Operator_Medic";

primaryWeapon[] = {"CUP_arifle_HK416_CQB_Wood_G33_snds_las","CUP_muzzle_snds_M16_camo","","CUP_optic_G33_HWS_OD",{"CUP_30Rnd_556x45_PMAG_QP_Olive",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Fleck_Crye2";
headgearClass = "CUP_H_OpsCore_Tan_SF";
facewearClass = "CUP_G_ESS_KHK_Scarf_Face_Tan";
vestClass = "CUP_V_B_GER_Armatus_Fleck";
backpackClass = "CUP_B_GER_Backpack_Medic_Fleck";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {};
vestItems[] = {{"CUP_30Rnd_556x45_PMAG_QP_Olive",6,30},{"CUP_HandGrenade_M67",2,1},{"CUP_17Rnd_9x19_glock17",3,17}};
backpackItems[] = {{"ACE_EntrenchingTool",1}};

basicMedUniform[] = {{"ACE_fieldDressing",10},{"ACE_tourniquet",4},{"ACE_morphine",3},{"ACE_epinephrine",3}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_fieldDressing",20},{"ACE_bloodIV",10},{"ACE_personalAidKit",1},{"ACE_epinephrine",10}};
};
class CUP_B_GER_Fleck_Soldier_AAA
{
	displayName = "CUP_B_GER_Fleck_Soldier_AAA";

	primaryWeapon[] = {"CUP_arifle_G36K_KSK_hex_ZO_las","CUP_muzzle_snds_G36_wood","CUP_acc_LLM01_hex_L","CUP_optic_HensoldtZO_low_RDS_hex_PIP",{"CUP_30Rnd_556x45_G36",30},{},""};
	secondaryWeapon[] = {};
	handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
	binocular = "CUP_Vector21Nite";

	uniformClass = "CUP_U_B_GER_Flecktarn_2";
	headgearClass = "CUP_H_Ger_Cap_EP_Tan2";
	facewearClass = "CUP_G_PMC_Facewrap_Black_Glasses_Ember";
	vestClass = "CUP_V_B_GER_Armatus_Fleck";
	backpackClass = "FRXA_tf_rt1523g_big_MARPAT_Woodlaand"

	linkedItems[] = {"ItemMap","B_UavTerminal","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_PVS7"};

	uniformItems[] = {{"CUP_30Rnd_556x45_G36",4,30}};
	vestItems[] = {{"CUP_30Rnd_556x45_G36",3,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShellRed",1,1},{"CUP_17Rnd_9x19_glock17",3,17}};

basicMedUniform[] = {{"ACE_fieldDressing",10},{"ACE_tourniquet",4},{"ACE_morphine",3},{"ACE_epinephrine",3}};
basicMedVest[] = {};
};

class CUP_B_GER_Fleck_Soldier_GL
{
	displayName = "CUP_B_GER_Fleck_Soldier_GL";

primaryWeapon[] = {"CUP_arifle_AG36","CUP_muzzle_snds_G36_black","CUP_acc_ANPEQ_2_Black_Top","CUP_optic_G36DualOptics",{"CUP_30Rnd_556x45_G36",30},{"CUP_1Rnd_HEDP_M203",1},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_6";
headgearClass = "CUP_H_OpsCore_Covered_Fleck_SF";
facewearClass = "CUP_G_PMC_Facewrap_Black_Glasses_Dark";
vestClass = "CUP_V_B_GER_Carrier_Vest";
backpackClass = "CUP_B_GER_Backpack_GL_Fleck";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {};
vestItems[] = {{"CUP_30Rnd_556x45_G36",5,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShellRed",1,1},{"CUP_17Rnd_9x19_glock17",3,17}};
backpackItems[] = {{"ACE_EntrenchingTool",1},{"CUP_30Rnd_556x45_G36",4,30},{"CUP_FlareWhite_M203",4,1},{"CUP_1Rnd_SmokeRed_M203",4,1},{"CUP_1Rnd_HEDP_M203",9,1}};

basicMedUniform[] = {};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_fieldDressing",10},{"ACE_tourniquet",4},{"ACE_morphine",3},{"ACE_epinephrine",3}};

};
class CUP_B_GER_Fleck_Soldier_AAT
{
displayName = "CUP_B_GER_Fleck_Soldier_AAT";

primaryWeapon[] = {"CUP_arifle_G36K_KSK_hex_ZO_las","CUP_muzzle_snds_G36_hex","CUP_acc_LLM01_hex_L","CUP_optic_HensoldtZO_low_RDS_hex",{"CUP_30Rnd_556x45_G36",28},{},""};
secondaryWeapon[] = {"CUP_launch_M72A6_Loaded","","","",{"CUP_M72A6_M",1},{},""};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_2";
headgearClass = "CUP_H_OpsCore_Covered_Fleck";
facewearClass = "CUP_G_Oakleys_Drk";
vestClass = "CUP_V_B_GER_Carrier_Vest";
backpackClass = "CUP_B_GER_Backpack_ATAssist_Fleck";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"CUP_30Rnd_556x45_G36",4,30}};
vestItems[] = {{"CUP_30Rnd_556x45_G36",3,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShellRed",1,1},{"CUP_17Rnd_9x19_glock17",3,17}};
backpackItems[] = {{"ACE_EntrenchingTool",1},{{"CUP_launch_M72A6_Loaded","","","",{"CUP_M72A6_M",1},{},""},4}};

basicMedUniform[] = {};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_fieldDressing",10},{"ACE_tourniquet",4},{"ACE_morphine",3},{"ACE_epinephrine",3}};
};

}
class CUP_B_GER_BW_Fleck_Soldier_Marksman
{
	displayName = "CUP_B_GER_BW_Fleck_Soldier_Marksman";

primaryWeapon[] = {"CUP_arifle_HK417_20_Scope","CUP_muzzle_snds_SCAR_H","CUP_acc_ANPEQ_15_Black","CUP_optic_SB_11_4x20_PM_pip",{"CUP_20Rnd_762x51_HK417",20},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_2";
headgearClass = "CUP_H_OpsCore_Covered_Fleck";
facewearClass = "CUP_G_Oakleys_Embr";
vestClass = "CUP_V_B_GER_Carrier_Vest";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1},{"CUP_20Rnd_762x51_HK417",2,20},{"SmokeShellRed",1,1}};
vestItems[] = {{"CUP_20Rnd_762x51_HK417",5,20},{"CUP_HandGrenade_M67",2,1},{"CUP_17Rnd_9x19_glock17",3,17}};

basicMedUniform[] = {{"ACE_fieldDressing",10},{"ACE_tourniquet",4},{"ACE_morphine",3},{"ACE_epinephrine",3}};
basicMedVest[] = {};

};


class CUP_B_GER_Fleck_Soldier
{
displayName = "CUP_B_GER_Fleck_Soldier";

primaryWeapon[] = {"CUP_arifle_G36K_KSK_hex_ZO_las","CUP_muzzle_snds_G36_wood","CUP_acc_LLM01_hex_L","CUP_optic_HensoldtZO_low_RDS_hex_PIP",{"CUP_30Rnd_556x45_G36",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","CUP_muzzle_snds_M9","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_LRTV";

uniformClass = "CUP_U_B_GER_Flecktarn_3";
headgearClass = "CUP_H_OpsCore_Covered_Fleck";
facewearClass = "CUP_G_Oakleys_Drk";
vestClass = "CUP_V_B_GER_Carrier_Vest";
backpackClass = "FRXA_tf_rt1523g_big_MARPAT_Woodlaand";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_G36",8,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShellRed",1,1},{"CUP_17Rnd_9x19_glock17",3,17}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",10},{"ACE_tourniquet",4},{"ACE_morphine",3},{"ACE_epinephrine",3}};
basicMedVest[] = {};
basicMedBackpack[] = {};

};

class CUP_B_GER_Fleck_Soldier_Ammo
{
displayName = "CUP_B_GER_Fleck_Soldier_Ammo";

primaryWeapon[] = {"CUP_arifle_G36K_KSK_hex_ZO_las","CUP_muzzle_snds_G36_wood","CUP_acc_ANPEQ_15_OD_Top","CUP_optic_HensoldtZO_low_RDS_hex_PIP",{"CUP_30Rnd_556x45_G36",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_7";
headgearClass = "CUP_H_OpsCore_Covered_Fleck";
facewearClass = "CUP_G_PMC_Facewrap_Black_Glasses_Ember";
vestClass = "CUP_V_B_GER_Carrier_Vest";
backpackClass = "CUP_B_GER_Backpack_AmmoBearer_Fleck";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_G36",6,30},{"CUP_HandGrenade_M67",2,1},{"CUP_17Rnd_9x19_glock17",1,17}};
backpackItems[] = {{"CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",4,120}};

basicMedUniform[] = {{"ACE_fieldDressing",10},{"ACE_tourniquet",4},{"ACE_morphine",3},{"ACE_epinephrine",3}};
basicMedVest[] = {};
basicMedBackpack[] = {};

};

class CUP_B_GER_Fleck_Soldier_Engineer
{
	displayName = "CUP_B_GER_Fleck_Soldier_Engineer";

primaryWeapon[] = {"CUP_arifle_G36K_KSK_hex_ZO_las","CUP_muzzle_snds_G36_wood","CUP_acc_ANPEQ_15_OD_Top","CUP_optic_HensoldtZO_low_RDS_hex_PIP",{"CUP_30Rnd_556x45_G36",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_6";
headgearClass = "CUP_H_Ger_Cap_Tan2";
facewearClass = "CUP_G_PMC_Facewrap_Tropical_Glasses_Ember";
vestClass = "CUP_V_B_GER_Carrier_Vest";
backpackClass = "CUP_B_GER_Backpack_Engineer_Fleck";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_G36",6,30},{"CUP_17Rnd_9x19_glock17",2,17}};
backpackItems[] = {{"ACE_DefusalKit",1},{"MineDetector",1},{"ToolKit",1},{"DemoCharge_Remote_Mag",4,1}};

basicMedUniform[] = {{"ACE_fieldDressing",10},{"ACE_tourniquet",4},{"ACE_morphine",3},{"ACE_epinephrine",3}};
basicMedVest[] = {};
basicMedBackpack[] = {};

};
class CUP_B_GER_Fleck_Soldier_MG
{
displayName = "CUP_B_GER_Fleck_Soldier_MG";

primaryWeapon[] = {"CUP_lmg_MG3_rail","","CUP_acc_ANPEQ_15_Black","",{"CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",120},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_3";
headgearClass = "CUP_H_OpsCore_Covered_Fleck";
facewearClass = "CUP_G_PMC_Facewrap_Black_Glasses_Dark";
vestClass = "CUP_V_B_GER_Carrier_Vest";
backpackClass = "CUP_B_Backpack_SpecOps_Fleck";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_black"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_HandGrenade_M67",2,1},{"CUP_17Rnd_9x19_glock17",3,17},{"CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",1,120}};
backpackItems[] = {{"CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",3,120}};

basicMedUniform[] = {{"ACE_fieldDressing",10},{"ACE_tourniquet",4},{"ACE_epinephrine",3},{"ACE_morphine",3}};
basicMedVest[] = {};
basicMedBackpack[] = {};
};

};
