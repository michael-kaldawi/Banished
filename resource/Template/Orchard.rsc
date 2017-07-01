// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fourth;
	
	// declare types that will be used
	Description _descriptions
	[
		"ui",
	
		"map",
		"zone",
		"toolbar",
		"createdrag",
		"decal",
		"work",
		"particle",
		"disease",
		"highlight",
		"statusicon",
		"tracker",	
		"autopickup",
				
		"statemachine",
		"cleararea",
		"destroy",
		"workplace",		
		"orchard",
	]
}


AutoPickupDescription autopickup 
{
	bool _autoPickup = true;
}

TrackerDescription tracker { }
ClearAreaDescription cleararea 
{ 
	bool _flattenGround = false;
	int _workerCount = 8;
}
StateMachineDescription statemachine { }
ZoneDescription zone { }
DestroyDescription destroy { }

StatusIconDescription statusicon
{
	SpriteSheet _spriteSheet = "StatusIcons\BuildingIconSpriteSheet.rsc";
	bool _fixedSize = true;
	float _size = 0.04;
	float _zoffset = 1.33;
}

MapDescription map
{
	PathType _pathType = Occasional;

	bool _addToOverhead = true;
	Color _mapColor = 0xFF80694D;
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "BuildOrchard";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "Orchard";
	String _stringNameLwr = "OrchardLwr";
	String _toolTip = "OrchardTip";

	String _statusStrings
	[
		"CreateOk",
		"CreateTooSmall",
		"CreateTooBig",
		"CreateBlocked",		
	]

	int _group = 3;
}

CreateDragDescription createdrag
{
	bool _ignoreZones = false;
	
	PathBits _placeBits = Normal | Obstacle;
	
	int _maxWidth = 15;
	int _maxHeight = 15;
	int _minWidth = 4;
	int _minHeight = 4;		

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";		
}

WorkDescription work
{
	int _defaultWorkers = 3;

	bool _allowCountChange = true;
	int _minWorkerCount = 1;
	int _maxWorkerCount = 4;

	int _maxArea = 225;
	bool _scaleWorkersWithSize = true;
}

DecalDescription decal
{
	MaterialInstance _materials [ "Terrain/TiledDecals/OrchardMaterial.rsc" ]
	bool _tiled = true;
	float _initialAlpha = 0.5;
}

HighlightDescription highlight
{
	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

WorkPlaceDescription workplace
{
	Profession _profession = "Game/Profession/Profession.rsc:farmer";
	Profession _pickupProfession = "Game/Profession/Profession.rsc:farmer";
}

OrchardDescription orchard
{
	ResourceLimit _resourceLimit = Food;

	int _widthSpacing = 2;
	int _heightSpacing = 3;
	float _growthPercentOnTend = 0.005;
}

DiseaseDescription disease
{
	int _startMonth = 0;
	int _endMonth = 12;
	float _spawnIntervalInMonths = 0.25;
	float _lowSpawnChance = 200;
	float _highSpawnChance = 150;

	float _killIntervalInMonths = 0.25;
	float _spreadIntervalInMonths = 0.125;
	int _spreadRadius = 20;

	float _diseaseLengthInMonths = 8;
}

ParticleDescription particle
{
	ParticleAttachment _systems 
	[
		{
			bool _addOnCreate = false;
			bool _addOnNotify = false;

			Particle _particle = "ParticleSystems\CropDisease\CropDisease.rsc";
		}
	]
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{
			ElementDescription _element = "selectResource"; 
			String _insertAt = "userButton0";
		}
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "harvestButton"; 
			String _insertAt = "userButton1";
			DialogControllerConfig _config = "harvestConfig";	
		}
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "autoButton"; 
			String _insertAt = "userButton2";
			DialogControllerConfig _config = "autoConfig";	
		}
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "cutButton"; 
			String _insertAt = "userButton3";
			DialogControllerConfig _config = "cutConfig";	
		}
		/*
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "Dialog/AutoPickup.rsc:enableAutoPickupButton"; 
			String _insertAt = "userButton1";
			DialogControllerConfig _config = "Dialog/AutoPickup.rsc:autoPickupButtonConfig";	
		}
		*/
		{ 
			ObjectType _type = OrchardUI; 
			ElementDescription _element = "Dialog/Orchard.rsc:orchard"; 
			String _insertAt = "userGroup0"; 
		}
		{
			ObjectType _type = ResourceLimitUI;
			ElementDescription _element = "CropField.rsc:resourceLimit"; 
			String _insertAt = "userGroup1";
			DialogControllerConfig _config = "CropField.rsc:resourceLimitConfig";	
		}
		{ 
			ObjectType _type = ProductionUI; 
			ElementDescription _element = "Dialog/Production.rsc:production"; 
			String _insertAt = "pageUser"; 
		}
		{ 
			ObjectType _type = PageToggleUI; 
			ElementDescription _element = "Dialog/Production.rsc:checkProduction"; 
			String _insertAt = "userTitle0"; 
		}
		{ 
			ObjectType _type = WorkPlaceUI; 
			ElementDescription _element = "Dialog/Work.rsc:workPlace"; 
			String _insertAt = "userTitle1"; 
		}
		{
			ObjectType _type = StatusIconUI;
			ElementDescription _element = "Dialog/Building.rsc:icons";
			String _insertAt = "userGroup1";
		}
		{
			ObjectType _type = StatusIconUI;
			ElementDescription _element = "Dialog/Building.rsc:icons";
			String _insertAt = "userTitle2";
			DialogControllerConfig _config = "CropField.rsc:titleBuildStatus";	
		}
		{ 
			ObjectType _type = BuildUI; 
			ElementDescription _element = "Dialog/Build.rsc:build"; 
			String _insertAt = "pageBuild"; 
		}
		{ 
			ObjectType _type = DestroyUI; 
			ElementDescription _element = "Dialog/Destroy.rsc:destroy"; 
			String _insertAt = "pageDestroy"; 
		}

	]
}

ControlUIConfig harvestConfig
{
	ObjectType _type = OrchardComponent;
	int _controlId = 1;
}

ControlUIConfig autoConfig
{
	ObjectType _type = OrchardComponent;
	int _controlId = 2;
}

ControlUIConfig cutConfig
{
	ObjectType _type = OrchardComponent;
	int _controlId = 3;
}

ButtonDescription harvestButton : "Dialog/Work.rsc:enableWorkButton"
{
	ElementDescription _content = "labelHarvest";	
	String _toolTipText = "OrchardHarvestTip";
}

CheckDescription autoButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelAutoUncheck";	
	ElementDescription _check = "labelAuto";	
	String _toolTipText = "OrchardAutoTip";
}

ButtonDescription cutButton : "Dialog/Work.rsc:enableWorkButton"
{
	ElementDescription _content = "labelCut";	
	String _toolTipText = "OrchardCutTip";
}


LabelDescription labelHarvest : "Dialog/Work.rsc:labelEnableWork" { String _spriteName = "CropFieldHarvest"; String _text = "CropFieldHarvest";  }
LabelDescription labelAuto : "Dialog/Work.rsc:labelEnableWork" { String _spriteName = "CropFieldAuto"; String _text = "CropFieldAuto";  }
LabelDescription labelAutoUncheck : "labelAuto" { Color _color = 0xFF2E2B28;  }
LabelDescription labelCut : "Dialog/Work.rsc:labelEnableWork" { String _spriteName = "ForesterCut"; String _text = "OrchardCut";  }

ComboDescription selectResource : "CropField.rsc:selectResource"
{
	String _toolTipText = "OrchardSelectTip";
}
