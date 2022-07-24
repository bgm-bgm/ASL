state("Borderlands2")
{
	//steam 2.0.0.1
	int loadScreen1: 0x16AD4A0;
	int loadScreen2: 0x15BB5C0;
	int inCinematic: "bink2w32.dll", 0x4611C;
	//int isOnTitle: 0x016C6430, 0x40, 0xE0, 0x30;
	byte isMenuLevel: 0x016C6430, 0x40, 0xE0, 0x286;
	
	bool isLocked: 0x16BD62C;
	byte playthroughMessage: 0x016C6430, 0x40, 0xABA;
	float exp: 0x016C6430, 0x40, 0xB60, 0x1A8, 0x6C;
}

state("Borderlands2", "1.1")
{
	int loadScreen1: 0x15EEE40;
	int loadScreen2: 0x14F4630;
	int inCinematic: "binkw32.dll", 0x3FDF8;	
	//int isOnTitle: 0x01600710, 0x40, 0xE0, 0x30;
	byte isMenuLevel: 0x01600710, 0x40, 0xE0, 0x286;
	
	bool isLocked: 0x15F85E8;
	byte playthroughMessage: 0x01600710, 0x40, 0xAB6;
	float exp: 0x01600710, 0x40, 0xB58, 0x1A8, 0x6C;
}

state("Borderlands2", "1.3.1")
{
	int loadScreen1: 0x1E5BE00;
	int loadScreen2: 0x1D5F620;
	int inCinematic: "binkw32.dll", 0x3FDF8;
	//int isOnTitle: 0x01E6D860, 0x40, 0xE0, 0x30;
	byte isMenuLevel: 0x01E6D860, 0x40, 0xE0, 0x286;
	
	bool isLocked: 0x1E65724;
	byte playthroughMessage: 0x01E6D860, 0x40, 0xABA;
	float exp: 0x01E6D860, 0x40, 0xB5C, 0x1A8, 0x6C;
}

state("Borderlands2", "1.8.3")
{
	int loadScreen1: 0x1ED51D0;
	int loadScreen2: 0x1DD8620;
	int inCinematic: "binkw32.dll", 0x3FDF8;
	//int isOnTitle: 0x01EE6BE0, 0x40, 0xE0, 0x30;
	byte isMenuLevel: 0x01EE6BE0, 0x40, 0xE0, 0x286;
	
	bool isLocked: 0x1EDEA64;
	byte playthroughMessage: 0x01EE6BE0, 0x40, 0xABA;
	float exp: 0x01EE6BE0, 0x40, 0xB5C, 0x1A8, 0x6C;
}

state("Borderlands2", "1.8.5")
{
	int loadScreen1: 0x164CE70;
	int loadScreen2: 0x155B580;
	int inCinematic: "bink2w32.dll", 0x4611C;
	//int isOnTitle: 0x01665410, 0x40, 0xE0, 0x30;
	byte isMenuLevel: 0x01665410, 0x40, 0xE0, 0x286;
	
	bool isLocked: 0x165CFFC;
	byte playthroughMessage: 0x01665410, 0x40, 0xABA;
	float exp: 0x01665410, 0x40, 0xB5C, 0x1A8, 0x6C;
}

state("Borderlands2", "2.0 Steam")
{
	int loadScreen1: 0x16953F0;
	int loadScreen2: 0x15A35C0;
	int inCinematic: "bink2w32.dll", 0x4611C;
	//int isOnTitle: 0x016ADEA0, 0x40, 0xE0, 0x30;
	byte isMenuLevel: 0x016ADEA0, 0x40, 0xE0, 0x286;
	
	bool isLocked: 0x16A557C;
	byte playthroughMessage: 0x016ADEA0, 0x40, 0xABA;
	float exp: 0x016ADEA0, 0x40, 0xB60, 0x1A8, 0x6C;
}

state("Borderlands2", "2.0 Epic")
{
	int loadScreen1: 0x16891D0;
	int loadScreen2: 0x15975C0;
	int inCinematic: "bink2w32.dll", 0x4611C;
	//int isOnTitle: 0x016A1BC0, 0x40, 0xE0, 0x30;
	byte isMenuLevel: 0x016A1BC0, 0x40, 0xE0, 0x286;
	
	bool isLocked: 0x169935C;
	byte playthroughMessage: 0x016A1BC0, 0x40, 0xABA;
	float exp: 0x016A1BC0, 0x40, 0xB60, 0x1A8, 0x6C;
}

