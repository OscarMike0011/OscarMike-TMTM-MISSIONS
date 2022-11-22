// Script to handle initial mission briefings
// General guidelines would be to include briefings for the following
// Situation, Mission, and Assets
// Briefings are listed in the opposite order that they are written below. New diaryRecords are always placed at the top of the list.
// https://community.bistudio.com/wiki/createDiaryRecord

//player createDiaryRecord ["Diary", ["Assets", "Example Mission Assets"]];
//player createDiaryRecord ["Diary", ["Mission", "Example Mission Briefing"]];
//player createDiaryRecord ["Diary", ["Situation", "Example Situation Briefing"]];

// TO USE THIS FILE. UNCOMMENT THE MARKED LINE IN "initPlayerLocal.sqf"

player createDiaryRecord ["Diary", ["Assets", "Asset List:<br/>
	- 1x Boxer Unarmed<br/>
	- 1x Boxer HMG<br/>
	- 12x Dingo 2 MG<br/>
	- 1x MQ-4A 	Greyhawk
"]];

player createDiaryRecord ["Diary", ["Intel",
"The Russian force we are fighting is a well-equipped mechanized force with heavy armor assets and MLRS artillery we should expect this be a hard fought battle."
]];


player createDiaryRecord ["Diary", ["Mission",
"Capture bridges, destroy vehicles, kill Russians what more could you possibly want?"
]];

player createDiaryRecord ["Diary", ["Situation",
"Tag Soldaten several days ago several Russian mechanized division crossed the border into Finland and have been running rampant around the region the Finnish Defense Force cannot stop this unit in particular as they have heavy MLRS artillery and T-90A MBTs. 
As such they have enlisted the help of the Bundeswehr to help take out this unit. 
While we were supposed to get leopard 2A6 tanks in true German fashion all their transmissions broke while trying to drive here from Helsinki as such our only heavy anti-armor asset will be the Grayhawk drone so our JTACs better be good at their job.<br/>
Viel Glück"
]];
