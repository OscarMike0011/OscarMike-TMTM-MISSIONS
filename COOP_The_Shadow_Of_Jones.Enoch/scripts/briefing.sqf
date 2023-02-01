// Script to handle initial mission briefings
// General guidelines would be to include briefings for the following
// Situation, Mission, and Assets
// Briefings are listed in the opposite order that they are written below. New diaryRecords are always placed at the top of the list.
// https://community.bistudio.com/wiki/createDiaryRecord

/*
	===== TO CREATE A BASIC BRIEFING =====
	The following code will add a "basic" briefing to all units in the mission

	player createDiaryRecord ["Diary", ["Assets", "Example Mission Assets"]];
	player createDiaryRecord ["Diary", ["Mission", "Example Mission Briefing"]];
	player createDiaryRecord ["Diary", ["Situation", "Example Situation Briefing"]];


	===== TO CREATE A SIDE-SPECIFIC BRIEFING =====
	The following code will add a briefing *only* to a certain side
	In this example, a briefing will be created that is only visible to BLUFOR players
	UNLESS YOUR MISSION HAS MULTIPLE PLAYER SIDES. YOU DO NOT NEED THIS CODE.
	
	if ((side player) == west) then {
		player createDiaryRecord ["Diary", ["Mission", "BLUFOR mission notes go here"]];
	};
	
	
	===== TO CREATE A ZEUS-SPECIFIC BRIEFING =====
	The following code will add a briefing *only* to player zeus units.
	
	
	
	
	===== NOTES =====
	Keep in mind that even with these if-statements, briefings will still appear in *reverse order from which they are written*
	This means if you want an extra note for a specific side that goes at the bottom of the briefing, that briefing should go at the top of this file.
*/
if (player isKindOf "VirtualCurator_F")then {
		player createDiaryRecord ["Diary", ["Zeus Actions and Notes","
		Use Drongo's Spooks and Anomalies for crazies, windigos, etc they are found in the Civilian tab. DO NOT USE THE ZOMBIES THEY WILL CRASH THE SERVER.<br/>
		For humans to shoot at blufor use looters and LDF, use LDF only to really slow down the mission, found in the INDFOR tab.<br/>
		This uses the spooks spawners so you don't have spawn them in yourself however you may need to spawn in more. Be careful they are very fast and can quickly overwhelm blufor.<br/>
		You can not RC the spooks they do not work.<br/>
		The button below is used to advance the task at the final Head task it only works then. Once players meet the task click the button by accessing the diary menu 2xj by default, it will move to next task once you get the EVAC task the button is no longer needed.<br/>
		<br/>
		<execute expression='[] execVM ""scripts\zeusaction.sqf"";'>Advance Task</execute>"], taskNull, "", false];
	};

player createDiaryRecord ["Diary", ["Assets", "Asset List:<br/>
	- 1x HEMMT Medical Respawn<br/>
	- 2x HEMMT Repair<br/>
	- 6x Prowler Unarmed<br/>
	- 6x Hunter HMG<br/>
	- 1x V44 Blackfish (Armed)<br/>
"]];

player createDiaryRecord ["Diary", ["Intel",
"We are likely to encounter looters in the area that have access to some LDF gear as well as small groups of AWOL LDF forces which may have some armored vehicles."
]];


player createDiaryRecord ["Diary", ["Mission",
"Two months ago an operation took place to clear the Livonia region after the first contact incident has failed and the team has gone missing. Their last message before contact was lost was something about Alex Jones and MLRS inside a warehouse. Along with this, the region has gone into complete chaos it is unknown what is happing there and so our mission is to reenter the region and figure out what happened and attempt to bring order to chaos.<br/>
Good Luck."
]];

