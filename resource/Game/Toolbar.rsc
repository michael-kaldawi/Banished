Toolbar base
{
	StringTable _stringTable = "Dialog/StringTable.rsc:toolBar";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
}

ExternalList resource
{
	External _resources
	[
		"time",
		"reports",
		"housing",
		"transport",
		"storage",
		"services",
		"food",
		"resources",
		"removal",
		"options"

		"slow"
		"pause"
		"play"
		"speed"
		"fast"

		"statusbar"
		"eventlog"
		"map"
		"profession"
		"limit"
		"priority"
		"path"
		"camera"
		"towninfo"
		"help"
		"capture"
		"debug"
		"noise"

		"woodhouse"
		"stonehouse"
		"hostel"

		"dirtroad"
		"stoneroad"
		"woodbridge"
		"tunnel"

		"storagebarn"
		"storageyard"
		"market"
		"tradingpost"

		"well"
		"school"
		"doctor"
		"townhall"
		"chapel"
		"cemetery"

		"cropfield"
		"orchard"
		"pasture"
		"fish"
		"hunter"
		"gatherer"

		"cutter"
		"forester"
		"herbalist"
		"toolmaker"
		"tailor"
		"tavern"
		"ironmine"
		"quarry"

		"clearbuilt"
		"clearall"
		"cleartree"
		"clearstone"
		"cleariron"
		"clearroad"
		"clearcancel"

		"camera0"
		"camera1"
		"camera2"
		"camera3"
		"camera4"
	]
}

Toolbar time : "base"
{
	// Toolbar _parent = none;
	int _sortPriority = 100;

	String _toolTip = "TimeTip";	
	String _image = "ToolbarSpeed";
	Action _action = ShowGroup;

	bool _autoHotKey = true;
	Keys _hotKey = Toolbar0;
}

Toolbar reports : "base"
{
	// Toolbar _parent = none;
	int _sortPriority = 200;

	String _toolTip = "ToolTip";	
	String _image = "ToolbarTools";
	Action _action = ShowGroup;
	
	bool _autoHotKey = true;
	Keys _hotKey = Toolbar1;
}

Toolbar housing : "base"
{
	// Toolbar _parent = none;
	int _sortPriority = 300;

	String _toolTip = "HousingTip";	
	String _image = "ToolbarHousing";
	Action _action = ShowGroup;

	bool _autoHotKey = true;
	Keys _hotKey = Toolbar2;
}

Toolbar transport : "base"
{
	// Toolbar _parent = none;
	int _sortPriority = 400;

	String _toolTip = "TransportTip";	
	String _image = "ToolbarTransport";
	Action _action = ShowGroup;

	bool _autoHotKey = true;
	Keys _hotKey = Toolbar3;
}

Toolbar storage : "base"
{
	// Toolbar _parent = none;
	int _sortPriority = 500;

	String _toolTip = "StorageTip";	
	String _image = "ToolbarStorage";
	Action _action = ShowGroup;

	bool _autoHotKey = true;
	Keys _hotKey = Toolbar4;
}

Toolbar services : "base"
{
	// Toolbar _parent = none;
	int _sortPriority = 600;

	String _toolTip = "ServiceTip";	
	String _image = "ToolbarService";
	Action _action = ShowGroup;

	bool _autoHotKey = true;
	Keys _hotKey = Toolbar5;
}

Toolbar food : "base"
{
	// Toolbar _parent = none;
	int _sortPriority = 700;

	String _toolTip = "FoodTip";	
	String _image = "ToolbarFood";
	Action _action = ShowGroup;

	bool _autoHotKey = true;
	Keys _hotKey = Toolbar6;
}

Toolbar resources : "base"
{
	// Toolbar _parent = none;
	int _sortPriority = 800;

	String _toolTip = "ResourceTip";	
	String _image = "ToolbarResource";
	Action _action = ShowGroup;

	bool _autoHotKey = true;
	Keys _hotKey = Toolbar7;
}

Toolbar removal : "base"
{
	// Toolbar _parent = none;
	int _sortPriority = 900;

	String _toolTip = "RemoveTip";	
	String _image = "ToolbarRemove";
	Action _action = ShowGroup;

	bool _autoHotKey = true;
	Keys _hotKey = Toolbar8;
}

