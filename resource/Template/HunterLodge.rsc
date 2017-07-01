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
		"hunt",
		"destroy",
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
	String _spriteName = "BuildHunterLodge";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "HunterLodge";
	String _stringNameLwr = "HunterLodgeLwr";
	String _toolTip = "HunterLodgeTip";

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
	
	int _width = 6;
	int _height = 8;
	int _footprintRotation = 90;
	
	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"000011
		 000001
		 000001
		 000001
		 000111
		 000001
		 000001
		 000001";

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"####_.
		 #####.
		 #####.
		 #####.
		 ###__.
		 #####.
		 #####.
		 #####.";

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
			float _x0 = 1664.0;
			float _y0 = 896.0;
			float _x1 = 2048.0;
			float _y1 = 1408.0;	
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
				"Models\Buildings\HunterLodge\HunterLodgeBuild01Picking.rsc",
				"Models\Buildings\HunterLodge\HunterLodgeBuild02Picking.rsc",
				"Models\Buildings\HunterLodge\HunterLodgePicking.rsc"
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
				"Models\Buildings\HunterLodge\HunterLodgeBuild01Mesh.rsc",
				"Models\Buildings\HunterLodge\HunterLodgeBuild02Mesh.rsc",
				"Models\Buildings\HunterLodge\HunterLodgeMesh.rsc"
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
				"Models\Buildings\HunterLodge\HunterLodgeBuild01Mesh.rsc:edge",
				"Models\Buildings\HunterLodge\HunterLodgeBuild02Mesh.rsc:edge",
				"Models\Buildings\HunterLodge\HunterLodgeMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

InteractDescription interact
{
	PointList _pointList = "Models\Buildings\HunterLodge\HunterLodgePoints.rsc";
}

ParticleDescription particle
{
	PointList _pointList = "Models\Buildings\HunterLodge\HunterLodgePoints.rsc";

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
	int _defaultWorkers = 3;

	bool _allowCountChange = true;
	int _minWorkerCount = 1;
	int _maxWorkerCount = 4;
}

WorkPlaceDescription workplace
{
	Profession _profession = "Game/Profession/Profession.rsc:hunter";
	Profession _pickupProfession = "Game/Profession/Profession.rsc:laborer";
}

BuildDescription build
{
	int _workRequired = 45;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 34;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 12;
		}	
	]
}

HuntDescription hunt
{
	// one deer per month
	float _killTimeInMonths = 2.0;

	ResourceLimit _resourceLimit = Food;
}

RadiusDescription radius
{
	int _radius = 34;
	MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
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
			ElementDescription _element = "enableCutterWorkButton"; 
			String _insertAt = "userButton0";
			DialogControllerConfig _config = "workButtonConfig";	
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
			ObjectType _type = ResourceLimitUI;
			ElementDescription _element = "resourceLimit"; 
			String _insertAt = "userButton2";
			DialogControllerConfig _config = "CropField.rsc:resourceLimitConfig";	
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
			String _insertAt = "userButton2";
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
	int _leftPad = 96;
}

ControlUIConfig workButtonConfig
{
	ObjectType _type = HuntComponent;
	int _controlId = 0;
}

CheckDescription enableCutterWorkButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelCutterWorkUncheck";	
	ElementDescription _check = "labelCutterWorkCheck";	
	int _rightPad = 0;
}

LabelDescription labelCutterWorkCheck : "Dialog/Work.rsc:labelEnableWork"
{
	String _spriteName = "HunterWork";	
}

LabelDescription labelCutterWorkUncheck : "labelCutterWorkCheck"
{
	Color _color = 0xFF2E2B28;
}
