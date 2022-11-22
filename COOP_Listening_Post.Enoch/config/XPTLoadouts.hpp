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
	class B_Soldier_A_F
	{
		//Requires the following DLC: Contact
displayName = "B_Soldier_A_F";

primaryWeapon[] = {"arifle_MX_Black_F","","acc_pointer_IR","optic_Aco",{"30Rnd_65x39_caseless_black_mag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_esd_01_F","muzzle_antenna_02_f","","",{},{"ESD_01_DummyMagazine_1",8250},""};
binocular = "Binocular";

uniformClass = "U_B_CombatUniform_mcam_wdl_f";
headgearClass = "H_HelmetB_plain_wdl";
facewearClass = "G_AirPurifyingRespirator_01_F";
vestClass = "V_PlateCarrierSpec_wdl";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","NVGoggles_INDEP"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"30Rnd_65x39_caseless_black_mag_Tracer",5,30},{"MiniGrenade",1,1},{"SmokeShell",2,1}};

basicMedUniform[] = {{"ACE_fieldDressing",10},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};
	};
	class B_officer_F
	{
		//Requires the following DLC: Contact
displayName = "B_officer_F";

primaryWeapon[] = {"arifle_MXC_Black_F","","","optic_Arco_blk_F",{"30Rnd_65x39_caseless_black_mag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_Pistol_heavy_01_MRD_F","","","optic_MRD",{"11Rnd_45ACP_Mag",11},{},""};
binocular = "Binocular";

uniformClass = "U_B_CombatUniform_mcam_wdl_f";
headgearClass = "H_HelmetB_plain_wdl";
vestClass = "V_PlateCarrierSpec_wdl";
facewearClass = "G_AirPurifyingRespirator_01_F";
backpackClass = "FRXA_tf_rt1523g_Ranger_Green";

linkedItems[] = {"ItemMap","ItemcTab","TFAR_anprc152","ItemCompass","TFAR_microdagr","NVGoggles_INDEP"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"MiniGrenade",2,1},{"SmokeShell",2,1},{"11Rnd_45ACP_Mag",1,11},{"30Rnd_65x39_caseless_black_mag",5,30}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_epinephrine",5}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	}
	class B_medic_F
	{
		//Requires the following DLC: Contact
displayName = "B_medic_F";

primaryWeapon[] = {"arifle_MX_Black_F","","acc_pointer_IR","optic_Holosight_blk_F",{"30Rnd_65x39_caseless_black_mag",30},{},"bipod_01_F_blk"};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};
binocular = "Binocular";

uniformClass = "U_B_CombatUniform_mcam_wdl_f";
headgearClass = "H_HelmetB_plain_wdl";
vestClass = "V_PlateCarrierSpec_wdl";
facewearClass = "G_AirPurifyingRespirator_01_F";
backpackClass = "B_AssaultPack_wdl_F";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","NVGoggles_INDEP"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"30Rnd_65x39_caseless_black_mag",5,30},{"MiniGrenade",1,1},{"SmokeShell",2,1},{"SmokeShellYellow",2,1}};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_fieldDressing",20}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_bloodIV",10},{"ACE_morphine",5},{"ACE_epinephrine",5},{"ACE_personalAidKit",1},{"ACE_tourniquet",6}};


	}
	class B_Soldier_F
	{
//Requires the following DLC: Contact
displayName = "B_Soldier_F";

primaryWeapon[] = {"arifle_MX_SW_Black_F","","acc_pointer_IR","optic_Aco",{"30Rnd_65x39_caseless_black_mag",30},{},"bipod_01_F_blk"};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};
binocular = "Binocular";

uniformClass = "U_B_CombatUniform_mcam_wdl_f";
headgearClass = "H_HelmetB_plain_wdl";
facewearClass = "G_AirPurifyingRespirator_01_F";
vestClass = "V_PlateCarrierSpec_wdl";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","NVGoggles_INDEP"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"30Rnd_65x39_caseless_black_mag",5,30},{"MiniGrenade",1,1},{"SmokeShell",2,1}};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_tourniquet",4},{"ACE_morphine",5}};
basicMedVest[] = {};

	}
	class
	{
//Requires the following DLC: Contact
displayName = "B_soldier_M_F";

primaryWeapon[] = {"arifle_MXM_Black_F","","acc_pointer_IR","optic_Hamr",{"30Rnd_65x39_caseless_black_mag",30},{},"bipod_01_F_blk"};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};

