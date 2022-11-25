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
		player createDiaryRecord ["Diary", ["Zeus Notes", "READ THIS PLEASE<br/>
		Incase of holdactions on the laptops not working place a civilian ai of any kind next to radio tower
		that is in the field to the right of Kulno which just north of Dolink on the bottom right corner of the map.<br/>
		Use LDF forces as units. When squads attack radio locations at some point have a small counter attack happen if the squad is fairly intact.
		Do has you see fit in order for the mission to last under 2 hours. At the end with alex jones kill when blufor get near a trigger will happen with a 15 sec wait
		during those 15 sec start spaming lightning around him do not kill players. After the Cancel task of kill alex jones you can start moving him around to scare players DO NOT RC HIM OR HE WILL DIE
		Continue to set off lightning arond players do not kill them unless they get extremely close to Alex Jones. As blufor heads to evac location move alex to slowly follow them there. 
		Spawn zombies on the road as they pass do not try to kill players with the zombies just there to scare. If a squad stops to attack the zombies yell at them as high command if commander does not tell them to stop.
		You can kill anyone who jumps out to be rambo.
		"]];
	};
player createDiaryRecord ["Diary", ["Assets", "Asset List:<br/>
	- 1x UH-80 Ghost Hawk<br/>
	- 2x Rhino MGS<br/>
	- 1x Hunter HMG<br/>
	- 12x Prowler<br/>
	- 4x AR-2 Darter
"]];

player createDiaryRecord ["Diary", ["Intel",
"The Enemy is wearing LDF uniforms and have access to modern equipment. They have 3rd gen NVDs we will not have darkness to cover us."
]];


player createDiaryRecord ["Diary", ["Mission",
"There are four radio stations located in the region marked on your maps in red however, we do not know their precise location. 
Each radio station has a laptop that controls them, shut them down.<br/> 
Good luck."
]];

player createDiaryRecord ["Diary", ["Situation",
"
It's been a couple of weeks since the first contact incident here in Lavonia. 
As a result of this hundreds of conspiracy theorists are flocking to the region to look for any alien artifacts they can find and are reporting it back to the world with radio stations that they have set up around the region. 
Of course, as being conspiracy theorists they are spreading complete lies about the incident and it will be our job to clear out the region to maintain order in the world and to make sure these nut jobs don't run off with a death laser.<br/>
Good luck."
]];