Toolbar options : "base"		
{	
	// Toolbar _parent = none;
	int _sortPriority = 1000;

	String _toolTip = "OptionsTip";	
	String _image = "ToolbarOptions";	
	Action _action = Options;	

	bool _autoHotKey = false;
	Keys _hotKey = Cancel; 
}

Toolbar slow : "base"			{ Toolbar _parent = "time";		int _sortPriority = 100;	String _toolTip = "SlowTip";	String _image = "ToolbarSlow";		Action _action = Slow;		Keys _hotKey = Tool0;	bool _autoHotKey = true; }
Toolbar pause : "base"			{ Toolbar _parent = "time";		int _sortPriority = 200;	String _toolTip = "PauseTip";	String _image = "ToolbarPause";		Action _action = Pause;		Keys _hotKey = Tool1;	bool _autoHotKey = true; }
Toolbar play : "base"			{ Toolbar _parent = "time";		int _sortPriority = 300;	String _toolTip = "PlayTip";	String _image = "ToolbarPlay";		Action _action = Play;		Keys _hotKey = Tool2;	bool _autoHotKey = true; }
Toolbar speed : "base"			{ Toolbar _parent = "time";		int _sortPriority = 400;	String _toolTip = "SpeedTip";	Action _action = Speed;	}
Toolbar fast : "base"			{ Toolbar _parent = "time";		int _sortPriority = 500;	String _toolTip = "FastTip";	String _image = "ToolbarFast";		Action _action = Fast;		Keys _hotKey = Tool3;	bool _autoHotKey = true; }

Toolbar statusbar : "base"		{  Toolbar _parent = "reports";		int _sortPriority = 100;	Action _action = Utility;	ComponentDescription _tool = "Template/UtilityStatusBar.rsc";		Keys _hotKey = Tool0; bool _autoHotKey = true; } 
Toolbar eventlog : "base"		{  Toolbar _parent = "reports";		int _sortPriority = 200;	Action _action = Utility;	ComponentDescription _tool = "Template/UtilityEventLog.rsc";		Keys _hotKey = Tool1; bool _autoHotKey = true; }
Toolbar map : "base"			{  Toolbar _parent = "reports";		int _sortPriority = 300;	Action _action = Utility;	ComponentDescription _tool = "Template/UtilityMap.rsc";				Keys _hotKey = Tool2; bool _autoHotKey = true; }
Toolbar profession : "base"		{  Toolbar _parent = "reports";		int _sortPriority = 400;	Action _action = Utility;	ComponentDescription _tool = "Template/UtilityProfessions.rsc";		Keys _hotKey = Tool3; bool _autoHotKey = true; }
Toolbar limit : "base"			{  Toolbar _parent = "reports";		int _sortPriority = 500;	Action _action = Utility;	ComponentDescription _tool = "Template/UtilityLimits.rsc";			Keys _hotKey = Tool4; bool _autoHotKey = true; }
Toolbar priority : "base"		{  Toolbar _parent = "reports";		int _sortPriority = 600;	Action _action = Tool;		ComponentDescription _tool = "Template/ClearPriority.rsc";			Keys _hotKey = Tool5; bool _autoHotKey = true; }
Toolbar path : "base"			{  Toolbar _parent = "reports";		int _sortPriority = 700;	Action _action = Tool;		ComponentDescription _tool = "Template/UtilityPath.rsc";			Keys _hotKey = Tool6; bool _autoHotKey = true; }
Toolbar camera : "base"			{  Toolbar _parent = "reports";		int _sortPriority = 800; 	Action _action = ShowGroup;	String _image = "ToolCamera";	String _toolTip = "CameraTip";		Keys _hotKey = Tool7; bool _autoHotKey = true; }
Toolbar towninfo : "base"		{  Toolbar _parent = "reports";		int _sortPriority = 900; 	Action _action = Properties;	ComponentDescription _tool = "Template/TownHall.rsc";			Keys _hotKey = Tool8; bool _autoHotKey = true;  String _toolTip = "ToolTownHallTip"; String _image = "ToolTownHall";  }
Toolbar help : "base"			{  Toolbar _parent = "reports";		int _sortPriority = 1000; 	Action _action = Utility;	ComponentDescription _tool = "Template/UtilityHelp.rsc";			Keys _hotKey = Tool9; }
Toolbar capture : "base"		{  bool _visible = false;	Toolbar _parent = "reports";		int _sortPriority = 1100; 	Action _action = Utility;	ComponentDescription _tool = "Template/UtilityCapture.rsc";			Keys _hotKey = Camera0; bool _autoHotKey = true;}
Toolbar debug : "base"			{  bool _visible = false;	Toolbar _parent = "reports";		int _sortPriority = 1200; 	Action _action = Utility;	ComponentDescription _tool = "Template/UtilityDebug.rsc";			Keys _hotKey = Camera1; bool _autoHotKey = true;}
Toolbar noise : "base"			{  bool _visible = false;	Toolbar _parent = "reports";		int _sortPriority = 1300; 	Action _action = Utility;	ComponentDescription _tool = "Template/UtilityNoise.rsc";			Keys _hotKey = Camera2; bool _autoHotKey = true;}

