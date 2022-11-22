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
	class CUP_B_GER_Fleck_TankCommander
	{
displayName = "CUP_B_GER_Fleck_TankCommander";

primaryWeapon[] = {"CUP_arifle_G36A_wdl","","","CUP_optic_G36DualOptics_wood_PIP",{"CUP_30Rnd_556x45_G36_wdl",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_Glock17","","","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "ACE_Vector";

uniformClass = "CUP_U_B_GER_Flecktarn_1";
headgearClass = "CUP_H_Ger_M92_Cover";
vestClass = "CUP_V_B_GER_PVest_Fleck_OFC";
backpackClass = "TFAR_rt1523g_big_bwmod";

linkedItems[] = {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_G36_wdl",6,30},{"CUP_17Rnd_9x19_glock17",2,17},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1},{"SmokeShellRed",2,1},{"SmokeShellGreen",2,1},{"SmokeShellBlue",2,1}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",3},{"ACE_morphine",3},{"ACE_tourniquet",4}};
basicMedVest[] = {};
basicMedBackpack[] = {};
	};
	class CUP_B_GER_BW_Fleck_Medic
	{
displayName = "CUP_B_GER_BW_Fleck_Medic";

primaryWeapon[] = {"CUP_arifle_G36A_wdl","","","CUP_optic_G36DualOptics_wood_3D",{"CUP_30Rnd_556x45_G36_wdl",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_5";
headgearClass = "CUP_H_Ger_M92_Cover_GG_CF";
facewearClass = "CUP_G_Oakleys_Drk";
vestClass = "CUP_V_B_GER_PVest_Fleck_Med";
backpackClass = "CUP_B_GER_Backpack_Medic_Fleck";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_G36_wdl",6,30},{"CUP_17Rnd_9x19_glock17",2,17}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",6}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_fieldDressing",25},{"ACE_bloodIV",8},{"ACE_bloodIV_500",2},{"ACE_morphine",10},{"ACE_personalAidKit",1},{"ACE_epinephrine",10}};

	};
	class CUP_B_GER_BW_Fleck_Soldier_TL
	{
		displayName = "CUP_B_GER_BW_Fleck_Soldier_TL";

primaryWeapon[] = {"CUP_arifle_G36A_wdl","","","CUP_optic_G36DualOptics_wood_3D",{"CUP_30Rnd_556x45_G36_wdl",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_6";
headgearClass = "CUP_H_Ger_M92_Cover_GG_CB";
facewearClass = "CUP_G_PMC_Facewrap_Black_Glasses_Ember";
vestClass = "CUP_V_B_GER_PVest_Fleck_TL";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_G36_wdl",6,30},{"CUP_17Rnd_9x19_glock17",2,17},{"CUP_HandGrenade_M67",2,1},{"SmokeShellBlue",2,1},{"SmokeShell",2,1},{"SmokeShellRed",2,1},{"SmokeShellGreen",2,1}};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",3},{"ACE_morphine",3},{"ACE_tourniquet",4}};
basicMedVest[] = {};

	}
	class CUP_B_GER_BW_Fleck_Soldier
	{
displayName = "CUP_B_GER_BW_Fleck_Soldier";

primaryWeapon[] = {"CUP_arifle_G36A_wdl","","","CUP_optic_G36DualOptics_wood_3D",{"CUP_30Rnd_556x45_G36_wdl",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_2";
headgearClass = "CUP_H_Ger_M92_Cover";
facewearClass = "CUP_G_PMC_Facewrap_Black_Glasses_Dark";
vestClass = "CUP_V_B_GER_PVest_Fleck_RFL";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_17Rnd_9x19_glock17",2,17},{"CUP_30Rnd_556x45_G36_wdl",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShellBlue",2,1},{"SmokeShellGreen",2,1},{"SmokeShellRed",2,1},{"SmokeShell",2,1}};

basicMedUniform[] = {{"ACE_epinephrine",3},{"ACE_fieldDressing",15},{"ACE_morphine",3},{"ACE_tourniquet",4}};
basicMedVest[] = {};

	};
	class CUP_B_GER_BW_Fleck_Soldier_GL
	{
		displayName = "CUP_B_GER_BW_Fleck_Soldier_GL";

primaryWeapon[] = {"CUP_arifle_AG36_wdl","","","CUP_optic_G36DualOptics_wood_3D",{"CUP_30Rnd_556x45_G36_wdl",30},{"CUP_1Rnd_HEDP_M203",1},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_6";
headgearClass = "CUP_H_Ger_M92_Cover_GG";
facewearClass = "CUP_G_PMC_Facewrap_Tropical_Glasses_Dark";
vestClass = "CUP_V_B_GER_PVest_Fleck_Gren_LT";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1},{"CUP_17Rnd_9x19_glock17",2,17}};
vestItems[] = {{"1Rnd_SmokeBlue_Grenade_shell",2,1},{"1Rnd_SmokeGreen_Grenade_shell",2,1},{"1Rnd_SmokeRed_Grenade_shell",2,1},{"1Rnd_Smoke_Grenade_shell",2,1},{"CUP_30Rnd_556x45_G36_wdl",6,30},{"CUP_1Rnd_HEDP_M203",10,1}};

basicMedUniform[] = {{"ACE_epinephrine",3},{"ACE_morphine",3},{"ACE_tourniquet",4},{"ACE_fieldDressing",15}};
basicMedVest[] = {};

	};
	class CUP_B_GER_BW_Fleck_Soldier_MG3
	{
displayName = "CUP_B_GER_BW_Fleck_Soldier_MG3";

primaryWeapon[] = {"CUP_lmg_MG3","","","",{"CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",120},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_2";
headgearClass = "CUP_H_Ger_M92_Cover_GG_CB";
facewearClass = "CUP_G_Oakleys_Drk";
vestClass = "CUP_V_B_GER_PVest_Fleck_MG_LT";
backpackClass = "CUP_B_GER_Backpack_MG3_Fleck";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",2,120}};
backpackItems[] = {{"SmokeShellBlue",2,1},{"SmokeShellRed",2,1},{"SmokeShell",2,1},{"SmokeShellGreen",2,1},{"CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",2,120}};

basicMedUniform[] = {{"ACE_epinephrine",3},{"ACE_morphine",3},{"ACE_tourniquet",4},{"ACE_fieldDressing",15}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	};
	class CUP_B_GER_BW_Fleck_Soldier_AT
	{
		displayName = "CUP_B_GER_BW_Fleck_Soldier_AT";

primaryWeapon[] = {"CUP_arifle_G36A_wdl","","","CUP_optic_G36Optics_wood_PIP",{"CUP_30Rnd_556x45_G36_wdl",30},{},""};
secondaryWeapon[] = {"CUP_launch_MAAWS_Scope","","","",{"CUP_MAAWS_HEAT_M",1},{},""};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_6";
headgearClass = "CUP_H_Ger_M92_Cover_GG_CB";
facewearClass = "CUP_PMC_Facewrap_Black";
vestClass = "CUP_V_B_GER_PVest_Fleck_RFL_LT";
backpackClass = "CUP_B_GER_Backpack_AT_Fleck";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_30Rnd_556x45_G36_wdl",6,30},{"CUP_17Rnd_9x19_glock17",2,17},{"CUP_HandGrenade_M67",2,1},{"SmokeShellBlue",2,1},{"SmokeShellGreen",2,1},{"SmokeShellRed",2,1},{"SmokeShell",2,1}};
backpackItems[] = {{"CUP_MAAWS_HEAT_M",1,1},{"CUP_MAAWS_HEDP_M",1,1}};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",3},{"ACE_morphine",3},{"ACE_tourniquet",4}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	};
	class CUP_B_GER_BW_Fleck_Soldier_AA
	{
displayName = "CUP_B_GER_BW_Fleck_Soldier_AA";

primaryWeapon[] = {"CUP_arifle_G36A_wdl","","","CUP_optic_G36Optics_wood_3D",{"CUP_30Rnd_556x45_G36_wdl",30},{},""};
secondaryWeapon[] = {"CUP_launch_FIM92Stinger_Loaded","","","",{"CUP_Stinger_M",1},{},""};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_6";
headgearClass = "CUP_H_Ger_M92_Cover_GG";
facewearClass = "CUP_PMC_Facewrap_Black";
vestClass = "CUP_V_B_GER_PVest_Fleck_RFL";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"CUP_17Rnd_9x19_glock17",2,17},{"CUP_HandGrenade_M67",2,1},{"SmokeShellBlue",2,1},{"SmokeShellGreen",2,1},{"SmokeShellRed",2,1},{"SmokeShell",2,1}};

basicMedUniform[] = {{"ACE_epinephrine",3},{"ACE_morphine",3},{"ACE_tourniquet",4},{"ACE_fieldDressing",15}};
basicMedVest[] = {};

	};
	class CUP_B_GER_BW_Fleck_Soldier_Engineer
	{
displayName = "CUP_B_GER_BW_Fleck_Soldier_Engineer";

primaryWeapon[] = {"CUP_arifle_G36A_wdl","","","CUP_optic_G36DualOptics_wood_PIP",{"CUP_30Rnd_556x45_G36_wdl",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"CUP_hgun_glock17_flashlight","","CUP_acc_Glock17_Flashlight","",{"CUP_17Rnd_9x19_glock17",17},{},""};
binocular = "CUP_Vector21Nite";

uniformClass = "CUP_U_B_GER_Flecktarn_6";
headgearClass = "CUP_H_Ger_M92_Cover";
facewearClass = "CUP_G_Oakleys_Drk";
vestClass = "CUP_V_B_GER_PVest_Fleck_RFL_LT";
backpackClass = "CUP_B_GER_Backpack_Engineer_Fleck";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"ACE_EntrenchingTool",1},{"ACE_DefusalKit",1},{"MineDetector",1}};
vestItems[] = {{"CUP_30Rnd_556x45_G36_wdl",6,30},{"CUP_17Rnd_9x19_glock17",2,17},{"CUP_HandGrenade_M67",2,1},{"SmokeShellBlue",2,1},{"SmokeShellGreen",2,1},{"SmokeShellRed",2,1},{"SmokeShell",2,1}};
backpackItems[] = {{"ToolKit",1},{"DemoCharge_Remote_Mag",2,1},{"SatchelCharge_Remote_Mag",2,1}};

basicMedUniform[] = {{"ACE_epinephrine",3},{"ACE_fieldDressing",15},{"ACE_morphine",3},{"ACE_tourniquet",4}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	};
};