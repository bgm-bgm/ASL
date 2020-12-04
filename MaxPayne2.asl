state("maxpayne2")
{
    int onLoadScreen: "X_HelpersMFC.dll", 0x3184, 0x0;
    int comic: "e2mfc.dll", 0xF474, 0x14;
	
	int level: "X_LevelMFC.dll", 0x1B640;
	int vladKill: "X_GameObjectsMFC.dll", 0x1A8B64;
	int inCutscene: "X_GameObjectsMFC.dll", 0x1A7AA0;
	float playerX: "X_GameObjectsMFC.dll", 0x1A8B20, 0x218;
	float playerY: "X_GameObjectsMFC.dll", 0x1A8B20, 0x21C;
	float playerZ: "X_GameObjectsMFC.dll", 0x1A8B20, 0x220;
}

startup
{
	settings.Add("altsplit", false, "Alternative autosplitting method");
	settings.Add("altfinal", false, "Alternative method for the final split");
	settings.Add("ilmode", false, "IL Run Mode");
	
	vars.aslName = "Max Payne 2 autosplitter";
	if (timer.CurrentTimingMethod == TimingMethod.RealTime) {
		var timingMessage = MessageBox.Show(
			"This game uses Game Time (time without loads) as the main timing method.\n"+
			"LiveSplit is currently set to show Real Time (time INCLUDING loads).\n"+
			"Would you like the timing method to be set to Game Time for you?",
			vars.aslName+" | LiveSplit",
			MessageBoxButtons.YesNo,MessageBoxIcon.Question
		);		
		if (timingMessage == DialogResult.Yes) timer.CurrentTimingMethod = TimingMethod.GameTime;
	}
}

init
{
	vars.prevLevel = 0;
	vars.autoendDone = false;
}

update
{
	if (current.level == 0 && old.level != 0) {
		vars.prevLevel = old.level;
	}
}

start
{
	vars.prevLevel = 0;
	vars.autoendDone = false;
	
	vars.levelIndex = 1;
	vars.levelList = new List<int>() {365, 617, 324, 133, 608, 249, 403, 931, 136, 227, 488, 373, 154, 145, 97, 141, 634, 426, 354, 467, 316, 185, 355, 849, -1};
	
	if (!settings["ilmode"] && current.level == 365 && current.onLoadScreen == 1) {
		return true;
	}
	if (settings["ilmode"] && current.level != 0 && current.onLoadScreen == 1) {
		return true;
	}
}

reset
{
	if (!settings["ilmode"] && current.level == 365 && old.level == 0) {
		return true;
	}
	if (settings["ilmode"] && current.onLoadScreen <= 1 && old.onLoadScreen > 1) {
		return true;
	}
}
split
{
	if (!settings["altsplit"] && !settings["ilmode"] && current.level != old.level && current.level != 0 && vars.levelList[vars.levelIndex] == current.level) {
		vars.levelIndex++;
		return true;
	}
	
	if (settings["altsplit"] && !settings["ilmode"] && old.level == 0 && current.level > 0 && current.level != vars.prevLevel) {
		return true;
	}
	
	if (settings["ilmode"] && old.level == 0 && current.level > 0) {
		return true;
	}
	
	if (!settings["altfinal"] && current.level == 849 && current.inCutscene == 1 && vars.autoendDone == false && 
		current.playerX > -5.76 && current.playerX < -5.74 &&
		current.playerY > 28.96 && current.playerY < 28.98 && 
		current.playerZ > 52.99 && current.playerZ < 53.01) 
		{
			vars.autoendDone = true;
			return true;
		}
		
	if (settings["altfinal"] && current.level == 849 && current.onLoadScreen == 0 && 
		current.vladKill == 7 && old.vladKill != current.vladKill && vars.autoendDone == false) 
		{
			vars.autoendDone = true;
			return true;
		}
}

isLoading
{
    return current.onLoadScreen > 0 && current.comic == 0;
}


