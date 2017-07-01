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
		"createplaced",
		"decal",
		"model",
		"picking",
		"highlight",
		"interact",
		"particle",
		"storage",
		"work",
		"radius",
		"statusicon",
		"tracker",	
		"autopickup",
		"ambientemitter",
		"Common.rsc:fireProduction",
				
		"statemachine",
		"cleararea",
		"build",				
		"workplace",
		"destroy",
		"forester",
	]
}

AmbientEmitterDescription ambientemitter
{
	bool _addOnCreate = false;
	SoundEffect _soundEffects [ "Audio/Effects/FireEffect.rsc" ]
}

AutoPickupDescription autopickup 
{
	bool _autoPickup = true;
}

TrackerDescription tracker { }
ClearAreaDescription cleararea { }
StateMachineDescription statemachine { }
ZoneDescription zone { }

DestroyDescription destroy 
{ 
	int _damagedSkin = 1;
	int _damagedDecal = 1;
}

StatusIconDescription statusicon
{
	SpriteSheet _spriteSheet = "StatusIcons\BuildingIconSpriteSheet.rsc";
	bool _fixedSize = true;
	float _size = 0.04;
	float _zoffset = 1.33;
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "BuildForesterLodge";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ForesterLodge";
	String _stringNameLwr = "ForesterLodgeLwr";
	String _toolTip = "ForesterLodgeTip";

	String _statusStrings
	[
		"CreateOk",
		"CreateBlocked",		
	]

	int _group = 3;
}

CreatePlacedDescription createplaced
{	
	PathBits _placeBits = Normal | Obstacle;
	
	int _width = 5;
	int _height = 6;
	int _footprintRotation = 0;
	
	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"00000
		 00000
		 00000
		 00000
		 00000
		 11111";	

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"#####
		 #####
		 #_###
		 #___# 
		 #_###
		 .....";

	bool _addToOverhead = true;
	Color _mapColor = 0xFF545454;
}

DecalDescription decal
{
	MaterialInstance _materials 
	[ 
		"Terrain/TiledDecals/BuildingFootprint1Material.rsc" 
		"Terrain/TiledDecals/BuildingFootprint1DamageMaterial.rsc" 
	]
	bool _tiled = false;
	float _initialAlpha = 0.5;
	
	float _mapWidth = 2048.0;

	DecalLocation _decalLocations
	[
		{
			float _x0 = 512.0;
			float _y0 = 1664.0;
			float _x1 = 832.0;
			float _y1 = 2048.0;	
		}
	]
}

PickingDescription picking
{
	MaterialInstance _selectMaterial = "Material/SelectionMask/SelectionMask.rsc";
	PickingGroup _meshes
	[
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Buildings\ForesterLodge\ForesterLodgeBuild01Picking.rsc",
				"Models\Buildings\ForesterLodge\ForesterLodgeBuild02Picking.rsc",
				"Models\Buildings\ForesterLodge\ForesterLodgePicking.rsc"
			] 
		}
	]
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			GraphicsMesh _mesh 
			[ 
				"Models\Buildings\ForesterLodge\ForesterLodgeBuild01Mesh.rsc",
				"Models\Buildings\ForesterLodge\ForesterLodgeBuild02Mesh.rsc",
				"Models\Buildings\ForesterLodge\ForesterLodgeMesh.rsc"
			] 
		}
	]
	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

