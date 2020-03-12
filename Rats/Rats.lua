function ShowText()
	DisplayTrace("Running!");
end;

function Init()
	RunScript("DebugView",1000);
	-- RunScript("TraceNumberOfUnits",1000);
	RunScript("ToLose",3000);
	RunScript("CheckFarm1",3000);
end;


function CheckFarm1()
	local total = GetNUnitsInScriptGroup(1001,1) +  GetNUnitsInScriptGroup(1002,1) +  GetNUnitsInScriptGroup(1003,1)
	
	Trace("Total : %g",total)
	if (total == 0) then
		DisplayTrace("You conquered the farm! \nWatch out. Enemies are incoming.");
	end;
end;

-- Common functions

function TraceNumberOfUnits()
	Trace("Number of units for player 0 : %g",GetNUnitsInSide(0));
end;

function ToLose()
	if (GetNUnitsInSide(0) == 0) then
		DisplayTrace("You have lost!");
		Loose();
	end;
end;


function DebugView()
	Password("Panzerklein");
	Trace("Starting to debug...");
	ShowActiveScripts();
	SetGameSpeed(6);
	ChangeWarFog(1);
	God(0,1);
	Suicide();
end;

