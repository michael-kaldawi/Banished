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
		"storage",
		"createplaced",
		"decal",
		"model",
		"picking",
		"highlight",
		"interact",
		"work",
		"radius",
		"statusicon",
		"particle",
		
		"statemachine",
		"cleararea",
		"build",		
		"workplace",
		"destroy",
		"happiness",
		"well",
	]
}

ClearAreaDescription cleararea { }
StateMachineDescription statemachine { }
ZoneDescription zone { }

WellDescription well
{
}

HappinessDescription happiness
{
	HappinessType _happinessType = Safety;
	int _idleRange = 2;
}

RadiusDescription radius
{
	int _radius = 20;
	// MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}

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

StorageDescription storage
{
	bool _areaBasedLimit = false;
	bool _available = false;
	int _volumeLimit = 1000;
}


ParticleDescription particle
{
	ParticleAttachment _systems 
	[
		{
			Time _fadeInOutTime = 2.0;
			bool _addOnCreate = false;
			bool _addOnNotify = false;
			Particle _particle = "ParticleSystems\Fire\FireSmall.rsc";
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
	String _spriteName = "BuildWell";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "Well";
	String _stringNameLwr = "WellLwr";
	String _toolTip = "WellTip";

	String _statusStrings
	[
		"CreateOk",
		"CreateBlocked",		
	]

	int _group = 2;
}

CreatePlacedDescription createplaced
{
	PathBits _placeBits = Normal | Obstacle;
	int _width = 3;
	int _height = 3;
	int _footprintRotation = -1;
	
	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"111
		 101
		 111";

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"...
		 .#.
		 ...";	

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
			float _x0 = 1600.0;
			float _y0 = 1728.0;
			float _x1 = 1792.0;
			float _y1 = 1920.0;	
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
				"Models\Buildings\Well\WellBuild01Picking.rsc",
				"Models\Buildings\Well\WellBuild02Picking.rsc",
				"Models\Buildings\Well\WellBuild03Picking.rsc",
				"Models\Buildings\Well\WellPicking.rsc"
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
				"Models\Buildings\Well\WellBuild01Mesh.rsc",
				"Models\Buildings\Well\WellBuild02Mesh.rsc",
				"Models\Buildings\Well\WellBuild03Mesh.rsc",
				"Models\Buildings\Well\WellMesh.rsc"
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
				"Models\Buildings\Well\WellBuild01Mesh.rsc:edge",
				"Models\Buildings\Well\WellBuild02Mesh.rsc:edge",
				"Models\Buildings\Well\WellBuild03Mesh.rsc:edge",
				"Models\Buildings\Well\WellMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

InteractDescription interact
{
	PointList _pointList = "Models\Buildings\Well\WellPoints.rsc";
}

WorkDescription work
{
	int _defaultWorkers = 2;
}

WorkPlaceDescription workplace
{
	// no actual work done here once the building is built
	//Profession _profession = null;
	//Profession _pickupProfession = null;
}

BuildDescription build
{
	int _workRequired = 80;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 4;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 40;
		}	
	]
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{ ElementDescription _element = "groupEmpty"; String _insertAt = "userGroup0"; }
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

GroupDescription groupEmpty
{
	int _minWidth = 287;
	int _minHeight = 64;
}