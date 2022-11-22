// initPlayerServer.sqf
// Runs once on the server for each player that joins the game.
// This will run multiple times at mission start if multiple players are present
// _this = [player:Object, didJIP:Boolean]
params ["_player", "_jip"];

// Call the template initPlayerServer function
_this call XPT_fnc_initPlayerServer; // DO NOT CHANGE THIS LINE

// Add any mission specific code after this point
Null = [ wmd1, "Inspect Object", "128gb of porn: WMD Found", 5 ] execVM "SparkAdditionals\Spark_Spectrum_HoldAction.sqf";
Null = [ wmd2, "Inspect Object", "Jeff, don't ask what he did: WMD Found", 5 ] execVM "SparkAdditionals\Spark_Spectrum_HoldAction.sqf";
Null = [ wmd3, "Inspect Object", "Werid ass arrow: WMD Found", 5 ] execVM "SparkAdditionals\Spark_Spectrum_HoldAction.sqf";
Null = [ wmd4, "Inspect Object", "Dog UGV stealing a mans soul: WMD Found", 5 ] execVM "SparkAdditionals\Spark_Spectrum_HoldAction.sqf";
Null = [ wmd5, "Inspect Object", "morpheus drinking a 40 in the death basket: WMD Found", 5 ] execVM "SparkAdditionals\Spark_Spectrum_HoldAction.sqf";
Null = [ wmd6, "Inspect Object: Get a photo op with it", "3x B 83 Thermonuclear Bomb : Oh shit run!!! 5 mins to run", 30 ] execVM "SparkAdditionals\Spark_Spectrum_HoldAction.sqf";