// Script for creating player tasks
// Only to be run on the server. BIS_fnc_taskCreate is global.
if (!isServer) exitWith {};

// Example task syntax below
/*
[
	true, // Owners of the task. See wiki page for details
	["task name", "parent task name"], // Name of the task, along with parent name. Parent name is used for nested tasks
	["description", "title", "marker"], // Information about the task. Honestly don't know what the marker does. Leave it blank. Can also use a CfgTaskDescriptions class (class name in string form) instead of this array.
	[0,0,0], // Task destination, can also refer to object location. Good method to use is getMarkerPos. Use objNull for task without location.
	"CREATED", // Task state. Current state of task at the time it's created (usually either "CREATED" or "ASSIGNED")
	10, // Task priority. Taken into account when automatically assigning new tasks when previous tasks are completed.
	true, // Show notification. Leave this as true. Set to false to disable task popup
	"attack", // Task type. Types can be found in CfgTaskTypes, or at https://community.bistudio.com/wiki/Arma_3_Tasks_Overhaul#Appendix
	true // Share task. If true, game will report which players have the task selected.	
] call BIS_fnc_taskCreate;

	Make sure to add the name of the zeus unit into the owner field in string format
	It should look like this when written
	
		[true, "zeus_unit"]
		
	This adds the task to all player units, as well as the "zeus_unit" curator.
	This makes sure that zeus units have the same tasks that the players do
*/
// Place tasks here
[
	[true, "zeus_1", "zeus_2", "zeus_3"],
	"radios",
	["Destroy them", "Destroy The Radio Stations", "marker"],
	[ObjNull],
	"CREATED",
	10,
	true,
	"destroy",
	true
] call BIS_fnc_taskCreate;
	[
		[true, "zeus_1", "zeus_2", "zeus_3"],
		["radio1", "radios"],
		["Turn if off", "Radio#1", "marker"],
		[ObjNull],
		"CREATED",
		10,
		true,
		"interact",
		true
	] call BIS_fnc_taskCreate;
	[
		[true, "zeus_1", "zeus_2", "zeus_3"],
		["radio2", "radios"],
		["Turn if off", "Radio#2", "marker"],
		[ObjNull],
		"CREATED",
		10,
		true,
		"interact",
		true
	] call BIS_fnc_taskCreate;
	[
		[true, "zeus_1", "zeus_2", "zeus_3"],
		["radio3", "radios"],
		["Turn if off", "Radio#3", "marker"],
		[ObjNull],
		"CREATED",
		10,
		true,
		"interact",
		true
	] call BIS_fnc_taskCreate;
	[
		[true, "zeus_1", "zeus_2", "zeus_3"],
		["radio4", "radios"],
		["Turn if off", "Radio#4", "marker"],
		[ObjNull],
		"CREATED",
		10,
		true,
		"interact",
		true
	] call BIS_fnc_taskCreate;