Toolbar camera0 : "base"		{	Toolbar _parent = "camera";		int _sortPriority = 100;	Action _action = Camera;	String _toolTip = "Camera0Tip"; String _image = "ToolCamera0";		Keys _hotKey = Camera0; int _index = 0; }
Toolbar camera1 : "base"		{	Toolbar _parent = "camera";		int _sortPriority = 200;	Action _action = Camera;	String _toolTip = "Camera1Tip"; String _image = "ToolCamera1";		Keys _hotKey = Camera1; int _index = 1; }
Toolbar camera2 : "base"		{	Toolbar _parent = "camera";		int _sortPriority = 300;	Action _action = Camera;	String _toolTip = "Camera2Tip"; String _image = "ToolCamera2";		Keys _hotKey = Camera2; int _index = 2; }
Toolbar camera3 : "base"		{	Toolbar _parent = "camera";		int _sortPriority = 400;	Action _action = Camera;	String _toolTip = "Camera3Tip"; String _image = "ToolCamera3";		Keys _hotKey = Camera3; int _index = 3; }
Toolbar camera4 : "base"		{	Toolbar _parent = "camera";		int _sortPriority = 500;	Action _action = Camera;	String _toolTip = "Camera4Tip"; String _image = "ToolCamera4";		Keys _hotKey = Camera4; int _index = 4; }

Toolbar woodhouse : "base"		{	Toolbar _parent = "housing";	int _sortPriority = 100;	Action _action = Tool;		ComponentDescription _tool = "Template/WoodHouse.rsc";		Keys _hotKey = Tool0; bool _autoHotKey = true; }
Toolbar stonehouse : "base"		{	Toolbar _parent = "housing";	int _sortPriority = 200;	Action _action = Tool;		ComponentDescription _tool = "Template/StoneHouse.rsc";		Keys _hotKey = Tool1; bool _autoHotKey = true; }
Toolbar hostel : "base"			{	Toolbar _parent = "housing";	int _sortPriority = 300;	Action _action = Tool;		ComponentDescription _tool = "Template/Hostel.rsc";			Keys _hotKey = Tool2; bool _autoHotKey = true; }

Toolbar dirtroad : "base"		{	Toolbar _parent = "transport";	int _sortPriority = 100;	Action _action = Tool;		ComponentDescription _tool = "Template/DirtRoad.rsc";				Keys _hotKey = Tool0; bool _autoHotKey = true; }
Toolbar stoneroad : "base"		{	Toolbar _parent = "transport";	int _sortPriority = 200;	Action _action = Tool;		ComponentDescription _tool = "Template/StoneRoad.rsc";				Keys _hotKey = Tool1; bool _autoHotKey = true; }
Toolbar woodbridge : "base"		{	Toolbar _parent = "transport";	int _sortPriority = 300;	Action _action = Tool;		ComponentDescription _tool = "Template/WoodBridge.rsc";				Keys _hotKey = Tool2; bool _autoHotKey = true; }
Toolbar tunnel : "base"			{	Toolbar _parent = "transport";	int _sortPriority = 400;	Action _action = Tool;		ComponentDescription _tool = "Template/Tunnel.rsc";					Keys _hotKey = Tool3; }

