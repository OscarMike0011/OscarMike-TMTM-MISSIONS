/**
 * MAIN CONFIGURATION FILE
 * 
 * English and French comments
 * Commentaires anglais et fran�ais
 * 
 * (EN)
 * This file contains the configuration variables of the logistics system.
 * For the configuration of the creation factory, see the file "config_creation_factory.sqf".
 * IMPORTANT NOTE : when a logistics feature is given to an object/vehicle class name, all the classes which inherit
 *                  of the parent/generic class (according to the CfgVehicles) will also have this feature.
 *                  CfgVehicles tree view example : http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html
 * 
 * (FR)
 * Fichier contenant les variables de configuration du syst�me de logistique.
 * Pour la configuration de l'usine de cr�ation, voir le fichier "config_creation_factory.sqf".
 * NOTE IMPORTANTE : lorsqu'une fonctionnalit� logistique est accord�e � un nom de classe d'objet/v�hicule, les classes
 *                   h�ritant de cette classe m�re/g�n�rique (selon le CfgVehicles) se verront �galement dot�es de cette fonctionnalit�.
 *                   Exemple d'arborescence du CfgVehicles : http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html
 */

/**
 * DISABLE LOGISTICS ON OBJECTS BY DEFAULT
 * 
 * (EN)
 * Define if objects and vehicles have logistics features by default,
 * or if it must be allowed explicitely on specific objects/vehicles.
 * 
 * If false : all objects are enabled according to the class names listed in this configuration file
 *            You can disable some objects with : object setVariable ["R3F_LOG_disabled", true];
 * If true :  all objects are disabled by default
 *            You can enable some objects with : object setVariable ["R3F_LOG_disabled", false];
 * 
 * 
 * (FR)
 * D�fini si les objets et v�hicules disposent des fonctionnalit�s logistiques par d�faut,
 * ou si elles doivent �tre autoris�s explicitement sur des objets/v�hicules sp�cifiques.
 * 
 * Si false : tous les objets sont actifs en accord avec les noms de classes list�s dans ce fichier
 *            Vous pouvez d�sactiver certains objets avec : objet setVariable ["R3F_LOG_disabled", true];
 * Si true :  tous les objets sont inactifs par d�faut
 *            Vous pouvez activer quelques objets avec : objet setVariable ["R3F_LOG_disabled", false];
 */
R3F_LOG_CFG_disabled_by_default = true;

/**
 * LOCK THE LOGISTICS FEATURES TO SIDE, FACTION OR PLAYER
 * 
 * (EN)
 * Define the lock mode of the logistics features for an object.
 * An object can be locked to the a side, faction, a player (respawn) or a unit (life).
 * If the object is locked, the player can unlock it according to the
 * value of the config variable R3F_LOG_CFG_unlock_objects_timer.
 * 
 * If "none" : no lock features, everyone can used the logistics features.
 * If "side" : the object is locked to the last side which interacts with it.
 * If "faction" : the object is locked to the last faction which interacts with it.
 * If "player" : the object is locked to the last player which interacts with it. The lock is transmitted after respawn.
 * If "unit" : the object is locked to the last player which interacts with it. The lock is lost when the unit dies.
 * 
 * Note : for military objects (not civilian), the lock is initialized to the object's side.
 * 
 * See also the config variable R3F_LOG_CFG_unlock_objects_timer.
 * 
 * (FR)
 * D�fini le mode de verrouillage des fonctionnalit�s logistics pour un objet donn�.
 * Un objet peut �tre verrouill� pour une side, une faction, un joueur (respawn) ou une unit� (vie).
 * Si l'objet est verrouill�, le joueur peut le d�verrouiller en fonction de la
 * valeur de la variable de configiration R3F_LOG_CFG_unlock_objects_timer.
 * 
 * Si "none" : pas de verrouillage, tout le monde peut utiliser les fonctionnalit�s logistiques.
 * Si "side" : l'objet est verrouill� pour la derni�re side ayant interagit avec lui.
 * Si "faction" : l'objet est verrouill� pour la derni�re faction ayant interagit avec lui.
 * Si "player" : l'objet est verrouill� pour le dernier joueur ayant interagit avec lui. Le verrou est transmis apr�s respawn.
 * Si "unit" : l'objet est verrouill� pour le dernier joueur ayant interagit avec lui. Le verrou est perdu quand l'unit� meurt.
 * 
 * Note : pour les objets militaires (non civils), le verrou est initialis� � la side de l'objet.
 * 
 * Voir aussi la variable de configiration R3F_LOG_CFG_unlock_objects_timer.
 */
R3F_LOG_CFG_lock_objects_mode = "none";

