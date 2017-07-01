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
		"storage",
		"work",	
		"statusicon",	
		"ambientemitter",
		"Common.rsc:fireStoneBuilding",
		"particle",

		"statemachine",
		"cleararea",
		"build",
		"workplace",
		"destroy",
		"immigration"
	]
}

AmbientEmitterDescription ambientemitter
{
	bool _addOnCreate = false;
	SoundEffect _soundEffects [ "Audio/Effects/FireEffect.rsc" ]
}

ClearAreaDescription cleararea { }
StateMachineDescription statemachine { }
ZoneDescription zone { }

DestroyDescription destroy 
{ 
	int _damagedSkin = 1;
	int _damagedDecal = 1;
}

ParticleDescription particle
{
	ParticleAttachment _systems 
	[
		{
			Time _fadeInOutTime = 2.0;
			bool _addOnCreate = false;
			bool _addOnNotify = false;
			Particle _particle = "ParticleSystems\Fire\FireLarge.rsc";
		}
	]
}

ImmigrationDescription immigration
{
	ComponentDescription _nomad = "Template/Nomad.rsc";

	int _requiredPopulation = 8;
	ComponentDescription _requiredStructures
	[
		"Template/Market.rsc"
		"Template/TradingPost.rsc"
	]

	float _minGroupPercent = 0.05;
	float _maxGroupPercent = 0.15;
	float _timeDelayMonths = 24;
	float _timeDelayMonthsTol = 48;
	int _arriveMinMonth = 1;
	int _arriveMaxMonth = 3;
	int _leaveMonth = 7;
	int _spawnRadius = 5;

	float _sicknessAmount = 1.0;
	int _sicknessTimeInMonths = 6;
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
	String _spriteName = "BuildTownHall";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "TownHall";
	String _stringNameLwr = "TownHallLwr";
	String _toolTip = "TownHallTip";

	String _statusStrings
	[
		"CreateOk",
		"CreateBlocked",		
	]

	int _group = 2;
	int _maxInstances = 1;
}

CreatePlacedDescription createplaced
{
	PathBits _placeBits = Normal | Obstacle;

	int _width = 10;
	int _height = 9;
	int _footprintRotation = 0;
	
	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"0000000000 
		 0000000000
		 0000000000
		 0000000000 
		 0000000000
		 0000000000
		 0000000000
		 0000000000
		 1111111111";

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"___#####__
		 ##########
		 ########## 
		 ########## 
		 ##########
		 ##########
		 ##########
		 __######__
		 ..........";

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
			float _x0 = 1088.0;
			float _y0 = 1472.0;
			float _x1 = 1600.0;
			float _y1 = 1948.0;	
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
				"Models\Buildings\TownHall\TownHallBuild01Picking.rsc",
				"Models\Buildings\TownHall\TownHallBuild02Picking.rsc",
				"Models\Buildings\TownHall\TownHallPicking.rsc"
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
				"Models\Buildings\TownHall\TownHallBuild01Mesh.rsc",
				"Models\Buildings\TownHall\TownHallBuild02Mesh.rsc",
				"Models\Buildings\TownHall\TownHallMesh.rsc"
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
				"Models\Buildings\TownHall\TownHallBuild01Mesh.rsc:edge",
				"Models\Buildings\TownHall\TownHallBuild02Mesh.rsc:edge",
				"Models\Buildings\TownHall\TownHallMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

StorageDescription storage
{
}

InteractDescription interact
{
	PointList _pointList = "Models\Buildings\TownHall\TownHallPoints.rsc";
}

WorkDescription work
{
	int _defaultWorkers = 4;
}

WorkPlaceDescription workplace
{
	// no actual work done here once the building is built
	//Profession _profession = null;
	//Profession _pickupProfession = null;
}

BuildDescription build
{
	int _workRequired = 160;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 62;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 124;
		}	
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialIron.rsc";
			int _count = 48;
		}	
	]
}

UIDescription ui
{
	// save buffer size
	int _settingsBufferSize = 512;

	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
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
		{ 
			ObjectType _type = TownHallUI; 
			ElementDescription _element = "Dialog/TownHall.rsc:tabs"; 
			String _insertAt = "userGroup0"; 
		}
		{ 
			ObjectType _type = ImmigrationUI; 
			ElementDescription _element = "Dialog/Immigration.rsc"; 
			String _insertAt = "nomadTab"; 
		}
		{ 
			ObjectType _type = WorkPlaceUI; 
			ElementDescription _element = "Dialog/Work.rsc:workPlace"; 
			String _insertAt = "userTitle0"; 
		}
		{
			ObjectType _type = StatusIconUI;
			ElementDescription _element = "Dialog/Building.rsc:icons";
			String _insertAt = "userTitle1";
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitLog"; 
			String _insertAt = "limit0"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigLog";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitStone"; 
			String _insertAt = "limit1"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigStone";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitIron"; 
			String _insertAt = "limit2"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigIron";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitFuel"; 
			String _insertAt = "limit3"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigFuel";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitTool"; 
			String _insertAt = "limit4"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigTools";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitFood"; 
			String _insertAt = "limit5"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigFood";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitHerb"; 
			String _insertAt = "limit6"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigHerbs";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitClothing"; 
			String _insertAt = "limit7"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigClothing";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitAlcohol"; 
			String _insertAt = "limit8"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigAlcohol";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitCoal"; 
			String _insertAt = "limit9"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigCoal";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitTextile"; 
			String _insertAt = "limit10"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigTextile";	
		}

	]
}
