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
	class B_officer_F
	{
	displayName = "B_officer_F";

primaryWeapon[] = {"arifle_MXC_ACO_F","","","optic_Aco",{"30Rnd_65x39_caseless_mag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_Pistol_heavy_01_MRD_F","","","optic_MRD",{"11Rnd_45ACP_Mag",11},{},""};
binocular = "Binocular";

uniformClass = "U_B_CombatUniform_mcam";
headgearClass = "H_HelmetB_desert";
vestClass = "V_PlateCarrier2_rgr";
backpackClass = "FRXA_tf_rt1523g_M81";

linkedItems[] = {"ItemMap","","TFAR_anprc152","ItemCompass"," ","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"ACE_MapTools",1},{"11Rnd_45ACP_Mag",2,11},{"SmokeShell",2,1},{"MiniGrenade",1,1},{"30Rnd_65x39_caseless_mag",6,30}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_fieldDressing",15},{"ACE_tourniquet",4}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	}
	class B_soldier_UAV_F
	{
		displayName = "B_soldier_UAV_F";

primaryWeapon[] = {"arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",{"30Rnd_65x39_caseless_mag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};
binocular = "Laserdesignator";

uniformClass = "U_B_CombatUniform_mcam";
headgearClass = "H_HelmetB";
vestClass = "V_PlateCarrierSpec_rgr";
backpackClass = "B_UAV_01_backpack_F";

linkedItems[] = {"ItemMap","B_UavTerminal","TFAR_anprc154","ItemCompass"," ","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"ACE_MapTools",1},{"30Rnd_65x39_caseless_mag",5,30},{"16Rnd_9x21_Mag",1,17},{"MiniGrenade",1,1},{"SmokeShell",2,1}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_fieldDressing",15}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	}
	class B_medic_F
	{
		displayName = "B_medic_F";

primaryWeapon[] = {"arifle_MX_pointer_F","","acc_pointer_IR","",{"30Rnd_65x39_caseless_mag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};

uniformClass = "U_B_CombatUniform_mcam_tshirt";
headgearClass = "H_HelmetB_light_desert";
vestClass = "V_PlateCarrierSpec_rgr";
backpackClass = "B_AssaultPack_rgr_Medic";

linkedItems[] = {"ItemMap","","TFAR_anprc154","ItemCompass"," ","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"ACE_MapTools",1},{"30Rnd_65x39_caseless_mag",5,30},{"16Rnd_9x21_Mag",2,17},{"MiniGrenade",1,1},{"SmokeShell",2,1}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_fieldDressing",30},{"ACE_bloodIV",10},{"ACE_tourniquet",2},{"ACE_personalAidKit",1}};

	}
	class B_Soldier_TL_F
	{
		displayName = "B_Soldier_TL_F";

primaryWeapon[] = {"arifle_MX_GL_Hamr_pointer_F","","acc_pointer_IR","optic_Hamr",{"30Rnd_65x39_caseless_mag",30},{"1Rnd_HE_Grenade_shell",1},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};
binocular = "Binocular";

uniformClass = "U_B_CombatUniform_mcam_vest";
headgearClass = "H_HelmetSpecB";
vestClass = "V_PlateCarrierGL_rgr";

linkedItems[] = {"ItemMap","","TFAR_anprc152","ItemCompass"," ","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"ACE_MapTools",1},{"30Rnd_65x39_caseless_mag",5,30},{"1Rnd_Smoke_Grenade_shell",2,1},{"1Rnd_SmokeBlue_Grenade_shell",2,1},{"1Rnd_SmokeRed_Grenade_shell",2,1},{"1Rnd_HE_Grenade_shell",10,1}};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};

	}
	class B_soldier_AAT_F
	{
		displayName = "B_soldier_AAT_F";

primaryWeapon[] = {"arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",{"30Rnd_65x39_caseless_mag",30},{},""};
secondaryWeapon[] = {"launch_MRAWS_green_F","","","",{"MRAWS_HEAT_F",1},{},""};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};
binocular = "Rangefinder";

uniformClass = "U_B_CombatUniform_mcam";
headgearClass = "H_HelmetB_light";
vestClass = "V_PlateCarrierGL_rgr";
backpackClass = "B_Carryall_mcamo_AAT";

linkedItems[] = {"ItemMap","","TFAR_anprc154","ItemCompass"," ","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"ACE_MapTools",1},{"30Rnd_65x39_caseless_mag",5,30},{"SmokeShell",2,1}};
backpackItems[] = {{"MRAWS_HEAT_F",1,1}};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	}
	class B_Soldier_F
	{
		displayName = "B_Soldier_F";

primaryWeapon[] = {"arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",{"30Rnd_65x39_caseless_mag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};

uniformClass = "U_B_CombatUniform_mcam";
headgearClass = "H_HelmetB";
vestClass = "V_PlateCarrier1_rgr";

linkedItems[] = {"ItemMap","","TFAR_anprc154","ItemCompass"," ","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"ACE_MapTools",1},{"30Rnd_65x39_caseless_mag",6,30},{"MiniGrenade",2,1},{"SmokeShell",2,1}};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",5},{"ACE_epinephrine",5}};
basicMedVest[] = {};

	}
	class B_soldier_AA_F
	{
		displayName = "B_soldier_AA_F";

primaryWeapon[] = {"arifle_MXC_Holo_pointer_F","","acc_pointer_IR","optic_Holosight",{"30Rnd_65x39_caseless_mag",30},{},""};
secondaryWeapon[] = {"launch_B_Titan_F","","","",{"Titan_AA",1},{},""};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};

uniformClass = "U_B_CombatUniform_mcam";
headgearClass = "H_HelmetB_light_sand";
vestClass = "V_PlateCarrier1_rgr";
backpackClass = "B_AssaultPack_mcamo_AA";

linkedItems[] = {"ItemMap","","TFAR_anprc154","ItemCompass"," ","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"ACE_MapTools",1},{"30Rnd_65x39_caseless_mag",6,30},{"SmokeShell",2,1}};
backpackItems[] = {{"Titan_AA",1,1}};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",1}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	}
	class B_HeavyGunner_F
	{
		//Requires the following DLC: Mark
displayName = "B_HeavyGunner_F";

primaryWeapon[] = {"MMG_02_sand_RCO_LP_F","","acc_pointer_IR","optic_Hamr",{"130Rnd_338_Mag",130},{},"bipod_01_F_snd"};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};

uniformClass = "U_B_CombatUniform_mcam";
headgearClass = "H_HelmetB";
vestClass = "V_PlateCarrier1_rgr";

linkedItems[] = {"ItemMap","","TFAR_anprc154","ItemCompass"," ","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"ACE_MapTools",1},{"130Rnd_338_Mag",2,130}};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};

	}
	class B_soldier_M_F
	{
//Requires the following DLC: Mark
displayName = "B_soldier_M_F";

primaryWeapon[] = {"srifle_DMR_02_F","","","optic_SOS",{"10Rnd_338_Mag",10},{},"bipod_01_F_blk"};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};
binocular = "Rangefinder";

uniformClass = "U_B_CombatUniform_mcam";
headgearClass = "H_HelmetB_grass";
vestClass = "V_PlateCarrier1_rgr";

linkedItems[] = {"ItemMap","","TFAR_anprc154","ItemCompass"," ","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"ACE_MapTools",1},{"ACE_RangeCard",1},{"10Rnd_338_Mag",6,10},{"16Rnd_9x21_Mag",2,17}};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_tourniquet",4},{"ACE_morphine",5},{"ACE_epinephrine",5}};
basicMedVest[] = {};

	}
	class B_Soldier_A_F
	{
//Requires the following DLC: Contact
displayName = "B_Soldier_A_F";

primaryWeapon[] = {"arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",{"30Rnd_65x39_caseless_mag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_esd_01_F","muzzle_antenna_02_f","","",{},{},""};

uniformClass = "U_B_CBRN_Suit_01_MTP_F";
headgearClass = "H_HelmetB_grass";
facewearClass = "G_AirPurifyingRespirator_01_F";
vestClass = "V_PlateCarrier1_rgr";
backpackClass = "B_CombinationUnitRespirator_01_F";

linkedItems[] = {"ItemMap","","TFAR_anprc154","ItemCompass"," ","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"30Rnd_65x39_caseless_mag",5,30},{"MiniGrenade",2,1}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_morphine",5}};
basicMedVest[] = {};
basicMedBackpack[] = {};
	}
};