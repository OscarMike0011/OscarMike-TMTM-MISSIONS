// initServer.sqf
// Executes only on the server at mission start
// No parameters are passed to this script

// Call the template initServer function
[] call XPT_fnc_initServer; // DO NOT CHANGE THIS LINE

// Call the script to handle initial task setup
[] execVM "scripts\tasks.sqf";



//////////////////////////////////////////////////////////
///// Add any mission specific code after this point /////
//////////////////////////////////////////////////////////

// Create a list of mission objects that should not be curator editable
XPT_blacklistedMissionObjects = [];

[west, 10000, [
	
["Land_HBarrierTower_F", 10],
["Land_HBarrierWall6_F", 6],
["Land_HBarrierWall4_F", 4],
["Land_HBarrierWall_corner_F", 5],
["Land_BagFence_Long_F",1],
["Land_BagFence_Round_F",1],
["Land_BagFence_Short_F",1],
["Fort_RazorWire",1],
["Land_Cargo_Patrol_V1_F",10]
]] call acex_fortify_fnc_registerObjects;