/**
 * COUNTDOWN TO UNLOCK AN OBJECT
 * 
 * Define the countdown duration (in seconds) to unlock a locked object.
 * Set to -1 to deny the unlock of objects.
 * See also the config variable R3F_LOG_CFG_lock_objects_mode.
 * 
 * D�fini la dur�e (en secondes) du compte-�-rebours pour d�verrouiller un objet.
 * Mettre � -1 pour qu'on ne puisse pas d�verrouiller les objets.
 * Voir aussi la variable de configiration R3F_LOG_CFG_lock_objects_mode.
 */
R3F_LOG_CFG_unlock_objects_timer = 30;

/**
 * ALLOW NO GRAVITY OVER GROUND
 * 
 * Define if movable objects with no gravity simulation can be set in height over the ground (no ground contact).
 * The no gravity objects corresponds to most of decoration and constructions items.
 * 
 * D�fini si les objets d�pla�able sans simulation de gravit� peuvent �tre position en hauteur sans �tre contact avec le sol.
 * Les objets sans gravit� correspondent � la plupart des objets de d�cors et de construction.
 */
R3F_LOG_CFG_no_gravity_objects_can_be_set_in_height_over_ground = true;

/**
 * LANGUAGE
 * 
 * Automatic language selection according to the game language.
 * New languages can be easily added (read below).
 * 
 * S�lection automatique de la langue en fonction de la langue du jeu.
 * De nouveaux langages peuvent facilement �tre ajout�s (voir ci-dessous).
 */
R3F_LOG_CFG_language = switch (language) do
{
	case "English":{"en"};
	case "French":{"fr"};
	
	// Feel free to create you own language file named "XX_strings_lang.sqf", where "XX" is the language code.
	// Make a copy of an existing language file (e.g. en_strings_lang.sqf) and translate it.
	// Then add a line with this syntax : case "YOUR_GAME_LANGUAGE":{"LANGUAGE_CODE"};
	// For example :
	
	//case "Czech":{"cz"}; // Not supported. Need your own "cz_strings_lang.sqf"
	//case "Polish":{"pl"}; // Not supported. Need your own "pl_strings_lang.sqf"
	//case "Portuguese":{"pt"}; // Not supported. Need your own "pt_strings_lang.sqf"
	//case "YOUR_GAME_LANGUAGE":{"LANGUAGE_CODE"};  // Need your own "LANGUAGE_CODE_strings_lang.sqf"
	
	default {"en"}; // If language is not supported, use English
};

/**
 * CONDITION TO ALLOW LOGISTICS
 * 
 * (EN)
 * This variable allow to set a dynamic SQF condition to allow/deny all logistics features only on specific clients.
 * The variable must be a STRING delimited by quotes and containing a valid SQF condition to evaluate during the game.
 * For example you can allow logistics only on few clients having a known game ID by setting the variable to :
 * "getPlayerUID player in [""76xxxxxxxxxxxxxxx"", ""76yyyyyyyyyyyyyyy"", ""76zzzzzzzzzzzzzzz""]"
 * Or based on the profile name : "profileName in [""john"", ""jack"", ""james""]"
 * Or only for the server admin : "serverCommandAvailable "#kick"""
 * The condition is evaluted in real time, so it can use condition depending on the mission progress : "alive officer && taskState task1 == ""Succeeded"""
 * Or to deny logistics in a circular area defined by a marker : "player distance getMarkerPos ""markerName"" > getMarkerSize ""markerName"" select 0"
 * Note that quotes of the strings inside the string condition must be doubled.
 * Note : if the condition depends of the aimed objects/vehicle, you can use the command cursorTarget
 * To allow the logistics to everyone, just set the condition to "true".
 * 
 * (FR)
 * Cette variable permet d'utiliser une condition SQF dynamique pour autoriser ou non les fonctions logistiques sur des clients sp�cifiques.
 * La variable doit �tre une CHAINE de caract�res d�limit�e par des guillemets et doit contenir une condition SQF valide qui sera �valu�e durant la mission.
 * Par exemple pour autoriser la logistique sur seulement quelques joueurs ayant un ID de jeu connu, la variable peut �tre d�fini comme suit :
 * "getPlayerUID player in [""76xxxxxxxxxxxxxxx"", ""76yyyyyyyyyyyyyyy"", ""76zzzzzzzzzzzzzzz""]"
 * Ou elle peut se baser sur le nom de profil : "profileName in [""maxime"", ""martin"", ""marc""]"
 * Ou pour n'autoriser que l'admin de serveur : "serverCommandAvailable "#kick"""
 * Les condition sont �valu�es en temps r�el, et peuvent donc d�pendre du d�roulement de la mission : "alive officier && taskState tache1 == ""Succeeded"""
 * Ou pour interdire la logistique dans la zone d�fini par un marqueur circulaire : "player distance getMarkerPos ""markerName"" > getMarkerSize ""markerName"" select 0"
 * Notez que les guillemets des cha�nes de caract�res dans la cha�ne de condition doivent �tre doubl�s.
 * Note : si la condition d�pend de l'objet/v�hicule point�, vous pouvez utiliser la commande cursorTarget
 * Pour autoriser la logistique chez tout le monde, il suffit de d�finir la condition � "true".
 */
