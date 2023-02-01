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

	class CUP_B_US_Officer_OEFCP {
		displayName = "CUP_B_US_Officer_OEFCP";

		primaryWeapon[] = {"CUP_arifle_M4A1_black","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG2_PIP",{"CUP_30Rnd_556x45_Stanag_Tracer_Red",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};
		binocular = "CUP_SOFLAM";

		uniformClass = "CUP_U_B_USArmy_ACU_OEFCP";
		headgearClass = "CUP_H_USArmy_HelmetACH_OEFCP";
		vestClass = "CUP_V_B_IOTV_OEFCP_SL_USArmy";
		backpackClass = "TFAR_rt1523g";

		linkedItems[] = {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {{"ACE_EntrenchingTool",1},{"ACE_Fortify",1}};
		vestItems[] = {{"CUP_30Rnd_556x45_Stanag_Tracer_Red",6,30},{"CUP_15Rnd_9x19_M9",1,15},{"CUP_HandGrenade_M67",2,1},{"SmokeShellBlue",2,1},{"SmokeShell",2,1}};
		backpackItems[] = {};

		basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_fieldDressing",15}};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
	};
	class CUP_B_US_Medic_OEFCP {
		displayName = "CUP_B_US_Medic_OEFCP";

		primaryWeapon[] = {"CUP_arifle_M4A1_CCO_Laser","","CUP_acc_ANPEQ_15_Black","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag_Tracer_Red",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_OEFCP";
		headgearClass = "CUP_H_USArmy_HelmetACH_ESS_OEFCP";
		vestClass = "CUP_V_B_IOTV_OEFCP_Medic_USArmy";
		backpackClass = "CUP_B_USPack_Medic_OEFCP";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {{"ACE_EntrenchingTool",1},{"ACE_Fortify",1}};
		vestItems[] = {{"CUP_30Rnd_556x45_Stanag_Tracer_Red",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShellBlue",2,1},{"SmokeShellGreen",2,1},{"SmokeShellRed",2,1}};
		backpackItems[] = {};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
		basicMedBackpack[] = {{"ACE_fieldDressing",40},{"ACE_bloodIV",5},{"ACE_bloodIV_250",5},{"ACE_bloodIV_500",5},{"ACE_tourniquet",4},{"ACE_personalAidKit",1},{"ACE_adenosine",15},{"ACE_morphine",15},{"ACE_epinephrine",15}};
	};
	class CUP_B_US_Soldier_TL_OEFCP {
		displayName = "Team Leader";

		primaryWeapon[] = {"CUP_arifle_M4A1_M203_ACOG_Laser","","CUP_acc_ANPEQ_2","CUP_optic_ACOG2",{"CUP_30Rnd_556x45_Stanag_Tracer_Red",30},{"CUP_1Rnd_HEDP_M203",1},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};
		binocular = "CUP_Vector21Nite";

		uniformClass = "CUP_U_B_USArmy_ACU_Gloves_OEFCP";
		headgearClass = "CUP_H_USArmy_HelmetACH_GCOVERED_Headset_OEFCP";
		vestClass = "CUP_V_B_IOTV_OEFCP_TL_USArmy";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {{"ACE_EntrenchingTool",1},{"ACE_Fortify",1}};
		vestItems[] = {{"CUP_1Rnd_HEDP_M203",10,1},{"CUP_30Rnd_556x45_Stanag_Tracer_Red",6,30},{"1Rnd_SmokeBlue_Grenade_shell",2,1},{"1Rnd_SmokeRed_Grenade_shell",2,1},{"1Rnd_Smoke_Grenade_shell",2,1},{"CUP_15Rnd_9x19_M9",1,15}};

		basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_fieldDressing",15},{"ACE_tourniquet",4},{"ACE_morphine",5}};
		basicMedVest[] = {};
	};

	class CUP_B_US_Soldier_MG_OEFCP {
		displayName = "MMG";

		primaryWeapon[] = {"CUP_lmg_M240_B_ElcanM143_ANPEQ15","","CUP_acc_ANPEQ_15_Black","CUP_optic_ElcanM145",{"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",100},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Rolled_Gloves_OEFCP";
		headgearClass = "CUP_H_USArmy_HelmetACH_ESS_Headset_OEFCP";
		facewearClass = "CUP_G_Oakleys_Clr";
		vestClass = "CUP_V_B_IOTV_OEFCP_MG_USArmy";
		backpackClass = "CUP_B_USPack_AmmoMG_OEFCP";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {{"ACE_EntrenchingTool",1},{"ACE_Fortify",1}};
		vestItems[] = {{"CUP_HandGrenade_M67",2,1},{"SmokeShell",2,1},{"SmokeShellBlue",2,1},{"SmokeShellRed",2,1},{"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",1,100}};
		backpackItems[] = {{"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",3,100}};

		basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
	};

	class CUP_B_US_Soldier_AMG_OEFCP {
		displayName = "Asst. Machinegunner";

		primaryWeapon[] = {"CUP_arifle_M4A3_CCO_Laser","","CUP_acc_ANPEQ_15_Black","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag_Tracer_Red",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};
		binocular = "Binocular";

		uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_OEFCP";
		headgearClass = "CUP_H_USArmy_HelmetACH_GCOVERED_OEFCP";
		vestClass = "CUP_V_B_IOTV_OEFCP_Rifleman_USArmy";
		backpackClass = "CUP_B_USPack_AmmoMG_OEFCP";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {{"ACE_EntrenchingTool",1},{"ACE_Fortify",1}};
		vestItems[] = {{"CUP_30Rnd_556x45_Stanag_Tracer_Red",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShellBlue",2,1},{"SmokeShell",2,1},{"SmokeShellRed",2,1}};
		backpackItems[] = {{"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4,100}};

		basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
	};

	class CUP_B_US_Soldier_OEFCP {
		displayName = "Rifleman";

		primaryWeapon[] = {"CUP_arifle_M4A3_CCO_Laser","","CUP_acc_ANPEQ_15_Black","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag_Tracer_Red",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_OEFCP";
		headgearClass = "CUP_H_USArmy_HelmetACH_OEFCP";
		vestClass = "CUP_V_B_IOTV_OEFCP_Rifleman_USArmy";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {{"ACE_EntrenchingTool",1},{"ACE_Fortify",1}};
		vestItems[] = {{"CUP_30Rnd_556x45_Stanag_Tracer_Red",7,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShellBlue",2,1},{"SmokeShellRed",2,1},{"SmokeShell",2,1}};

		basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
	};

	class CUP_B_US_Soldier_Engineer_Sapper_OEFCP {
		displayName = "Sapper";

		primaryWeapon[] = {"CUP_arifle_M4A3_CCO_Laser","","CUP_acc_ANPEQ_15_Black","CUP_optic_CompM2_low",{"CUP_30Rnd_556x45_Stanag_Tracer_Red",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {};

		uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_OEFCP";
		headgearClass = "CUP_H_USArmy_HelmetACH_ESS_Headset_OEFCP";
		vestClass = "CUP_V_B_IOTV_OEFCP_SL_USArmy";
		backpackClass = "CUP_B_USPack_MinePack_OEFCP";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {{"ACE_EntrenchingTool",1},{"ACE_Fortify",1}};
		vestItems[] = {{"MineDetector",1},{"ACE_M26_Clacker",1},{"CUP_30Rnd_556x45_Stanag_Tracer_Red",6,30},{"CUP_HandGrenade_M67",2,1},{"SmokeShellBlue",2,1},{"SmokeShellRed",2,1},{"SmokeShell",2,1}};
		backpackItems[] = {{"APERSMineDispenser_Mag",4,1}};

		basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
	};
	class CUP_B_US_Crew_OEFCP {
		displayName = "Commander@Steel";

		primaryWeapon[] = {"CUP_arifle_M4A1","","","",{"CUP_30Rnd_556x45_Stanag_Tracer_Red",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};

		uniformClass = "CUP_U_B_USArmy_ACU_OEFCP";
		headgearClass = "CUP_H_CVC";
		vestClass = "CUP_V_B_IOTV_OEFCP_Rifleman_USArmy";

		linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"};

		uniformItems[] = {{"ACE_Fortify",1},{"ACE_EntrenchingTool",1}};
		vestItems[] = {{"ToolKit",1},{"CUP_30Rnd_556x45_Stanag_Tracer_Red",4,30}};

		basicMedUniform[] = {{"ACE_tourniquet",4},{"ACE_morphine",5},{"ACE_epinephrine",5},{"ACE_fieldDressing",15}};
		basicMedVest[] = {};
	};
	class CUP_B_US_Pilot {
		displayName = "Pilot@Bird";

		primaryWeapon[] = {"CUP_arifle_M4A1","","","",{"CUP_30Rnd_556x45_Stanag",30},{},""};
		secondaryWeapon[] = {};
		handgunWeapon[] = {"CUP_hgun_Colt1911","","","",{"CUP_7Rnd_45ACP_1911",7},{},""};

		uniformClass = "CUP_U_B_USArmy_PilotOverall";
		headgearClass = "CUP_H_SPH4_grey";
		vestClass = "CUP_V_B_USArmy_PilotVest";
		backpackClass = "TFAR_rt1523g";

		linkedItems[] = {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_Hide"};

		uniformItems[] = {};
		vestItems[] = {{"CUP_7Rnd_45ACP_1911",2,7},{"CUP_30Rnd_556x45_Stanag_Tracer_Red",4,30}};
		backpackItems[] = {};

		basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",4}};
		basicMedVest[] = {};
		basicMedBackpack[] = {};
	};


};