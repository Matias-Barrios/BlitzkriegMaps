function DebugView()
	Password("Panzerklein");
	DisplayTrace("Test 1... 2...");
	ShowActiveScripts();
	ChangeWarFog(1);
	Suicide();
end;


function ShowText()
	DisplayTrace("Running!");
end;

function Init()
	RunScript("DebugView",1000);
end;