R3F_LOG_CFG_string_condition_allow_logistics_on_this_client = "true";

/**
 * CONDITION TO ALLOW CREATION FACTORY
 * 
 * (EN)
 * This variable allow to set a dynamic SQF condition to allow/deny the access to the creation factory only on specific clients.
 * The variable must be a STRING delimited by quotes and containing a valid SQF condition to evaluate during the game.
 * For example you can allow the creation factory only on few clients having a known game ID by setting the variable to :
 * "getPlayerUID player in [""76xxxxxxxxxxxxxxx"", ""76yyyyyyyyyyyyyyy"", ""76zzzzzzzzzzzzzzz""]"
 * Or based on the profile name : "profileName in [""john"", ""jack"", ""james""]"
 * Or only for the server admin : "serverCommandAvailable "#kick"""
 * Note that quotes of the strings inside the string condition must be doubled.
 * Note : if the condition depends of the aimed objects/v�hicule, you can use the command cursorTarget
 * Note also that the condition is evaluted in real time, so it can use condition depending on the mission progress :
 * "alive officer && taskState task1 == ""Succeeded"""
 * To allow the creation factory to everyone, just set the condition to "true".
 * 
 * (FR)
 * Cette variable permet d'utiliser une condition SQF dynamique pour rendre accessible ou non l'usine de cr�ation sur des clients sp�cifiques.
 * La variable doit �tre une CHAINE de caract�res d�limit�e par des guillemets et doit contenir une condition SQF valide qui sera �valu�e durant la mission.
 * Par exemple pour autoriser l'usine de cr�ation sur seulement quelques joueurs ayant un ID de jeu connu, la variable peut �tre d�fini comme suit :
 * "getPlayerUID player in [""76xxxxxxxxxxxxxxx"", ""76yyyyyyyyyyyyyyy"", ""76zzzzzzzzzzzzzzz""]"
 * Ou elle peut se baser sur le nom de profil : "profileName in [""maxime"", ""martin"", ""marc""]"
 * Ou pour n'autoriser que l'admin de serveur : "serverCommandAvailable "#kick"""
 * Notez que les guillemets des cha�nes de caract�res dans la cha�ne de condition doivent �tre doubl�s.
 * Note : si la condition d�pend de l'objet/v�hicule point�, vous pouvez utiliser la commande cursorTarget
 * Notez aussi que les condition sont �valu�es en temps r�el, et peuvent donc d�pendre du d�roulement de la mission :
 * "alive officier && taskState tache1 == ""Succeeded"""
 * Pour autoriser l'usine de cr�ation chez tout le monde, il suffit de d�finir la condition � "true".
 */
R3F_LOG_CFG_string_condition_allow_creation_factory_on_this_client = "true";

/*
 ********************************************************************************************
 * BELOW IS THE CLASS NAMES CONFIGURATION / CI-DESSOUS LA CONFIGURATION DES NOMS DE CLASSES *
 ********************************************************************************************
 * 
 * (EN)
 * There are two ways to manage new objects with the logistics system. The first one is to add these objects in the
 * following appropriate lists. The second one is to create a new external file in the /addons_config/ directory,
 * based on /addons_config/TEMPLATE.sqf, and to add a #include below to.
 * The first method is better to add/fix only some various class names.
 * The second method is better to take into account an additional addon.
 * 
 * These variables are based on the inheritance principle according to the CfgVehicles tree.
 * It means that a features accorded to a class name, is also accorded to all child classes.
 * Inheritance tree view : http://madbull.arma.free.fr/A3_1.32_CfgVehicles_tree.html
 * 
 * (FR)
 * Deux moyens existent pour g�rer de nouveaux objets avec le syst�me logistique. Le premier consiste � ajouter
 * ces objets dans les listes appropri�es ci-dessous. Le deuxi�me est de cr�er un fichier externe dans le r�pertoire
 * /addons_config/ bas� sur /addons_config/TEMPLATE.sqf, et d'ajouter un #include ci-dessous.
 * La premi�re m�thode est pr�f�rable lorsqu'il s'agit d'ajouter ou corriger quelques classes diverses.
 * La deuxi�me m�thode est pr�f�rable s'il s'agit de prendre en compte le contenu d'un addon suppl�mentaire.
 * 
 * Ces variables sont bas�es sur le principe d'h�ritage utilis�s dans l'arborescence du CfgVehicles.
 * Cela signifie qu'une fonctionnalit� accord�e � une classe, le sera aussi pour toutes ses classes filles.
 * Vue de l'arborescence d'h�ritage : http://madbull.arma.free.fr/A3_1.32_CfgVehicles_tree.html
 */