uniformClass = "U_B_CombatUniform_mcam_wdl_f";
headgearClass = "H_HelmetB_plain_wdl";
facewearClass = "G_AirPurifyingRespirator_01_F";
vestClass = "V_PlateCarrierSpec_wdl";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"30Rnd_65x39_caseless_black_mag",5,30},{"MiniGrenade",1,1},{"SmokeShell",2,1}};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};

	}
	class B_soldier_AR_F
	{
		//Requires the following DLC: Contact
displayName = "B_soldier_AR_F";

primaryWeapon[] = {"arifle_MX_SW_Black_F","","acc_pointer_IR","optic_Aco",{"100Rnd_65x39_caseless_black_mag",100},{},"bipod_01_F_blk"};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};

uniformClass = "U_B_CombatUniform_mcam_wdl_f";
headgearClass = "H_HelmetB_plain_wdl";
facewearClass = "G_AirPurifyingRespirator_01_F";
vestClass = "V_PlateCarrierSpec_wdl";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"100Rnd_65x39_caseless_black_mag",4,100}};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_fieldDressing",15}};
basicMedVest[] = {};

	}
	class B_soldier_LAT2_F
	{
		//Requires the following DLC: Contact
displayName = "B_soldier_LAT2_F";

primaryWeapon[] = {"arifle_MX_SW_Black_F","","acc_pointer_IR","optic_Aco",{"30Rnd_65x39_caseless_black_mag",30},{},"bipod_01_F_blk"};
secondaryWeapon[] = {"launch_MRAWS_green_rail_F","","","",{"MRAWS_HEAT_F",1},{},""};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};

uniformClass = "U_B_CombatUniform_mcam_wdl_f";
headgearClass = "H_HelmetB_plain_wdl";
vestClass = "V_PlateCarrierSpec_wdl";
facewearClass = "G_AirPurifyingRespirator_01_F";
backpackClass = "B_AssaultPack_wdl_F";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"30Rnd_65x39_caseless_black_mag",5,30},{"MiniGrenade",1,1},{"SmokeShell",2,1}};
backpackItems[] = {{"MRAWS_HEAT_F",1,1}};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	}
	class B_Soldier_TL_F
	{
		//Requires the following DLC: Contact
displayName = "B_Soldier_TL_F";

primaryWeapon[] = {"arifle_MX_GL_Black_F","","acc_pointer_IR","optic_Hamr",{"30Rnd_65x39_caseless_black_mag",30},{"1Rnd_HE_Grenade_shell",1},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};
binocular = "Binocular";

uniformClass = "U_B_CombatUniform_mcam_wdl_f";
headgearClass = "H_HelmetSpecB";
facewearClass = "G_AirPurifyingRespirator_01_F";
vestClass = "V_PlateCarrierGL_wdl";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","NVGoggles"};

uniformItems[] = {{"ACE_EntrenchingTool",1}};
vestItems[] = {{"1Rnd_HE_Grenade_shell",10,1},{"30Rnd_65x39_caseless_black_mag",5,30},{"1Rnd_Smoke_Grenade_shell",2,1},{"1Rnd_SmokeRed_Grenade_shell",2,1},{"1Rnd_SmokeBlue_Grenade_shell",2,1}};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4}};
basicMedVest[] = {};

	}
	class B_crew_F
	{
//Requires the following DLC: Contact
displayName = "B_crew_F";

primaryWeapon[] = {"arifle_MXC_Black_F","","","",{"30Rnd_65x39_caseless_black_mag",30},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_P07_F","","","",{"16Rnd_9x21_Mag",17},{},""};
binocular = "Binocular";

uniformClass = "U_B_CombatUniform_vest_mcam_wdl_f";
headgearClass = "H_HelmetCrew_B";
facewearClass = "G_AirPurifyingRespirator_01_F";
vestClass = "V_BandollierB_rgr";
backpackClass = "FRXA_tf_rt1523g_big_M81";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","NVGoggles_INDEP"};

uniformItems[] = {};
vestItems[] = {{"30Rnd_65x39_caseless_black_mag",2,30}};
backpackItems[] = {{"ToolKit",1}};

basicMedUniform[] = {{"ACE_epinephrine",5},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_fieldDressing",15}};
basicMedVest[] = {};
basicMedBackpack[] = {};
	}
	class B_Pilot_F
	{
	//Requires the following DLC: Contact
displayName = "B_Pilot_F";

primaryWeapon[] = {"SMG_01_Holo_F","","","optic_Holosight_smg",{"30Rnd_45ACP_Mag_SMG_01",25},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {};

uniformClass = "U_B_PilotCoveralls";
headgearClass = "H_PilotHelmetFighter_B";
backpackClass = "FRXA_tf_rt1523g_big_Black";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr",""};

uniformItems[] = {{"30Rnd_45ACP_Mag_SMG_01",2,25}};
backpackItems[] = {{"ToolKit",1}};

basicMedUniform[] = {{"ACE_fieldDressing",15},{"ACE_morphine",5},{"ACE_tourniquet",4},{"ACE_epinephrine",5}};
basicMedBackpack[] = {};
	}
};