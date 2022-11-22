// Mission endings
// Handles the mission ending screen
// https://community.bistudio.com/wiki/Debriefing

class win
{
	title = "MISSION COMPLETED"; // Main text that appears for the closing shot (ex: MISSION COMPLETED)
	subtitle = "We have saved the press"; // Subtitle below the title when the closing shot is triggered
	description = "now lets home"; // Description visible on the debriefing screen after the closing shot
	//pictureBackground = ""; // Image file used as a background on the debriefing screen
	//picture = ""; // Icon used for the closing shot
	//pictureColor[] = {1,1,1,1}; // Colour of the icon during the closing shot. Leave as default most of the time
};
class lose
{
	title = "YOU FUCKED UP"; // Main text that appears for the closing shot (ex: MISSION COMPLETED)
	subtitle = "You fucking shot the press"; // Subtitle below the title when the closing shot is triggered
	description = "Trump moment"; // Description visible on the debriefing screen after the closing shot
}