/****** LIST OF ADDONS CONFIG TO INCLUDE / LISTE DES CONFIG D'ADDONS A INCLURE ******/
#include "addons_config\A3_vanilla.sqf"
#include "addons_config\All_in_Arma.sqf"
#include "addons_config\R3F_addons.sqf"
//#include "addons_config\YOUR_ADDITIONAL_ADDON.sqf"

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of ground vehicles which can tow objects.
 * Liste des noms de classes des v�hicules terrestres pouvant remorquer des objets.
 */
R3F_LOG_CFG_can_tow = R3F_LOG_CFG_can_tow +
[
	"B_Truck_01_mover_F"
	// e.g. : "MyTowingVehicleClassName1", "MyTowingVehicleClassName2"
	
	
];

/**
 * List of class names of objects which can be towed.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_can_be_towed = R3F_LOG_CFG_can_be_towed +
[
	"O_MBT_02_cannon_F", "B_MBT_01_cannon_F",
	"B_MRAP_01_hmg_F", "B_MRAP_01_F",
	"B_Truck_01_ammo_F", "B_Truck_01_medical_F",
	"B_MRAP_01_hmg_F",
	"I_MRAP_03_F", "B_G_Offroad_01_armed_F",
	"B_G_Offroad_01_F", 
	"B_APC_Wheeled_01_cannon_F", "I_APC_tracked_03_cannon_F",
	"B_Truck_01_fuel_F", "B_Truck_01_Repair_F",
	"I_APC_Wheeled_03_cannon_F", 
	"I_MBT_03_cannon_F", "B_MBT_01_TUSK_F",
	"B_Truck_01_box_F","Land_Cargo40_sand_F", "Land_Cargo20_sand_F",
	"Land_Cargo10_sand_F", "B_Truck_01_covered_F",
	"B_Truck_01_medical_F", "B_Truck_01_fuel_F",
	"B_Truck_01_Repair_F", "B_Truck_01_transport_F",
	"B_G_Offroad_01_armed_F", "B_UGV_01_rcws_F",
	"Land_CargoBox_V1_F", "O_Truck_03_transport_F",
	"B_LSV_01_unarmed_F", "B_LSV_01_armed_F" , 
	"B_Heli_Transport_01_F", "I_Heli_light_03_unarmed_F",
	"I_Heli_Transport_02_F", "O_Heli_Light_02_unarmed_F",
	"B_Heli_Transport_03_unarmed_F", "O_Heli_Transport_04_covered_F",
	"C_Heli_Light_01_civil_F", "B_Heli_Transport_03_F",
	"O_Heli_Attack_02_black_F","B_T_VTOL_01_infantry_F",
	"B_Plane_CAS_01_F", "I_Plane_Fighter_03_AA_F",
	"B_Boat_Armed_01_minigun_F", "C_Scooter_Transport_01_F",
	"B_Boat_Transport_01_F", "C_Boat_Civil_01_rescue_F",
	"B_APC_Tracked_01_rcws_F","I_MRAP_03_hmg_F",
	"I_MRAP_03_gmg_F","O_MBT_04_cannon_F","O_MBT_04_command_F",
	"I_LT_01_AA_F","I_LT_01_AT_F","I_LT_01_cannon_F","I_LT_01_scout_F",
	"B_Radar_System_01_F","B_SAM_System_03_F","B_APC_Tracked_01_AA_F",
	"O_Heli_Transport_04_F","B_CTRG_Heli_Transport_01_tropic_F",
	"I_Heli_light_03_dynamicLoadout_F","O_Heli_Light_02_dynamicLoadout_F",
	"I_Plane_Fighter_03_dynamicLoadout_F","B_Slingload_01_Fuel_F",
	"CUP_B_M113_USA",
	"CUP_B_M60A3_USMC", "CUP_B_M60A3_TTS_USMC",
	"CUP_B_LAV25_USMC", "CUP_B_LAV25_desert_USMC", "CUP_B_LAV25M240_USMC", "CUP_B_LAV25M240_desert_USMC", "CUP_B_LAV25M240_green", "CUP_B_LAV25_green",
	"CUP_B_LAV25_HQ_USMC", "CUP_B_LAV25_HQ_desert_USMC", "CUP_B_LAV25_HQ_green",
	"CUP_B_M1130_CV_M2_Desert_Slat", "CUP_B_M1130_CV_M2_Desert", "CUP_B_M1130_CV_M2_Woodland_Slat", "CUP_B_M1130_CV_M2_Woodland",
	"CUP_B_M1128_MGS_Desert_Slat", "CUP_B_M1128_MGS_Desert", "CUP_B_M1128_MGS_Woodland_Slat", "CUP_B_M1128_MGS_Woodland",
	"CUP_B_M1167_NATO_T", "CUP_B_M1167_USA", "CUP_B_M1167_WDL_USA", "CUP_B_M1167_USMC", "CUP_B_M1167_DSRT_USMC",
	"CUP_B_Mastiff_HMG_GB_D", "CUP_B_Mastiff_HMG_GB_W",
	"CUP_B_Wolfhound_HMG_GB_D", "CUP_B_Wolfhound_HMG_GB_W",
	"CUP_B_M1165_GMV_NATO_T", "CUP_B_M1165_GMV_USA", "CUP_B_M1165_GMV_WDL_USA", "CUP_B_M1165_GMV_USMC", "CUP_B_M1165_GMV_DSRT_USMC",
	"RHS_M2A3_BUSKIII", "RHS_M2A3_BUSKIII_wd",
	"rhsusf_m1a2sep1tuskiid_usarmy", "rhsusf_m1a2sep1tuskiiwd_usarmy",
	"rhs_btr80_msv", "rhs_btr80a_msv", "rhs_btr80_vdv", "rhs_btr80a_vdv", "rhs_btr80_vmf", "rhs_btr80a_vmf", "rhs_btr80_vv", "rhs_btr80a_vv",
	"rhsusf_M1230_M2_usarmy_d", "rhsusf_M1230_MK19_usarmy_d", "rhsusf_M1230a1_usarmy_d", "rhsusf_M1230_M2_usarmy_wd", "rhsusf_M1230_MK19_usarmy_wd", "rhsusf_M1230a1_usarmy_wd",
	"rhsusf_mkvsoc", "CUP_B_MK10_GB",
	"HTNK_Nato", "HTNK_Nato_Pacific", "HTNK_us_woodland", "HTNK_us_desert", "HTNK_us_snow", "HTNK_Gdi", "HTNK_Green",
	"RHS_M6", "RHS_M6_wd",
	"CUP_B_RG31_MK19_USA", "CUP_B_RG31E_M2_USA", "CUP_B_RG31_M2_USA", "CUP_B_RG31_M2_GC_USA",
	"CUP_B_RG31_MK19_OD_USA", "CUP_B_RG31E_M2_OD_USA", "CUP_B_RG31_M2_OD_USA", "CUP_B_RG31_M2_OD_GC_USA",
	"CUP_B_RG31_MK19_OD_USMC",  "CUP_B_RG31E_M2_OD_USMC", "CUP_B_RG31_M2_OD_USMC", "CUP_B_RG31_M2_OD_GC_USMC",
	"CUP_B_RG31_MK19_USMC", "CUP_B_RG31E_M2_USMC", "CUP_B_RG31_M2_USMC", "CUP_B_RG31_M2_GC_USMC"

];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of helicopters which can lift objects.
 * Liste des noms de classes des h�licopt�res pouvant h�liporter des objets.
 */