Toolbar storagebarn : "base"	{	Toolbar _parent = "storage";	int _sortPriority = 100;	Action _action = Tool;		ComponentDescription _tool = "Template/StorageBarn.rsc";			Keys _hotKey = Tool0; bool _autoHotKey = true;  }
Toolbar storageyard : "base"	{	Toolbar _parent = "storage";	int _sortPriority = 200;	Action _action = Tool;		ComponentDescription _tool = "Template/StorageYard.rsc";			Keys _hotKey = Tool1; bool _autoHotKey = true;  }
Toolbar market : "base"			{	Toolbar _parent = "storage";	int _sortPriority = 300;	Action _action = Tool;		ComponentDescription _tool = "Template/Market.rsc";					Keys _hotKey = Tool2; bool _autoHotKey = true;  }
Toolbar tradingpost : "base"	{	Toolbar _parent = "storage";	int _sortPriority = 400;	Action _action = Tool;		ComponentDescription _tool = "Template/TradingPost.rsc";			Keys _hotKey = Tool3; bool _autoHotKey = true;  }

Toolbar well : "base"			{	Toolbar _parent = "services";	int _sortPriority = 100;	Action _action = Tool;		ComponentDescription _tool = "Template/Well.rsc";					Keys _hotKey = Tool0; bool _autoHotKey = true;  }
Toolbar school : "base"			{	Toolbar _parent = "services";	int _sortPriority = 200;	Action _action = Tool;		ComponentDescription _tool = "Template/SchoolHouse.rsc";			Keys _hotKey = Tool1; bool _autoHotKey = true;  }
Toolbar doctor : "base"			{	Toolbar _parent = "services";	int _sortPriority = 300;	Action _action = Tool;		ComponentDescription _tool = "Template/DoctorHouse.rsc";			Keys _hotKey = Tool2; bool _autoHotKey = true;  }
Toolbar townhall : "base"		{	Toolbar _parent = "services";	int _sortPriority = 400;	Action _action = Tool;		ComponentDescription _tool = "Template/TownHall.rsc";				Keys _hotKey = Tool3; bool _autoHotKey = true;  }
Toolbar chapel : "base"			{	Toolbar _parent = "services";	int _sortPriority = 500;	Action _action = Tool;		ComponentDescription _tool = "Template/Chapel.rsc";					Keys _hotKey = Tool4; bool _autoHotKey = true;  }
Toolbar cemetery : "base"		{	Toolbar _parent = "services";	int _sortPriority = 600;	Action _action = Tool;		ComponentDescription _tool = "Template/Cemetery.rsc";				Keys _hotKey = Tool5; bool _autoHotKey = true;  }

Toolbar cropfield : "base"		{	Toolbar _parent = "food";	int _sortPriority = 100;	Action _action = Tool;		ComponentDescription _tool = "Template/CropField.rsc";				Keys _hotKey = Tool0; bool _autoHotKey = true;  }
Toolbar orchard : "base"		{	Toolbar _parent = "food";	int _sortPriority = 200;	Action _action = Tool;		ComponentDescription _tool = "Template/Orchard.rsc";				Keys _hotKey = Tool1; bool _autoHotKey = true;  }
Toolbar pasture : "base"		{	Toolbar _parent = "food";	int _sortPriority = 300;	Action _action = Tool;		ComponentDescription _tool = "Template/Pasture.rsc";				Keys _hotKey = Tool2; bool _autoHotKey = true;  }
Toolbar fish : "base"			{	Toolbar _parent = "food";	int _sortPriority = 400;	Action _action = Tool;		ComponentDescription _tool = "Template/FishermansDock.rsc";			Keys _hotKey = Tool3; bool _autoHotKey = true;  }
Toolbar hunter : "base"			{	Toolbar _parent = "food";	int _sortPriority = 500;	Action _action = Tool;		ComponentDescription _tool = "Template/HunterLodge.rsc";			Keys _hotKey = Tool4; bool _autoHotKey = true;  }
Toolbar gatherer : "base"		{	Toolbar _parent = "food";	int _sortPriority = 600;	Action _action = Tool;		ComponentDescription _tool = "Template/GathererShelter.rsc";		Keys _hotKey = Tool5; bool _autoHotKey = true;  }

