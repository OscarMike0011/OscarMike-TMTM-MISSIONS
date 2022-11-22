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
	- 6x M1025 Recon SOV (M2) - if they survive the landing.
"]];

player createDiaryRecord ["Diary", ["Intel",
"Airbase may have AA, anything else is unknown at this time."
]];


player createDiaryRecord ["Diary", ["Mission",
"You are being paradropped in onto the enemy airbase, heavy resistance is expected. Destroy the prototype weapon and secure the airbase for extract."
]];

player createDiaryRecord ["Diary", ["Situation",
"CSAT has a new protype weapon they are planning on field testing in the middle east. It needs to be gone yesterday."
]];