R3F_LOG_CFG_can_lift = R3F_LOG_CFG_can_lift +
[
	"B_Heli_Transport_01_F", "I_Heli_light_03_unarmed_F",
	"I_Heli_Transport_02_F", "O_Heli_Light_02_unarmed_F",
	"B_Heli_Transport_03_unarmed_F", "O_Heli_Transport_04_covered_F",
	"C_Heli_Light_01_civil_F", "B_Heli_Transport_03_F",
	"O_Heli_Attack_02_black_F","B_T_VTOL_01_infantry_F",
	"O_Heli_Transport_04_F","B_CTRG_Heli_Transport_01_tropic_F",
	"I_Heli_light_03_dynamicLoadout_F","O_Heli_Light_02_dynamicLoadout_F",
	"CUP_B_CH47F_USA", "CUP_B_CH47F_VIV_USA",
	"CUP_B_CH53E_USMC", "CUP_B_CH53E_VIV_USMC", "CUP_B_CH53E_GER", "CUP_B_CH53E_VIV_GER",
	"CUP_B_AW159_RN_Blackcat", "CUP_B_AW159_Unarmed_RN_Blackcat", "CUP_B_AW159_GB", "CUP_B_AW159_Unarmed_GB", "CUP_B_AW159_RN_Grey", "CUP_B_AW159_Unarmed_RN_Grey",
	"CUP_B_MH47E_USA",
	"CUP_B_MH60L_DAP_2x_USN", "CUP_B_MH60L_DAP_4x_USN",
	"CUP_B_MH6M_USA",
	"CUP_B_UH1Y_Gunship_Dynamic_USMC", "CUP_B_UH1Y_MEV_USMC", "CUP_B_UH1Y_UNA_USMC",
	"CUP_B_UH60M_US", "CUP_B_UH60M_FFV_US", "CUP_B_UH60M_Unarmed_FFV_US", "CUP_B_UH60M_Unarmed_FFV_MEV_US",
	"CUP_O_MI6T_RU", "CUP_O_MI6T_CHDKZ", "CUP_O_MI6T_CSAT_T", "CUP_O_MI6T_SLA", "CUP_O_MI6T_TKA",
	"CUP_O_Mi8AMT_RU", "CUP_O_Mi8_VIV_RU", "CUP_O_Mi8_medevac_RU", "CUP_O_Mi8_RU",
	"CUP_O_Mi24_P_Dynamic_RU", "CUP_O_Mi24_V_Dynamic_RU", "CUP_O_Mi24_D_Dynamic_SLA", "CUP_O_Mi24_Dynamic_TK", "CUP_O_Mi24_Mk3_CSAT_T", "CUP_O_Mi24_Mk4_CSAT_T", "CUP_O_Mi24_D_Dynamic_CSAT_T", "CUP_O_Mi24_P_Dynamic_CSAT_T", "CUP_O_Mi24_V_Dynamic_CSAT_T",
	"RHS_MELB_MH6M",
	"RHS_UH60M_d", "RHS_UH60M_ESSS_d", "RHS_UH60M_ESSS2_d", "RHS_UH60M2_d", "RHS_UH60M_MEV2_d", "RHS_UH60M_MEV_d",
	"RHS_UH60M", "RHS_UH60M_ESSS", "RHS_UH60M2", "RHS_UH60M_MEV2", "RHS_UH60M_MEV",
	"RHS_CH_47F_10", "RHS_CH_47F_10_cargo", "RHS_CH_47F_light", "RHS_CH_47F", "RHS_CH_47F_cargo",
	"rhsgref_cdf_b_reg_Mi8amt", "rhsgref_cdf_b_reg_Mi17Sh", "RHS_Mi8AMT_vdv", "RHS_Mi8mt_vdv", "RHS_Mi8mt_Cargo_vdv", "RHS_Mi8MTV3_vdv", "RHS_Mi8mtv3_Cargo_vdv", "RHS_Mi8MTV3_heavy_vdv", "RHS_Mi8T_vdv", "RHS_Mi8mt_vv", "RHS_Mi8mt_Cargo_vv",
	"RHS_Mi8_vv", "RHS_Mi8AMT_vvsc", "RHS_Mi8AMTSh_vvsc", "RHS_Mi8mt_vvsc", "RHS_Mi8mt_Cargo_vvsc", "RHS_Mi8MTV3_vvsc",
	"RHS_Mi8mtv3_Cargo_vvsc", "RHS_Mi8MTV3_heavy_vvsc", "RHS_Mi8T_vvsc", "RHS_Mi8AMT_vvs", "RHS_Mi8AMTSh_vvs", "RHS_Mi8mt_vvs", "RHS_Mi8mt_Cargo_vvs", "RHS_Mi8MTV3_vvs", "RHS_Mi8mtv3_Cargo_vvs", "RHS_Mi8MTV3_heavy_vvs", "RHS_Mi8T_vvs", "rhsgref_cdf_reg_Mi8amt", "rhsgref_cdf_reg_Mi17Sh", "rhsgref_un_Mi8amt", "rhsgref_ins_g_Mi8amt", "RHS_Mi8amt_civilian", "RHS_Mi8t_civilian",
	"RHS_Mi24P_vdv", "RHS_Mi24V_vdv", "RHS_Mi24P_vvsc", "RHS_Mi24V_vvsc", "RHS_Mi24Vt_vvsc", "RHS_Mi24P_vvs", "RHS_Mi24_vvs", "RHS_Mi24Vt_vvs",
	"CUP_B_MH60S_USMC", "CUP_B_MH60S_FFV_USMC", "CUP_B_UH60S_USN",
	"CUP_B_MV22_USMC", "CUP_B_MV22_USMC_RAMPGUN", "CUP_B_MV22_VIV_USMC",
	"O_T_VTOL_02_infantry_dynamicLoadout_F", "O_T_VTOL_02_vehicle_dynamicLoadout_F",
	"B_T_VTOL_01_armed_F", "B_T_VTOL_01_infantry_F", "B_T_VTOL_01_vehicle_F",
	"B_BLUFCTRGT_V44X_Blackfish_Armed", "B_BLUFCTRGT_V44X_Blackfish_Infantry_Transport", "B_BLUFCTRGT_V44X_Blackfish_Vehicle_Transport",
	"B_BLUFCTRG_V44X_Blackfish_Armed", "B_BLUFCTRG_V44X_Blackfish_Infantry_Transport", "B_BLUFCTRG_V44X_Blackfish_Vehicle_Transport"
	
];

