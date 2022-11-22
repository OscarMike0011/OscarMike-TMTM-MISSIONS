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
	- 10x Hunter<br/>
	- 1x Hunter HMG<br/>
	- 2x Rhino MGS UP<br/>
	- 1x UH-80 Ghost Hawk (repair/rearm)
"]];

player createDiaryRecord ["Diary", ["Intel",
"We do not know the exact location of the radios however we do know their frequencies and the approximate area they're located. The map has multiple colored zones to mark the radio frequencies and their location they are as follows.<br/>
<font color ='#0000FF'>510</font color><br/>
<font color ='#000000'>835<br/></font color>
<font color ='#FFFFFF'>572<br/></font color>
<font color ='#FFFF00'>690<br/></font color>
<font color ='#FF0000'>730<br/></font color>
<font color ='#FFA500'>810<br/></font color>
"
]];


player createDiaryRecord ["Diary", ["Mission",
"There are six radio stations located in the region marked on your maps, however, we do not know their precise location. 
As such we have brought in radio specialists with spectrum devices to locate these radio stations and destroy them. 
Each radio station has a chief engineer identifiable with a tinfoil hat. 
To ensure these radio stations stay offline permanently we must kill or capture (preferably kill) them. 
Good luck."
]];

player createDiaryRecord ["Diary", ["Situation",
"It's been a couple of weeks since the first contact incident here in Lavonia. 
As a result of this hundreds of conspiracy theorists are flocking to the region to look for any alien artifacts they can find and are reporting it back to the world with radio stations that they have set up around the region. 
Of course, as being conspiracy theorists they are spreading complete lies about the incident and it will be our job to clear out the region to maintain order in the world and to make sure these Alex Jones don't run off with a death laser.
It's also important to note that because of the incident LDF and NATO forces left nearly all their equipment behind as such these conspiracy theorists now have access to modern weapons including very heavily armored vehicle assets they are identifiable by the LDF uniforms they are wearing.
Also because of the incident, all guided munitions have been destroyed as such the only anti-vehicle weapons we possess are LAT rockets and 2 Rhino MGS vehicles."
]];
