// initPlayerLocal.sqf
// Executes on a client machine when they load the mission, regardless of if it's at mission start or JIP.
// _this = [player:Object, didJIP:Boolean]
params ["_player", "_jip"];

// Call the template initPlayerLocal function
_this call XPT_fnc_initPlayerLocal; // DO NOT CHANGE THIS LINE

// Add any mission specific code after this point

// Uncomment the line below to use briefing.sqf for mission briefings. Un-needed if you're using XPTBriefings.hpp
[] execVM "scripts\briefing.sqf";
Null = [[ [ B1, 510 ], [ B2, 835 ], [ B3, 572 ], [ B4, 690 ], [ B5, 730 ], [ B6, 810 ] ]]  execVM "SparkAdditionals\Spark_Spectrum_B.sqf";
Null = []  execVM "SparkAdditionals\Spark_Spectrum_A.sqf";
Null = [ B1, "Deactivate Radio", "Radio has been deactivate", 5 ] execVM "SparkAdditionals\Spark_Spectrum_HoldAction.sqf";
Null = [ B2, "Deactivate Radio", "Radio has been deactivate", 5 ] execVM "SparkAdditionals\Spark_Spectrum_HoldAction.sqf";
Null = [ B3, "Deactivate Radio", "Radio has been deactivate", 5 ] execVM "SparkAdditionals\Spark_Spectrum_HoldAction.sqf";
Null = [ B4, "Deactivate Radio", "Radio has been deactivate", 5 ] execVM "SparkAdditionals\Spark_Spectrum_HoldAction.sqf";
Null = [ B5, "Deactivate Radio", "Radio has been deactivate", 5 ] execVM "SparkAdditionals\Spark_Spectrum_HoldAction.sqf";
Null = [ B6, "Deactivate Radio", "Radio has been deactivate", 5 ] execVM "SparkAdditionals\Spark_Spectrum_HoldAction.sqf";
