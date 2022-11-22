// Script to handle initial mission briefings
// General guidelines would be to include briefings for the following
// Situation, Mission, and Assets
// Briefings are listed in the opposite order that they are written below. New diaryRecords are always placed at the top of the list.
// https://community.bistudio.com/wiki/createDiaryRecord

//player createDiaryRecord ["Diary", ["Assets", "Example Mission Assets"]];
//player createDiaryRecord ["Diary", ["Mission", "Example Mission Briefing"]];
//player createDiaryRecord ["Diary", ["Situation", "Example Situation Briefing"]];

// TO USE THIS FILE. UNCOMMENT THE MARKED LINE IN "initPlayerLocal.sqf"

player createDiaryRecord ["Diary", ["Assets", "Example Asset List:<br/>
	- 2x CH-67<br/>
	- 6x HEMTT Transport<br/>
	- 1x Hunter<br/>
	- 1x AR-2 Darter<br/>
	- 10x Cruise Missiles<br/>
"]];

player createDiaryRecord ["Diary", ["Intel",
"There is a limted arsenal with different optics, facewear, and map tools in the hanger if you so choose to customise your loadout somewhat, or if you don't have a map tool for some reason(YOU NEED THEM).<br/>
Note to NEST Specialists freq: 795 is from the USS Freedom and AR-2 not from an WMD"
]];


player createDiaryRecord ["Diary", ["Mission",
"Our mission is to hunt down the WMDs (which are totally real and not imagery) and destroy them after we get a photo op with them of course. 
We will be running into AAF forces along the way which we are also tasked with destroying. 
The AAF possesses some heavily armored assets and so we will need to rely on the cruise missile to destroy these assets."
]];

player createDiaryRecord ["Diary", ["Situation",
"Welcome TMTM to the island of Malden.<br/> 
As you may have heard on the news recently President Kush has been showing to the world the unconfirmed, unsubstantiated, and possibly falsified reports showing that AAF forces in the region have possession of WMDs.<br/>
As such the President has been requesting that the Marine Raiders would be sent on a mission to destroy these WMD's however the Pentagon thinks he's insane and insisted that TMTM would be a better option to save money and their own careers after this goes sideways (oh shit I wasn't supposed to tell you that).<br/>
I mean that since we are far more qualified for the job than those stupid Raiders. <br/> 
<br/> 
Unfortunately, as we have arrived here it's become apparent that all our GPS’s are shit and don’t work because we are the Marines and we don’t get anything that works. 
As such we are going to have to rely on our Maps and compasses only to navigate throughout the region, hopefully, you remember basic training on how to use a map and compasses (or how to read for that matter). <br/> 
<br/> 
However, there is some hope as a Seabee destroy with cruise missiles was willingly press-ganged into helping our sorry asses. 
Hopefully, our JTAC knows what he is doing and doesn’t kill us all. 
<br/>
And since we are searching for WMDs NEST Specialists have been assigned to each of our squads who will help locate these WMDs and destroy them (DO NOT TOUCH THE WMDS IF YOU ARE NOT NEST).<br/>
<br/>
Oh and also will be getting some trucks (that work this time) at FOB  Windbreaker (our insertion point) which is currently being garrisoned by a bunch of doggies so watch out (also we've been kindly asked not to shoot them).<br/> 
<br/> 
Good Luck."
]];
