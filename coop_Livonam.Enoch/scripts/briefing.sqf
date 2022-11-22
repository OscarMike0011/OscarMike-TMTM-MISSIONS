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
	- 5x UH-60M<br/>
	- 1x MH-6J<br/>
	- 1x AH-64D<br/>
	- 1x MH-6M<br/>
	All Assets have a 3min respawn
"]];

player createDiaryRecord ["Diary", ["Intel",
"Intel Briefing<br/>
OPFOR is a rebel force with old soviet equipment so heavy amour should not be a problem.<br/>
However you still should be on high alert as they could have received heavy assets without our knowledge.<br/>
You have the option to get intel from a laptop to give us a better idea of what assets OPFOR has.
"]];


player createDiaryRecord ["Diary", ["Mission",
"Briefing<br/>
Welcome to Livonia. For past 5 years the country has been in a civil war with the NATO backed goverment and the rebel communists.<br/>
One week ago a NATO scientist was captured by the rebel forces and is holding him for ransom and have setup defenses around the town he is kept in.<br/>
He is surrounded by 3 SPAA vehicles that we most destory in order to reach him with our helicopters.<br/>
After we destory the SPAA then we will assault the town and save the hostage.<br/>
Good luck
"]];

player createDiaryRecord ["Diary", ["Situation",
"Situation Briefing.<br/>
Destory SPAA<br/>
Kill OPFOR guards to complete the mission<br/>
"
]];

