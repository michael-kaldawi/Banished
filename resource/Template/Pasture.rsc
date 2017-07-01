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
		"createfenced",
		"decal",
		"work",
		"storage",
		"model",
		"interact",
		"particle",
		"disease",
		"highlight",
		"statusicon",
		"tracker",	
		"autopickup",
				
		"statemachine",
		"cleararea",
		"build",
		"multiobject", 
		"destroy",
		"workplace",		
		"pasture"
	]
}


AutoPickupDescription autopickup 
{
	bool _autoPickup = true;
}

TrackerDescription tracker { }
MultiObjectDescription multiobject { }
InteractDescription interact { }
StorageDescription storage { }
ClearAreaDescription cleararea { int _workerCount = 8; }
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
	bool _addOnCreate = false;
	bool _neverAdd = true;

	bool _addToOverhead = true;
	Color _mapColor = 0xFF80694D;
}

PastureDescription pasture
{
	ResourceLimit _resourceLimit = Food;
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "BuildPasture";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "Pasture";
	String _stringNameLwr = "PastureLwr";
	String _toolTip = "PastureTip";

	String _statusStrings
	[
		"CreateOk",
		"CreateTooSmall",
		"CreateTooBig",
		"CreateBlocked",		
	]

	int _group = 3;
}

CreateFencedDescription createfenced
{
	PathBits _placeBits = Normal | Obstacle;
	
	int _maxWidth = 20;
	int _maxHeight = 20;
	int _minWidth = 7;
	int _minHeight = 7;		
	
	ComponentDescription _sections
	[
		"Template/AnimalShelter.rsc",
		"Template/WoodFenceEnd.rsc",
		"Template/WoodFenceCorner.rsc",
		"Template/WoodFenceStraight.rsc",
		"Template/WoodFenceStraightLong.rsc",
		"Template/WoodFenceGate.rsc",
	]

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";		
}

WorkDescription work
{
	int _defaultWorkers = 2;

	bool _allowCountChange = true;
	int _minWorkerCount = 1;
	int _maxWorkerCount = 2;

	int _maxArea = 400;
	bool _scaleWorkersWithSize = true;
}


DecalDescription decal
{
	MaterialInstance _materials [ "Terrain/TiledDecals/PastureMaterial.rsc" ]
	bool _tiled = true;
	float _initialAlpha = 1.0;
}

ModelDescription model
{
	int _displayIndex = 0;
	int _subIndex = -1;	
	bool _randomIndex = false;
}

HighlightDescription highlight
{
	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

BuildDescription build
{
	int _workRequired = 1;
	bool _scaledWithSize = true;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 1;
		}
	]
}

WorkPlaceDescription workplace
{
	Profession _profession = "Game/Profession/Profession.rsc:herdsman";
	Profession _pickupProfession = "Game/Profession/Profession.rsc:herdsman";
}

DiseaseDescription disease
{
	int _startMonth = 0;
	int _endMonth = 12;
	float _spawnIntervalInMonths = 0.25;
	float _lowSpawnChance = 200;
	float _highSpawnChance = 150;

	float _killIntervalInMonths = 0.2;
	float _spreadIntervalInMonths = 0.125;
	int _spreadRadius = 40;

	float _diseaseLengthInMonths = 12;
}

ParticleDescription particle
{
	ParticleAttachment _systems 
	[
		{
			bool _addOnCreate = false;
			bool _addOnNotify = false;
			bool _ignoreModelTransform = true;

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
			ElementDescription _element = "emptyButton"; 
			String _insertAt = "userButton1";
			DialogControllerConfig _config = "emptyConfig";	
		}
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "splitButton"; 
			String _insertAt = "userButton2";
			DialogControllerConfig _config = "splitConfig";	
		}
		/*
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "Dialog/AutoPickup.rsc:enableAutoPickupButton"; 
			String _insertAt = "userButton1";
			DialogControllerConfig _config = "Dialog/AutoPickup.rsc:autoPickupButtonConfig";	
		}*/
		{ 
			ObjectType _type = PastureUI; 
			ElementDescription _element = "Dialog/Pasture.rsc:pasture"; 
			String _insertAt = "userGroup0"; 
		}
		{
			ObjectType _type = ResourceLimitUI;
			ElementDescription _element = "resourceLimit"; 
			String _insertAt = "userGroup1";
			DialogControllerConfig _config = "CropField.rsc:resourceLimitConfig";	
		}
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "enablePastureWorkButton"; 
			String _insertAt = "userButton3";
			DialogControllerConfig _config = "workButtonConfig";	
		}
		{ 
			ObjectType _type = ProductionUI; 
			ElementDescription _element = "Dialog/Production.rsc:production4"; 
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

RibbonDescription resourceLimit : "CropField.rsc:resourceLimit"
{
	Alignment _alignment = TopLeft;
	bool vertical = false;
	int _topPad = -1;
}

ControlUIConfig emptyConfig
{
	ObjectType _type = PastureComponent;
	int _controlId = 0;
}

ControlUIConfig splitConfig
{
	ObjectType _type = PastureComponent;
	int _controlId = 1;
}

ButtonDescription emptyButton : "Dialog/Work.rsc:enableWorkButton"
{
	ElementDescription _content = "labelEmpty";	
	String _toolTipText = "PastureEmptyTip";
}

ButtonDescription splitButton : "Dialog/Work.rsc:enableWorkButton"
{
	ElementDescription _content = "labelSplit";	
	String _toolTipText = "PastureSplitTip";
}

LabelDescription labelEmpty : "Dialog/Work.rsc:labelEnableWork" { String _spriteName = "PastureEmpty"; String _text = "PastureEmpty";  }
LabelDescription labelSplit : "Dialog/Work.rsc:labelEnableWork" { String _spriteName = "PastureSplit"; String _text = "PastureSplit";  }

ComboDescription selectResource : "CropField.rsc:selectResource"
{
	String _toolTipText = "PastureSelectTip";
}

ControlUIConfig workButtonConfig
{
	ObjectType _type = PastureComponent;
	int _controlId = 2;
}

CheckDescription enablePastureWorkButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelPastureWorkUncheck";	
	ElementDescription _check = "labelPastureWorkCheck";	
	Alignment _alignment = MidRight;
	int _topPad = 0;
}

LabelDescription labelPastureWorkCheck : "Dialog/Work.rsc:labelEnableWork"
{
	String _spriteName = "PastureWork";	
	//int _imageWidth = 16;
	//int _imageHeight = 16;
	//int _minWidth = 64;
	//int _minHeight = 64;
	int _spacing = 4;
	int _leftPad = 4;
	int _rightPad = 4;
	LabelPosition _labelPosition = TextBottom;
}

LabelDescription labelPastureWorkUncheck : "labelPastureWorkCheck"
{
	Color _color = 0xFF2E2B28;
}

