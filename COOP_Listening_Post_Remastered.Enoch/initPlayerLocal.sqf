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
	laptop1,
	"Hack Laptop",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"_this distance _target < 3 && !('radio1' call BIS_fnc_taskCompleted)",
	"_caller distance _target < 3 && !('radio1' call BIS_fnc_taskCompleted)",
	{},
	{},
	{["radio1", "SUCCEEDED"] call BIS_fnc_taskSetState;
if ( 
 ("radio1" call BIS_fnc_taskCompleted) &&  
 ("radio2" call BIS_fnc_taskCompleted) && 
 ("radio3" call BIS_fnc_taskCompleted) &&  
 ("radio4" call BIS_fnc_taskCompleted)  
 ) then { 
  ["radios", "SUCCEEDED"] call BIS_fnc_taskSetState;
 [   
 [true, "zeus_1", "zeus_2", "zeus_3"],   
 "stronghold",   
 ["Kill all of the nutt jobs", "Attack Nadbor", "marker"],   
 [ObjNull],   
 "CREATED",   
 10,   
 true,   
 "attack",   
 true   
] call BIS_fnc_taskCreate;  
[   
 [true, "zeus_1", "zeus_2", "zeus_3"],   
 ["kill", "stronghold"],   
 ["Kill all of the nutt jobs", "Take Control Of Nadbor", "marker"],   
 [6116.07,4139.11,0],   
 "CREATED",   
 10,   
 true,   
 "kill",   
 true   
] call BIS_fnc_taskCreate;  
[   
 [true, "zeus_1", "zeus_2", "zeus_3"],   
 ["ammo", "stronghold"],   
 ["Blow it up", "Destroy Ammo Dump", "marker"],   
 [6366.71,3823.54,0],   
 "CREATED",   
 10,   
 true,   
 "destroy",   
 true   
] call BIS_fnc_taskCreate;  
 }; },
	{},
	[],
	12,
	0,
	false,
	false
] call BIS_fnc_holdActionAdd;
[
	laptop2,
	"Hack Laptop",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"_this distance _target < 3 && !('radio2' call BIS_fnc_taskCompleted)",
	"_caller distance _target < 3 && !('radio2' call BIS_fnc_taskCompleted)",
	{},
	{},
	{["radio2", "SUCCEEDED"] call BIS_fnc_taskSetState;
if ( 
 ("radio1" call BIS_fnc_taskCompleted) &&  
 ("radio2" call BIS_fnc_taskCompleted) && 
 ("radio3" call BIS_fnc_taskCompleted) &&  
 ("radio4" call BIS_fnc_taskCompleted)  
 ) then { 
  ["radios", "SUCCEEDED"] call BIS_fnc_taskSetState;
 [   
 [true, "zeus_1", "zeus_2", "zeus_3"],   
 "stronghold",   
 ["Kill all of the nutt jobs", "Attack Nadbor", "marker"],   
 [ObjNull],   
 "CREATED",   
 10,   
 true,   
 "attack",   
 true   
] call BIS_fnc_taskCreate;  
[   
 [true, "zeus_1", "zeus_2", "zeus_3"],   
 ["kill", "stronghold"],   
 ["Kill all of the nutt jobs", "Take Control Of Nadbor", "marker"],   
 [6116.07,4139.11,0],   
 "CREATED",   
 10,   
 true,   
 "kill",   
 true   
] call BIS_fnc_taskCreate;  
[   
 [true, "zeus_1", "zeus_2", "zeus_3"],   
 ["ammo", "stronghold"],   
 ["Blow it up", "Destroy Ammo Dump", "marker"],   
 [6366.71,3823.54,0],   
 "CREATED",   
 10,   
 true,   
 "destroy",   
 true   
] call BIS_fnc_taskCreate;  
 }; },
	{},
	[],
	12,
	0,
	false,
	false
] call BIS_fnc_holdActionAdd;
[
	laptop3,
	"Hack Laptop",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"_this distance _target < 3 && !('radio3' call BIS_fnc_taskCompleted)",
	"_caller distance _target < 3 && !('radio3' call BIS_fnc_taskCompleted)",
	{},
	{},
	{["radio3", "SUCCEEDED"] call BIS_fnc_taskSetState;
if ( 
 ("radio1" call BIS_fnc_taskCompleted) &&  
 ("radio2" call BIS_fnc_taskCompleted) && 
 ("radio3" call BIS_fnc_taskCompleted) &&  
 ("radio4" call BIS_fnc_taskCompleted)  
 ) then { 
  ["radios", "SUCCEEDED"] call BIS_fnc_taskSetState;
 [   
 [true, "zeus_1", "zeus_2", "zeus_3"],   
 "stronghold",   
 ["Kill all of the nutt jobs", "Attack Nadbor", "marker"],   
 [ObjNull],   
 "CREATED",   
 10,   
 true,   
 "attack",   
 true   
] call BIS_fnc_taskCreate;  
[   
 [true, "zeus_1", "zeus_2", "zeus_3"],   
 ["kill", "stronghold"],   
 ["Kill all of the nutt jobs", "Take Control Of Nadbor", "marker"],   
 [6116.07,4139.11,0],   
 "CREATED",   
 10,   
 true,   
 "kill",   
 true   
] call BIS_fnc_taskCreate;  
[   
 [true, "zeus_1", "zeus_2", "zeus_3"],   
 ["ammo", "stronghold"],   
 ["Blow it up", "Destroy Ammo Dump", "marker"],   
 [6366.71,3823.54,0],   
 "CREATED",   
 10,   
 true,   
 "destroy",   
 true   
] call BIS_fnc_taskCreate;  
 }; },
	{},
	[],
	12,
	0,
	false,
	false
] call BIS_fnc_holdActionAdd;
[
	laptop4,
	"Hack Laptop",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"_this distance _target < 3 && !('radio4' call BIS_fnc_taskCompleted)",
	"_caller distance _target < 3 && !('radio4' call BIS_fnc_taskCompleted)",
	{},
	{},
	{["radio4", "SUCCEEDED"] call BIS_fnc_taskSetState;
if ( 
 ("radio1" call BIS_fnc_taskCompleted) &&  
 ("radio2" call BIS_fnc_taskCompleted) && 
 ("radio3" call BIS_fnc_taskCompleted) &&  
 ("radio4" call BIS_fnc_taskCompleted)  
 ) then { 
  ["radios", "SUCCEEDED"] call BIS_fnc_taskSetState;
 [   
 [true, "zeus_1", "zeus_2", "zeus_3"],   
 "stronghold",   
 ["Kill all of the nutt jobs", "Attack Nadbor", "marker"],   
 [ObjNull],   
 "CREATED",   
 10,   
 true,   
 "attack",   
 true   
] call BIS_fnc_taskCreate;  
[   
 [true, "zeus_1", "zeus_2", "zeus_3"],   
 ["kill", "stronghold"],   
 ["Kill all of the nutt jobs", "Take Control Of Nadbor", "marker"],   
 [6116.07,4139.11,0],   
 "CREATED",   
 10,   
 true,   
 "kill",   
 true   
] call BIS_fnc_taskCreate;  
[   
 [true, "zeus_1", "zeus_2", "zeus_3"],   
 ["ammo", "stronghold"],   
 ["Blow it up", "Destroy Ammo Dump", "marker"],   
 [6366.71,3823.54,0],   
 "CREATED",   
 10,   
 true,   
 "destroy",   
 true   
] call BIS_fnc_taskCreate;  
 }; },
	{},
	[],
	12,
	0,
	false,
	false
] call BIS_fnc_holdActionAdd;