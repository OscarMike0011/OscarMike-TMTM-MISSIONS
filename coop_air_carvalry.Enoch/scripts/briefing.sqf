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
	- 1x MH-6M
	all Assets have a 3min respawn
"]];

player createDiaryRecord ["Diary", ["Intel",
"Intel Briefing<br/>
OPFOR is a 3rd world army with old soviet equipment so heavy amour should not be a problem.<br/>
However you still should be on high alert as they could have received heavy assets without our knowledge.<br/>
"]];


player createDiaryRecord ["Diary", ["Mission",
"Briefing<br/>
Welcome to Livonia. For past 5 years the country has been in a civil war with the NATO backed goverment and the rebel communists fighting.<br/>
It's our job to perform tasks that High command gives us which can be anything from combat patrols to full scale assaults on OPFOR positions.<br/>
As such you must be prepared for any type of mission that we may face. Our Enemies are militias with old soviet gear. There should be no OPFOR heavy assets <br/>
however our intel could be wrong so maintain high alert.
"]];

player createDiaryRecord ["Diary", ["Situation",
"Example Situation Briefing.<br/>
We are a Air cavalry unit preforming COIN ops."
]];