state("Borderlands2", "2.0.0.1 Steam")
{
	int loadScreen1: 0x16AD4A0;
	int loadScreen2: 0x15BB5C0;
	int inCinematic: "bink2w32.dll", 0x4611C;
	//int isOnTitle: 0x016C6430, 0x40, 0xE0, 0x30;
	byte isMenuLevel: 0x016C6430, 0x40, 0xE0, 0x286;
	
	bool isLocked: 0x16BD62C;
	byte playthroughMessage: 0x016C6430, 0x40, 0xABA;
	float exp: 0x016C6430, 0x40, 0xB60, 0x1A8, 0x6C;
}

state("Borderlands2", "2.0.0.1 Epic")
{
	int loadScreen1: 0x16A0280;
	int loadScreen2: 0x15AE5C0;
	int inCinematic: "bink2w32.dll", 0x4611C;
	//int isOnTitle: 0x016B9150, 0x40, 0xE0, 0x30;
	byte isMenuLevel: 0x016B9150, 0x40, 0xE0, 0x286;
	
	bool isLocked: 0x16B040C;
	byte playthroughMessage: 0x016B9150, 0x40, 0xABA;
	float exp: 0x016B9150, 0x40, 0xB60, 0x1A8, 0x6C;
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
	vars.autoEndBit = 4;
	switch (modules.First().FileVersionInfo.FileVersion)	
	{
		case "1.0.9.15588":
			version = "1.1";
			vars.autoEndBit = 3;
			break;
		case "1.0.9.670948":
			version = "1.1";
			vars.autoEndBit = 3;
			break;
		case "1.0.28.42246":
			version = "1.3.1";
			vars.autoEndBit = 4;
			break;
		case "1.0.28.697606":
			version = "1.3.1";
			vars.autoEndBit = 4;
			break;
		case "1.0.29.41124":
			version = "1.8.3";
			vars.autoEndBit = 4;
			break;
		case "1.0.29.827556":
			version = "1.8.3";
			vars.autoEndBit = 4;
			break;
		case "1.0.38.7335":
			version = "1.8.4";
			vars.autoEndBit = 4;
			break;
		case "1.0.38.1055911":
			version = "1.8.4";
			vars.autoEndBit = 4;
			break;
		case "1.0.228.55487":
			version = "1.8.5";
			vars.autoEndBit = 4;
			break;
		case "1.0.228.1890495":
			version = "1.8.5";
			vars.autoEndBit = 4;
			break;
		case "1.0.18.2132147":
			version = "2.0 Steam";
			vars.autoEndBit = 4;
			break;
		case "1.0.138.2140712":
			version = "2.0 Steam";
			vars.autoEndBit = 4;
			break;
		case "1.0.145.47159":
			version = "2.0 Steam";
			vars.autoEndBit = 4;
			break;
		case "1.0.145.2209847":
			version = "2.0 Steam";
			vars.autoEndBit = 4;
			break;
		case "1.0.236.47159":
			version = "2.0 Epic";
			vars.autoEndBit = 4;
			break;
		case "1.0.236.2209847":
			version = "2.0 Epic";
			vars.autoEndBit = 4;
			break;
		case "1.0.253.27152":
			version = "2.0.0.1 Steam";
			vars.autoEndBit = 4;
			break;
		case "1.0.253.2845200":
			version = "2.0.0.1 Steam";
			vars.autoEndBit = 4;
			break;
		case "1.0.340.27152":
			version = "2.0.0.1 Epic";
			vars.autoEndBit = 4;
			break;
		case "1.0.340.2845200":
			version = "2.0.0.1 Epic";
			vars.autoEndBit = 4;
			break;
	}
}

update
{	
	vars.loading = (current.loadScreen1 == 1 || 
		(current.loadScreen2 == 0 && current.inCinematic == 0) || 
		((current.isMenuLevel >> 3) % 2 == 1));
}

start
{
	vars.autosplitDone = false;
	return (!vars.loading && current.exp == 0 && old.isLocked && !current.isLocked);
}

isLoading
{
	return vars.loading;
}

split
{
	if (vars.autosplitDone == false && !vars.loading && (((current.playthroughMessage >> vars.autoEndBit) % 2) == 1)) {
		vars.autosplitDone = true;
		return true;
	}
}

exit
{
    timer.IsGameTimePaused = true;
}
