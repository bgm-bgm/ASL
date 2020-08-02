state("Borderlands2")
{
	//steam 2.0
	int loadScreen1: 0x16953F0;
	int loadScreen2: 0x15A35C0;
	int isOnTitle: 0x01696154, 0x7F0, 0xE30;
	int inCinematic: "bink2w32.dll", 0x4611C;
	bool isLocked: 0x16A557C;
}

state("Borderlands2", "1.1")
{
	int loadScreen1: 0x15EEE40;
	int loadScreen2: 0x14F4630;
	int isOnTitle: 0x0151B64C, 0xD8, 0x10;
	int inCinematic: "binkw32.dll", 0x3FDF8;
	bool isLocked: 0x15F85E8;
	int storyEnded: 0x015FFE78, 0x0, 0x194, 0x3E8;
}

state("Borderlands2", "1.3.1")
{
	int loadScreen1: 0x1E5BE00;
	int loadScreen2: 0x1D5F620;
	int isOnTitle: 0x01D8D294, 0x6A0, 0x790;
	int inCinematic: "binkw32.dll", 0x3FDF8;
	bool isLocked: 0x1E65724;
}

state("Borderlands2", "1.8.3")
{
	int loadScreen1: 0x1ED51D0;
	int loadScreen2: 0x1DD8620;
	int isOnTitle: 0x01E08790, 0x618, 0x10;
	int inCinematic: "binkw32.dll", 0x3FDF8;
	bool isLocked: 0x1EDEA64;
}

state("Borderlands2", "1.8.5")
{
	int loadScreen1: 0x164CE70;
	int loadScreen2: 0x155B580;
	int isOnTitle: 0x01639704, 0x768, 0x70;
	int inCinematic: "bink2w32.dll", 0x4611C;
	bool isLocked: 0x165CFFC;
}

state("Borderlands2", "2.0 Steam")
{
	int loadScreen1: 0x16953F0;
	int loadScreen2: 0x15A35C0;
	int isOnTitle: 0x01696154, 0x7F0, 0xE30;
	int inCinematic: "bink2w32.dll", 0x4611C;
	bool isLocked: 0x16A557C;
}

state("Borderlands2", "2.0 Epic")
{
	int loadScreen1: 0x16891D0;
	int loadScreen2: 0x15975C0;
	int isOnTitle: 0x01689F34, 0x7F0, 0xE30;
	int inCinematic: "bink2w32.dll", 0x4611C;
	bool isLocked: 0x169935C;
}

startup
{
	vars.aslName = "Borderlands 2 autosplitter";
    if (timer.CurrentTimingMethod == TimingMethod.RealTime)
        {
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
	vars.loading = false;
	vars.autosplitDone = false;
	switch (modules.First().FileVersionInfo.FileVersion)	
	{
		case "1.0.9.15588":
			version = "1.1";
			break;
		case "1.0.9.670948":
			version = "1.1";
			break;
		case "1.0.28.697606":
			version = "1.3.1";
			break;
		case "1.0.29.41124":
			version = "1.8.3";
			break;
		case "1.0.29.827556":
			version = "1.8.3";
			break;
		case "1.0.38.7335":
			version = "1.8.4";
			break;
		case "1.0.38.1055911":
			version = "1.8.4";
			break;
		case "1.0.228.1890495":
			version = "1.8.5";
			break;
		case "1.0.18.2132147":
			version = "2.0 Steam";
			break;
		case "1.0.138.2140712":
			version = "2.0 Steam";
			break;
		case "1.0.145.2209847":
			version = "2.0 Steam";
			break;
		case "1.0.236.2209847":
			version = "2.0 Epic";
			break;
	}
}

update
{	
	vars.loading = (current.loadScreen1 == 1 || (current.loadScreen2 == 0 && current.inCinematic == 0) || current.isOnTitle == 1);
}

start
{
	vars.autosplitDone = false;
	return (old.isLocked && !current.isLocked);
}

isLoading
{
	return vars.loading;
}

split
{
	if (version == "1.1" && vars.autosplitDone == false && !vars.loading && current.storyEnded == 1 && old.storyEnded == 0) {
		vars.autosplitDone = true;
		return true;
	}
}

exit
{
    timer.IsGameTimePaused = true;
}
