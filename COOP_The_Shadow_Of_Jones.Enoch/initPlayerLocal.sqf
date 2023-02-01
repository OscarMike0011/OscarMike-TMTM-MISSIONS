// initPlayerLocal.sqf
// Executes on a client machine when they load the mission, regardless of if it's at mission start or JIP.
// _this = [player:Object, didJIP:Boolean]
params ["_player", "_jip"];

// Call the template initPlayerLocal function
_this call XPT_fnc_initPlayerLocal; // DO NOT CHANGE THIS LINE

// Add any mission specific code after this point

// Comment this line if you're looking to use a different method to set up briefings
[] execVM "scripts\briefing.sqf";
[
	intel,
	"Pick up intel",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"_this distance _target < 3 && !('root' call BIS_fnc_taskCompleted)",
	"_caller distance _target < 3 && !('root' call BIS_fnc_taskCompleted)",
	{},
	{},
	{["root", "SUCCEEDED"] call BIS_fnc_taskSetState;
		[
		[true,"zeus_1","zeus_2", "zeus_3"],
		"looters1",
		["Search for intel", "Investigate The Looter Site #2", "marker"],
		[8925.32,2049.56,0] ,
		"CREATED",
		10,
		true,
		"search",
		true
		] call BIS_fnc_taskCreate;

		[
		[true,"zeus_1","zeus_2", "zeus_3"],
		"looters2",
		["Search for intel", "Investigate The Looter Site #1", "marker"],
		[7937,3925.02,0] ,
		"CREATED",
		10,
		true,
		"search",
		true
		] call BIS_fnc_taskCreate;},
	{},
	[],
	3,
	0,
	false,
	false
] call BIS_fnc_holdActionAdd;

//map_1

[
	map_1,
	"Copy map",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"_this distance _target < 3 && !('looters1' call BIS_fnc_taskCompleted)",
	"_caller distance _target < 3 && !('looters1' call BIS_fnc_taskCompleted)",
	{},
	{},
	{["looters1", "SUCCEEDED"] call BIS_fnc_taskSetState;
		if(
		("looters2" call BIS_fnc_taskExists) && ("looters2" call BIS_fnc_taskCompleted)
		) then{[
	[true,"zeus_1","zeus_2", "zeus_3"],
	"gieratlow",
	["clear it out", "Clear Gieratlow", "marker"],
	[11352.2,4389.46,0] ,
	"CREATED",
	10,
	true,
	"attack",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["GIR_1","gieratlow"],
	["use your c4", "Destroy the Idol #1", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["GIR_2","gieratlow"],
	["use your c4", "Destroy the Idol #2", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;

[
	[true,"zeus_1","zeus_2", "zeus_3"],
	"power",
	["Clear it", "Clear the Power Plant", "marker"],
	[11543.2,7064.4,0] ,
	"CREATED",
	10,
	true,
	"attack",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["POW_1","power"],
	["use your c4", "Destroy the Idol #1", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["POW_2","power"],
	["use your c4", "Destroy the Idol #2", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;

[
	[true,"zeus_1","zeus_2", "zeus_3"],
	"sitnik",
	["Clear it", "Clear Sitnik", "marker"],
	[11484.6,9517.97,0] ,
	"CREATED",
	10,
	true,
	"attack",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["SIT_1","sitnik"],
	["use your c4", "Destroy the Idol #1", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["SIT_2","sitnik"],
	["use your c4", "Destroy the Idol #2", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;


[
	[true,"zeus_1","zeus_2", "zeus_3"],
	"grabin",
	["Clear it", "Clear Grabin", "marker"],
	[10684.3,10983.1,0],
	"CREATED",
	10,
	true,
	"attack",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["GRA_1","grabin"],
	["use your c4", "Destroy the Idol #1", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["GRA_2","grabin"],
	["use your c4", "Destroy the Idol #2", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;};
		},
	{},
	[],
	3,
	0,
	false,
	false
] call BIS_fnc_holdActionAdd;

//map_2

[
	map_2,
	"Copy map",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"_this distance _target < 3 && !('looters2' call BIS_fnc_taskCompleted)",
	"_caller distance _target < 3 && !('looters2' call BIS_fnc_taskCompleted)",
	{},
	{},
	{["looters2", "SUCCEEDED"] call BIS_fnc_taskSetState;
		if(
		("looters1" call BIS_fnc_taskExists) && ("looters1" call BIS_fnc_taskCompleted)
		) then{[
	[true,"zeus_1","zeus_2", "zeus_3"],
	"gieratlow",
	["clear it out", "Clear Gieratlow", "marker"],
	[11352.2,4389.46,0] ,
	"CREATED",
	10,
	true,
	"attack",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["GIR_1","gieratlow"],
	["use your c4", "Destroy the Idol #1", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["GIR_2","gieratlow"],
	["use your c4", "Destroy the Idol #2", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;

[
	[true,"zeus_1","zeus_2", "zeus_3"],
	"power",
	["Clear it", "Clear the Power Plant", "marker"],
	[11543.2,7064.4,0] ,
	"CREATED",
	10,
	true,
	"attack",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["POW_1","power"],
	["use your c4", "Destroy the Idol #1", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["POW_2","power"],
	["use your c4", "Destroy the Idol #2", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;

[
	[true,"zeus_1","zeus_2", "zeus_3"],
	"sitnik",
	["Clear it", "Clear Sitnik", "marker"],
	[11484.6,9517.97,0] ,
	"CREATED",
	10,
	true,
	"attack",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["SIT_1","sitnik"],
	["use your c4", "Destroy the Idol #1", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["SIT_2","sitnik"],
	["use your c4", "Destroy the Idol #2", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;


[
	[true,"zeus_1","zeus_2", "zeus_3"],
	"grabin",
	["Clear it", "Clear Grabin", "marker"],
	[10684.3,10983.1,0],
	"CREATED",
	10,
	true,
	"attack",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["GRA_1","grabin"],
	["use your c4", "Destroy the Idol #1", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;
[
	[true,"zeus_1","zeus_2", "zeus_3"],
	["GRA_2","grabin"],
	["use your c4", "Destroy the Idol #2", "marker"],
	[ObjNull] ,
	"CREATED",
	10,
	false,
	"destroy",
	true
] call BIS_fnc_taskCreate;};
		},
	{},
	[],
	3,
	0,
	false,
	false
] call BIS_fnc_holdActionAdd;