Toolbar cutter : "base"			{	Toolbar _parent = "resources";	int _sortPriority = 100;	Action _action = Tool;		ComponentDescription _tool = "Template/CutterYard.rsc";				Keys _hotKey = Tool0; bool _autoHotKey = true;  }
Toolbar forester : "base"		{	Toolbar _parent = "resources";	int _sortPriority = 200;	Action _action = Tool;		ComponentDescription _tool = "Template/ForesterLodge.rsc";			Keys _hotKey = Tool1; bool _autoHotKey = true;  }
Toolbar herbalist : "base"		{	Toolbar _parent = "resources";	int _sortPriority = 300;	Action _action = Tool;		ComponentDescription _tool = "Template/Herbalist.rsc";				Keys _hotKey = Tool2; bool _autoHotKey = true;  }
Toolbar toolmaker : "base"		{	Toolbar _parent = "resources";	int _sortPriority = 400;	Action _action = Tool;		ComponentDescription _tool = "Template/ToolMaker.rsc";				Keys _hotKey = Tool3; bool _autoHotKey = true;  }
Toolbar tailor : "base"			{	Toolbar _parent = "resources";	int _sortPriority = 500;	Action _action = Tool;		ComponentDescription _tool = "Template/Tailor.rsc";					Keys _hotKey = Tool4; bool _autoHotKey = true;  }
Toolbar tavern : "base"			{	Toolbar _parent = "resources";	int _sortPriority = 600;	Action _action = Tool;		ComponentDescription _tool = "Template/Tavern.rsc";					Keys _hotKey = Tool5; bool _autoHotKey = true;  }
Toolbar ironmine : "base"		{	Toolbar _parent = "resources";	int _sortPriority = 700;	Action _action = Tool;		ComponentDescription _tool = "Template/IronMine.rsc";				Keys _hotKey = Tool6; bool _autoHotKey = true;  }
Toolbar quarry : "base"			{	Toolbar _parent = "resources";	int _sortPriority = 800;	Action _action = Tool;		ComponentDescription _tool = "Template/Quarry.rsc";					Keys _hotKey = Tool7; bool _autoHotKey = true;  }

Toolbar clearbuilt : "base"		{	Toolbar _parent = "removal";	int _sortPriority = 100;	Action _action = Tool;		ComponentDescription _tool = "Template/ClearBuildings.rsc";			Keys _hotKey = Tool0; bool _autoHotKey = true;  }
Toolbar clearall : "base"		{	Toolbar _parent = "removal";	int _sortPriority = 200;	Action _action = Tool;		ComponentDescription _tool = "Template/ClearResources.rsc";			Keys _hotKey = Tool1; bool _autoHotKey = true;  }
Toolbar cleartree : "base"		{	Toolbar _parent = "removal";	int _sortPriority = 300;	Action _action = Tool;		ComponentDescription _tool = "Template/ClearTree.rsc";				Keys _hotKey = Tool2; bool _autoHotKey = true;  }
Toolbar clearstone : "base"		{	Toolbar _parent = "removal";	int _sortPriority = 400;	Action _action = Tool;		ComponentDescription _tool = "Template/ClearStone.rsc";				Keys _hotKey = Tool3; bool _autoHotKey = true;  }
Toolbar cleariron : "base"		{	Toolbar _parent = "removal";	int _sortPriority = 500;	Action _action = Tool;		ComponentDescription _tool = "Template/ClearIron.rsc";				Keys _hotKey = Tool4; bool _autoHotKey = true;  }
Toolbar clearroad : "base"		{	Toolbar _parent = "removal";	int _sortPriority = 600;	Action _action = Tool;		ComponentDescription _tool = "Template/ClearRoad.rsc";				Keys _hotKey = Tool5; bool _autoHotKey = true;  }
Toolbar clearcancel : "base"	{	Toolbar _parent = "removal";	int _sortPriority = 700;	Action _action = Tool;		ComponentDescription _tool = "Template/ClearCancel.rsc";			Keys _hotKey = Tool6; bool _autoHotKey = true;  }


