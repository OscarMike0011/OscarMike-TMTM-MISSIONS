// Script to handle initial mission briefings
// General guidelines would be to include briefings for the following
// Situation, Mission, and Assets
// Briefings are listed in the opposite order that they are written below. New diaryRecords are always placed at the top of the list.
// https://community.bistudio.com/wiki/createDiaryRecord

//player createDiaryRecord ["Diary", ["Assets", "Example Mission Assets"]];
//player createDiaryRecord ["Diary", ["Mission", "Example Mission Briefing"]];
//player createDiaryRecord ["Diary", ["Situation", "Example Situation Briefing"]];

// TO USE THIS FILE. UNCOMMENT THE MARKED LINE IN "initPlayerLocal.sqf"

player createDiaryRecord ["Diary", ["Assets", "Your available assets for this mission are:<br/>
1x MH-6J RECON<br/>
1x MH-60<br/>
2x CH-47F (medical/respawn)<br/>
1x MH-60L<br/>"]];

player createDiaryRecord ["Diary", ["Mission", "We have just entered the Sahrani islands. About 2 weeks ago a member of the press was captured by the Russians and he is being held for ransom.<br/>
However, we do not know where he is being held but our satellites are currently looking for his location. In the meantime, we need to take out the SPAA on the north side of the island.<br/>
The Recon Team will scout the AOI (Yellow makers) markers and callout any inbound enemy reinforcements<br/>
 After which we will continue to receive orders until we learn of the press's location."]];

player createDiaryRecord ["Diary", ["Situation", "We must destroy the SPAA and continue to follow orders as they come in. We are fighting modern Russian soldiers, so we should expect armored vehicles.<br/>
If we kill the Hostage then we have failed our mission."]];