HighlightDescription highlight
{
	EdgeGroup _meshes
	[
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Buildings\ForesterLodge\ForesterLodgeBuild01Mesh.rsc:edge",
				"Models\Buildings\ForesterLodge\ForesterLodgeBuild02Mesh.rsc:edge",
				"Models\Buildings\ForesterLodge\ForesterLodgeMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

InteractDescription interact
{
	PointList _pointList = "Models\Buildings\ForesterLodge\ForesterLodgePoints.rsc";
}

ParticleDescription particle
{
	PointList _pointList = "Models\Buildings\ForesterLodge\ForesterLodgePoints.rsc";

	ParticleAttachment _systems 
	[
		{
			Time _fadeInOutTime = 2.0;
			bool _addOnCreate = false;
			bool _addOnNotify = false;
			Particle _particle = "ParticleSystems\Fire\FireMedium.rsc";
		}
		{
			bool _addOnCreate = false;
			Particle _particle = "ParticleSystems\ChimneySmoke\ChimneySmoke.rsc";
			String _attachNode = "smoke1";
		}
		{
			bool _addOnCreate = false;
			Particle _particle = "ParticleSystems\ChimneySmoke\ChimneySmoke.rsc";
			String _attachNode = "smoke2";
		}
	]
}

StorageDescription storage
{
	bool _areaBasedLimit = false;
	bool _available = false;
	int _volumeLimit = 0;
}

WorkDescription work
{
	int _defaultWorkers = 4;

	bool _allowCountChange = true;
	int _minWorkerCount = 1;
	int _maxWorkerCount = 4;
}

WorkPlaceDescription workplace
{
	Profession _profession = "Game/Profession/Profession.rsc:forester";
	Profession _pickupProfession = "Game/Profession/Profession.rsc:laborer";
}

ForesterDescription forester
{
	ResourceLimit _resourceLimit = Log;
	ComponentDescription _naturalResource = "Template/NaturalResourceTree.rsc";
}

RadiusDescription radius
{
	int _radius = 30;
	MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}

BuildDescription build
{
	int _workRequired = 45;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 32;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 12;
		}	
	]
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{
			ObjectType _type = RadiusUI;
		}
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "foresterCutButton"; 
			String _insertAt = "userButton0";
			DialogControllerConfig _config = "cutButtonConfig";	
		}
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "foresterPlantButton"; 
			String _insertAt = "userButton1";
			DialogControllerConfig _config = "plantButtonConfig";	
		}
		/*
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "Dialog/AutoPickup.rsc:enableAutoPickupButton"; 
			String _insertAt = "userButton2";
			DialogControllerConfig _config = "Dialog/AutoPickup.rsc:autoPickupButtonConfig";	
		}*/
		{
			ObjectType _type = ResourceLimitUI;
			ElementDescription _element = "resourceLimit"; 
			String _insertAt = "userButton3";
			DialogControllerConfig _config = "resourceLimitConfig";	
		}
		{ 
			ObjectType _type = ProductionUI; 
			ElementDescription _element = "Dialog/Production.rsc:production3"; 
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
			String _insertAt = "userButton3";
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

ControlUIConfig cutButtonConfig
{
	ObjectType _type = ForesterComponent;
	int _controlId = 2;
}

ControlUIConfig plantButtonConfig
{
	ObjectType _type = ForesterComponent;
	int _controlId = 1;
}

CheckDescription foresterCutButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelForesterCutUncheck";	
	ElementDescription _check = "labelForesterCutCheck";	
	String _toolTipText = "ForesterCutTip";
}

CheckDescription foresterPlantButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelForesterPlantUncheck";	
	ElementDescription _check = "labelForesterPlantCheck";	
	String _toolTipText = "ForesterPlantTip";
	int _rightPad = 38;
}

LabelDescription labelForesterCutCheck : "Dialog/Work.rsc:labelEnableWork" { String _spriteName = "ForesterCut"; String _text = "ForesterCut";  }
LabelDescription labelForesterCutUncheck : "labelForesterCutCheck" { Color _color = 0xFF2E2B28; }

LabelDescription labelForesterPlantCheck : "Dialog/Work.rsc:labelEnableWork" { String _spriteName = "ForesterPlant"; String _text = "ForesterPlant";  }
LabelDescription labelForesterPlantUncheck : "labelForesterPlantCheck" { Color _color = 0xFF2E2B28; }


ResourceLimitUIConfig resourceLimitConfig
{
	ResourceLimit _resourceLimit = Log;
}

RibbonDescription resourceLimit
{
	Alignment _alignment = TopLeft;
	bool vertical = false;
	int _topPad = 8;
	int _cellPad = 8;

	ElementDescription _elements
	[
		"labelLimit",
		"editLimit",
	]

	Dialog _toolTipDialog = "Dialog/ToolTip.rsc";
	StringTable _toolTipStringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _toolTipText = "LogLimitTip";
}

LabelDescription labelLimit
{
	Alignment _alignment = MidLeft;

	Font _font = "Font\FontSmall.rsc";
	int _imageWidth = 20;
	int _imageHeight = 20;
	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;

	StringTable _stringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _text = "LogLimit";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "Log";
}

SpinnerDescription editLimit : "Dialog/SharedElements.rsc:spinnerSmall6"
{
	int _increment = 100;
	ElementDescription _border = "Dialog/SharedElements.rsc:flatButtonEnabledBorder";
}
