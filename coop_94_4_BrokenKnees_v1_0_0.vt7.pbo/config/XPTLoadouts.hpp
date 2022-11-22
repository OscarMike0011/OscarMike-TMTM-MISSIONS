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

class CUP_B_US_Soldier_SL_OCP
{
displayName = "CUP_B_US_Soldier_SL_OCP";

primaryWeapon[] = {"CUP_arifle_M4A1_SOMMOD_Grip_black","ACE_muzzle_mzls_L","CUP_acc_ANPEQ_2_grey","optic_MRCO",{"CUP_30Rnd_556x45_Stanag",30},{},"CUP_bipod_Harris_1A2_L_BLK"};
secondaryWeapon[] = {"CUP_launch_M136_Loaded","","","",{"CUP_M136_M",1},{},""};
handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};
binocular = "Laserdesignator_03";

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_GCOVERED_Headset_OCP";
facewearClass = "CUP_G_ESS_BLK_Facewrap_Black_GPS";
vestClass = "CUP_V_B_IOTV_OCP_SL_USArmy";
backpackClass = "TFAR_rt1523g_big_rhs";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_tan"};

uniformItems[] = {};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",15,30}};
backpackItems[] = {{"ACE_Canteen",5},{"ACE_Banana",1},{"ACE_MRE_SteakVegetables",2},{"ACE_MRE_ChickenTikkaMasala",1},{"ACE_MRE_BeefStew",1},{"ACE_MRE_CreamChickenSoup",1},{"ACE_MRE_LambCurry",1},{"ACE_MRE_MeatballsPasta",1},{"ACE_MRE_CreamTomatoSoup",1},{"ACE_MRE_ChickenHerbDumplings",1},{"ACE_WaterBottle",4},{"CUP_30Rnd_556x45_Stanag",5,30}};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_bloodIV_500",1},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_splint",3}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_fieldDressing",10},{"ACE_bloodIV_500",2},{"ACE_tourniquet",4}};

advMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_bloodIV_500",1},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_splint",3}};
advMedVest[] = {};
advMedBackpack[] = {{"ACE_fieldDressing",10},{"ACE_bloodIV_500",2},{"ACE_tourniquet",4}};
}

class CUP_B_US_Medic_OCP
{
displayName = "CUP_B_US_Medic_OCP";

primaryWeapon[] = {"CUP_arifle_M4A1_SOMMOD_Grip_black","ACE_muzzle_mzls_L","CUP_acc_ANPEQ_2_grey","optic_MRCO",{"CUP_30Rnd_556x45_Stanag",30},{},"CUP_bipod_Harris_1A2_L_BLK"};
secondaryWeapon[] = {"CUP_launch_M136","","","",{"CUP_M136_M",1},{},""};
handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};
binocular = "Laserdesignator_03";

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_GCOVERED_Headset_OCP";
facewearClass = "CUP_G_ESS_BLK_Facewrap_Black_GPS";
vestClass = "CUP_V_B_IOTV_OCP_SL_USArmy";
backpackClass = "CUP_B_US_IIID_OCP";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_tan"};

uniformItems[] = {};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",15,30}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_bloodIV_500",1},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_splint",3}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_fieldDressing",40},{"ACE_bloodIV_500",20},{"ACE_bloodIV",5},{"ACE_tourniquet",4},{"ACE_surgicalKit",1},{"ACE_splint",4},{"ACE_personalAidKit",1},{"ACE_morphine",20},{"ACE_epinephrine",20}};

advMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_bloodIV_500",1},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_splint",3}};
advMedVest[] = {};
advMedBackpack[] = {{"ACE_fieldDressing",40},{"ACE_bloodIV_500",20},{"ACE_bloodIV",5},{"ACE_tourniquet",4},{"ACE_surgicalKit",1},{"ACE_splint",4},{"ACE_personalAidKit",1},{"ACE_morphine",20},{"ACE_epinephrine",20}};

}

class CUP_B_US_Soldier_LAT_OCP
{
displayName = "CUP_B_US_Soldier_LAT_OCP";

primaryWeapon[] = {"CUP_arifle_M4A1_SOMMOD_Grip_black","ACE_muzzle_mzls_L","CUP_acc_ANPEQ_2_grey","optic_MRCO",{"CUP_30Rnd_556x45_Stanag",30},{},"CUP_bipod_Harris_1A2_L_BLK"};
secondaryWeapon[] = {"CUP_launch_M136","","","",{"CUP_M136_M",1},{},""};
handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};
binocular = "Laserdesignator_03";

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_GCOVERED_Headset_OCP";
facewearClass = "CUP_G_ESS_BLK_Facewrap_Black_GPS";
vestClass = "CUP_V_B_IOTV_OCP_SL_USArmy";
backpackClass = "B_Parachute";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_tan"};

uniformItems[] = {};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",15,30}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_bloodIV_500",1},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_splint",3}};
basicMedVest[] = {};
basicMedBackpack[] = {};

advMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_bloodIV_500",1},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_splint",3}};
advMedVest[] = {};
advMedBackpack[] = {};
}

class CUP_B_US_Soldier_TL_OCP
{
displayName = "CUP_B_US_Soldier_TL_OCP";

primaryWeapon[] = {"CUP_arifle_M4A1_SOMMOD_Grip_black","ACE_muzzle_mzls_L","CUP_acc_ANPEQ_2_grey","optic_MRCO",{"CUP_30Rnd_556x45_Stanag",30},{},"CUP_bipod_Harris_1A2_L_BLK"};
secondaryWeapon[] = {"CUP_launch_M136","","","",{"CUP_M136_M",1},{},""};
handgunWeapon[] = {"CUP_hgun_M9","","","",{"CUP_15Rnd_9x19_M9",15},{},""};
binocular = "Laserdesignator_03";

uniformClass = "CUP_U_B_USArmy_ACU_Kneepad_Gloves_OEFCP";
headgearClass = "CUP_H_USArmy_HelmetACH_GCOVERED_Headset_OCP";
facewearClass = "CUP_G_ESS_BLK_Facewrap_Black_GPS";
vestClass = "CUP_V_B_IOTV_OCP_SL_USArmy";
backpackClass = "B_Parachute";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","CUP_NVG_PVS15_tan"};

uniformItems[] = {};
vestItems[] = {{"CUP_30Rnd_556x45_Stanag",15,30}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_bloodIV_500",1},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_splint",3}};
basicMedVest[] = {};
basicMedBackpack[] = {};

advMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_bloodIV_500",1},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_splint",3}};
advMedVest[] = {};
advMedBackpack[] = {};
}

};