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
		"Common.rsc:fireWoodBuilding",
		"particle",

		"statemachine",
		"cleararea",
		"build",
		"workplace",
		"destroy",
		"storagelocation"
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
StorageLocationDescription storagelocation { }

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
			Particle _particle = "ParticleSystems\Fire\FireMedium.rsc";
		}
	]
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
	String _spriteName = "BuildStorageBarn";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "StorageBarn";
	String _stringNameLwr = "StorageBarnLwr";
	String _toolTip = "StorageBarnTip";

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

	int _width = 8;
	int _height = 5;
	int _footprintRotation = 270;
	
	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"10000001 
		 10000001
		 10000001 
		 10000001 
		 10000001";

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		".######. 
		 .######. 
		 .######. 
		 .######. 
		 .######.";

	bool _addToOverhead = true;
	Color _mapColor = 0xFF545454;
}

DecalDescription decal
{
	MaterialInstance _materials 
	[ 
		"Terrain/TiledDecals/BuildingFootprint8Material.rsc" 
		"Terrain/TiledDecals/BuildingFootprint8DamageMaterial.rsc" 
	]
	bool _tiled = false;
	float _initialAlpha = 0.5;
	
	float _mapWidth = 2048.0;

	DecalLocation _decalLocations
	[
		{
			float _x0 = 0.0;
			float _y0 = 1728.0;
			float _x1 = 512.0;
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
				"Models\Buildings\StorageBarn\StorageBarnBuild01Picking.rsc",
				"Models\Buildings\StorageBarn\StorageBarnBuild02Picking.rsc",
				"Models\Buildings\StorageBarn\StorageBarnPicking.rsc"
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
				"Models\Buildings\StorageBarn\StorageBarnBuild01Mesh.rsc",
				"Models\Buildings\StorageBarn\StorageBarnBuild02Mesh.rsc",
				"Models\Buildings\StorageBarn\StorageBarnMesh.rsc"
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
				"Models\Buildings\StorageBarn\StorageBarnBuild01Mesh.rsc:edge",
				"Models\Buildings\StorageBarn\StorageBarnBuild02Mesh.rsc:edge",
				"Models\Buildings\StorageBarn\StorageBarnMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

InteractDescription interact
{
	PointList _pointList = "Models\Buildings\StorageBarn\StorageBarnPoints.rsc";
}

StorageDescription storage
{
	RawMaterialFlags _storageFlags = Edible | Tool | Health | Clothing | Textile;
	bool _areaBasedLimit = false;
	bool _available = false;
	int _volumeLimit = 6000;
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
	int _workRequired = 60;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 48;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 16;
		}	
	]
}

UIDescription ui
{
	int _displayPage = 1;	// set to 1 for tab layout
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";
	ElementController _controllers
	[
		{ 
			ObjectType _type = StorageUI; 
			ElementDescription _element = "Dialog/Storage.rsc:storage"; 
			String _insertAt = "pageTab"; 
			ElementDescription _tabButton = "Dialog/Storage.rsc:buttonTabStorage";
		}
		{ 
			ObjectType _type = StorageCapacityUI; 
			ElementDescription _element = "Dialog/Storage.rsc:capacity"; 
			String _insertAt = "pageTabHeader"; 
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

	]
}