/**
 * List of class names of objects which can be lifted.
 * Liste des noms de classes des objets h�liportables.
 */
R3F_LOG_CFG_can_be_lifted = R3F_LOG_CFG_can_be_lifted +
[
	"I_LT_01_AT_F","I_LT_01_AA_F","I_LT_01_scout_F","I_LT_01_cannon_F",
	"I_MRAP_03_hmg_F","I_MRAP_03_gmg_F","I_MRAP_03_F",
	"B_G_Offroad_01_F","B_G_Offroad_01_F","B_G_Offroad_01_armed_F",
	"B_G_Offroad_01_repair_F","B_GEN_Offroad_01_gen_F",
	"B_MBT_01_TUSK_F","B_SAM_System_03_F",
	"O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_LSV_02_AT_F",
	"B_LSV_01_unarmed_F","B_LSV_01_armed_F","B_LSV_01_armed_F","B_CTRG_LSV_01_light_F",
	"B_AFV_Wheeled_01_up_cannon_F","B_AFV_Wheeled_01_cannon_F",
	"B_G_Van_02_vehicle_F","B_GEN_Van_02_transport_F","B_G_Van_02_transport_F",
	"B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
	"B_UGV_01_F","B_UGV_01_rcws_F",
	"B_APC_Tracked_01_AA_F","B_APC_Tracked_01_rcws_F",
	"I_MBT_03_cannon_F","Land_Pod_Heli_Transport_04_covered_F",
	"I_APC_tracked_03_cannon_F","Land_Pod_Heli_Transport_04_ammo_F",
	"I_APC_Wheeled_03_cannon_F",
	"B_Truck_01_fuel_F","B_Truck_01_ammo_F","B_Truck_01_transport_F",
	"B_Truck_01_box_F",
	"B_Truck_01_medical_F","B_Truck_01_Repair_F",
	"B_Boat_Armed_01_minigun_F",
	"B_Lifeboat","B_Boat_Transport_01_F","B_APC_Wheeled_01_cannon_F",
	"O_MBT_04_cannon_F","O_MBT_04_command_F","Land_Pod_Heli_Transport_04_bench_F",
	"B_Slingload_01_Fuel_F","B_MBT_01_cannon_F","B_APC_Tracked_01_AA_F",
	"CUP_B_M113_USA",
	"CUP_B_M60A3_USMC", "CUP_B_M60A3_TTS_USMC",
	"CUP_B_LAV25_USMC", "CUP_B_LAV25_desert_USMC", "CUP_B_LAV25M240_USMC", "CUP_B_LAV25M240_desert_USMC", "CUP_B_LAV25M240_green", "CUP_B_LAV25_green",
	"CUP_B_LAV25_HQ_USMC", "CUP_B_LAV25_HQ_desert_USMC", "CUP_B_LAV25_HQ_green",
	"CUP_B_M1130_CV_M2_Desert_Slat", "CUP_B_M1130_CV_M2_Desert", "CUP_B_M1130_CV_M2_Woodland_Slat", "CUP_B_M1130_CV_M2_Woodland",
	"CUP_B_M1128_MGS_Desert_Slat", "CUP_B_M1128_MGS_Desert", "CUP_B_M1128_MGS_Woodland_Slat", "CUP_B_M1128_MGS_Woodland",
	"CUP_B_M1167_NATO_T", "CUP_B_M1167_USA", "CUP_B_M1167_WDL_USA", "CUP_B_M1167_USMC", "CUP_B_M1167_DSRT_USMC",
	"CUP_B_Mastiff_HMG_GB_D", "CUP_B_Mastiff_HMG_GB_W",
	"CUP_B_Wolfhound_HMG_GB_D", "CUP_B_Wolfhound_HMG_GB_W",
	"CUP_B_M1165_GMV_NATO_T", "CUP_B_M1165_GMV_USA", "CUP_B_M1165_GMV_WDL_USA", "CUP_B_M1165_GMV_USMC", "CUP_B_M1165_GMV_DSRT_USMC",
	"RHS_M2A3_BUSKIII", "RHS_M2A3_BUSKIII_wd",
	"rhsusf_m1a2sep1tuskiid_usarmy", "rhsusf_m1a2sep1tuskiiwd_usarmy",
	"rhs_btr80_msv", "rhs_btr80a_msv", "rhs_btr80_vdv", "rhs_btr80a_vdv", "rhs_btr80_vmf", "rhs_btr80a_vmf", "rhs_btr80_vv", "rhs_btr80a_vv",
	"rhsusf_M1230_M2_usarmy_d", "rhsusf_M1230_MK19_usarmy_d", "rhsusf_M1230a1_usarmy_d", "rhsusf_M1230_M2_usarmy_wd", "rhsusf_M1230_MK19_usarmy_wd", "rhsusf_M1230a1_usarmy_wd",
	"rhsusf_mkvsoc", "CUP_B_MK10_GB",
	"HTNK_Nato", "HTNK_Nato_Pacific", "HTNK_us_woodland", "HTNK_us_desert", "HTNK_us_snow", "HTNK_Gdi", "HTNK_Green",
	"RHS_M6", "RHS_M6_wd", "CUP_B_Frigate_ANZAC",
	"B_APC_Tracked_01_CRV_F", "rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd", "rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd", 
	"rhsusf_M978A4_BKIT_M2_usarmy_wd", "CUP_B_MTVR_Repair_USMC", "CUP_B_MTVR_Ammo_USMC",
	"CUP_B_MTVR_Refuel_USMC", "CUP_O_Ural_Repair_RU", "CUP_O_Ural_Refuel_RU", "CUP_O_Ural_Reammo_RU",
	"CUP_B_RG31_MK19_USA", "CUP_B_RG31E_M2_USA", "CUP_B_RG31_M2_USA", "CUP_B_RG31_M2_GC_USA",
	"CUP_B_RG31_MK19_OD_USA", "CUP_B_RG31E_M2_OD_USA", "CUP_B_RG31_M2_OD_USA", "CUP_B_RG31_M2_OD_GC_USA",
	"CUP_B_RG31_MK19_OD_USMC",  "CUP_B_RG31E_M2_OD_USMC", "CUP_B_RG31_M2_OD_USMC", "CUP_B_RG31_M2_OD_GC_USMC",
	"CUP_B_RG31_MK19_USMC", "CUP_B_RG31E_M2_USMC", "CUP_B_RG31_M2_USMC", "CUP_B_RG31_M2_GC_USMC"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
* (EN)
 * This section uses a numeric quantification of capacity and cost of the objets.
 * For example, in a vehicle has a capacity of 100, we will be able to load in 5 objects costing 20 capacity units.
 * The capacity doesn't represent a real volume or weight, but a choice made for gameplay.
 * 
 * (FR)
 * Cette section utilise une quantification num�rique de la capacit� et du co�t des objets.
 * Par exemple, dans un v�hicule d'une capacit� de 100, nous pouvons charger 5 objets co�tant 20 unit�s de capacit�.
 * La capacit� ne repr�sente ni un poids, ni un volume, mais un choix fait pour la jouabilit�.
 */

/**
 * List of class names of vehicles or cargo objects which can transport objects.
 * The second element of the nested arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * Liste des noms de classes des v�hicules ou "objets contenant" pouvant transporter des objets.
 * Le deuxi�me �l�ment des sous-tableaux est la capacit� de chargement (en relation avec le co�t de capacit� des objets).
 */
R3F_LOG_CFG_can_transport_cargo = R3F_LOG_CFG_can_transport_cargo +
[
	// e.g. : ["MyTransporterClassName1", itsCapacity], ["MyTransporterClassName2", itsCapacity]
];

/**
 * List of class names of objects which can be loaded in transport vehicle/cargo.
 * The second element of the nested arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * Liste des noms de classes des objets transportables.
 * Le deuxi�me �l�ment des sous-tableaux est le co�t de capacit� (en relation avec la capacit� des v�hicules).
 */
R3F_LOG_CFG_can_be_transported_cargo = R3F_LOG_CFG_can_be_transported_cargo +
[
	// e.g. : ["MyTransportableObjectClassName1", itsCost], ["MyTransportableObjectClassName2", itsCost]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects which can be carried and moved by a player.
 * Liste des noms de classes des objets qui peuvent �tre port�s et d�plac�s par le joueur.
 */
R3F_LOG_CFG_can_be_moved_by_player = R3F_LOG_CFG_can_be_moved_by_player +
[
	// e.g. : "MyMovableObjectClassName1", "MyMovableObjectClassName2"
];