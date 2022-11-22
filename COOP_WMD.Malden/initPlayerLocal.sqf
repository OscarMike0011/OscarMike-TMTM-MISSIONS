// initPlayerLocal.sqf
// Executes on a client machine when they load the mission, regardless of if it's at mission start or JIP.
// _this = [player:Object, didJIP:Boolean]
params ["_player", "_jip"];

// Call the template initPlayerLocal function
_this call XPT_fnc_initPlayerLocal; // DO NOT CHANGE THIS LINE

// Add any mission specific code after this point

// Uncomment the line below to use briefing.sqf for mission briefings. Un-needed if you're using XPTBriefings.hpp
[] execVM "scripts\briefing.sqf";
Null = [[ [ wmd1, 672], [ wmd2, 835 ], [ wmd3, 572 ], [ wmd4, 690 ], [ wmd5, 730], [ wmd6, 810] ]]  execVM "SparkAdditionals\Spark_Spectrum_B.sqf";
Null = []  execVM "SparkAdditionals\Spark_Spectrum_A.sqf";


