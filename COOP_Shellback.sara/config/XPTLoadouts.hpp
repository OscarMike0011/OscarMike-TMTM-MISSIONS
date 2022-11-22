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
		//Requires the following DLC: Apex
displayName = "B_officer_F";

primaryWeapon[] = {"arifle_SDAR_F","","","",{"20Rnd_556x45_UW_mag",20},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_ACPC2_F","","","",{"9Rnd_45ACP_Mag",9},{},""};

uniformClass = "U_B_Wetsuit";
facewearClass = "G_B_Diving";
vestClass = "V_RebreatherB";
backpackClass = "FRXA_tf_rt1523g_big_Black";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","NVGogglesB_blk_F"};

uniformItems[] = {{"20Rnd_556x45_UW_mag",6,20},{"9Rnd_45ACP_Mag",2,9}};
vestItems[] = {};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",10}};
basicMedVest[] = {};
basicMedBackpack[] = {};

	}
	class B_medic_F
	{
		//Requires the following DLC: Apex
displayName = "B_medic_F";

primaryWeapon[] = {"arifle_SDAR_F","","","",{"20Rnd_556x45_UW_mag",20},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_ACPC2_F","","","",{"9Rnd_45ACP_Mag",9},{},""};

uniformClass = "U_B_Wetsuit";
facewearClass = "G_B_Diving";
vestClass = "V_RebreatherB";
backpackClass = "B_AssaultPack_blk";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","NVGogglesB_blk_F"};

uniformItems[] = {{"20Rnd_556x45_UW_mag",6,20},{"9Rnd_45ACP_Mag",2,9}};
vestItems[] = {};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",25},{"ACE_morphine",3},{"ACE_epinephrine",3}};
basicMedVest[] = {};
basicMedBackpack[] = {{"ACE_fieldDressing",10},{"ACE_morphine",7},{"ACE_personalAidKit",1},{"ACE_surgicalKit",1},{"ACE_bloodIV",5},{"ACE_splint",4},{"ACE_epinephrine",7}};

	}
class B_Soldier_F
{
	//Requires the following DLC: Apex
displayName = "B_Soldier_F";

primaryWeapon[] = {"arifle_SDAR_F","","","",{"20Rnd_556x45_UW_mag",20},{},""};
secondaryWeapon[] = {};
handgunWeapon[] = {"hgun_ACPC2_F","","","",{"9Rnd_45ACP_Mag",9},{},""};

uniformClass = "U_B_Wetsuit";
facewearClass = "G_B_Diving";
vestClass = "V_RebreatherB";
backpackClass = "B_AssaultPack_blk";

linkedItems[] = {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","TFAR_microdagr","NVGogglesB_blk_F"};

uniformItems[] = {{"20Rnd_556x45_UW_mag",6,20},{"9Rnd_45ACP_Mag",2,9}};
vestItems[] = {};
backpackItems[] = {};

basicMedUniform[] = {{"ACE_fieldDressing",11},{"ACE_packingBandage",1},{"ACE_morphine",1},{"ACE_tourniquet",1}};
basicMedVest[] = {};
basicMedBackpack[] = {};

}
};
