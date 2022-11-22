// initPlayerLocal.sqf
// Executes on a client machine when they load the mission, regardless of if it's at mission start or JIP.
// _this = [player:Object, didJIP:Boolean]
params ["_player", "_jip"];

// Call the template initPlayerLocal function
_this call XPT_fnc_initPlayerLocal; // DO NOT CHANGE THIS LINE

// Add any mission specific code after this point
[
	laptop,
	"Hack Laptop",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"_this distance _target < 3 && !('task_hacklaptop' call BIS_fnc_taskCompleted)",
	"_caller distance _target < 3 && !('task_hacklaptop' call BIS_fnc_taskCompleted)",
	{},
	{},
	{["task_hacklaptop", "SUCCEEDED"] call BIS_fnc_taskSetState},
	{},
	[],
	12,
	0,
	false,
	false
] call BIS_fnc_holdActionAdd;


// Uncomment the line below to use briefing.sqf for mission briefings. Un-needed if you're using XPTBriefings.hpp
[] execVM "scripts\briefing.sqf";