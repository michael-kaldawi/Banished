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
		"highlight",
		"picking",
		"highlight",
		"storage",
		"interact",
		"work",
		"statusicon",		

		"statemachine",
		"storagelocation",
		"destroy"
	]
}

ClearAreaDescription cleararea { }
StateMachineDescription statemachine { }
ZoneDescription zone { }
StorageLocationDescription storagelocation { }
DestroyDescription destroy { }

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
	String _spriteName = "BuildStorageYard";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "StorageCart";
	String _toolTip = "StorageCartTip";
}

CreatePlacedDescription createplaced
{
	PathBits _placeBits = Normal | Obstacle;

	int _width = 2;
	int _height = 2;
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"## 
		 ##";
	bool _addOnCreate = true;

	bool _addToOverhead = true;
	Color _mapColor = 0xFF545454;
}

DecalDescription decal
{
	MaterialInstance _materials [ "Terrain/TiledDecals/BuildingFootprint1Material.rsc" ]
	bool _tiled = false;
	float _initialAlpha = 1.0;
	
	float _mapWidth = 2048.0;

	DecalLocation _decalLocations
	[
		{
			float _x0 = 768.0;
			float _y0 = 1216.0;
			float _x1 = 896.0;
			float _y1 = 1344.0;	
		}
	]
}

PickingDescription picking
{
	MaterialInstance _selectMaterial = "Material/SelectionMask/SelectionMask.rsc";
	PickingGroup _meshes
	[
		{ PickingMesh _mesh [ "Models\Buildings\StorageCart\StorageCartPicking.rsc"	] }
	]
}


ModelDescription model
{
	MeshGroup _meshes
	[
		{ GraphicsMesh _mesh [ "Models\Buildings\StorageCart\StorageCartMesh.rsc"	] }
	]
	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

HighlightDescription highlight
{
	EdgeGroup _meshes
	[
		{ EdgeMesh _mesh [ "Models\Buildings\StorageCart\StorageCartMesh.rsc:edge" ] }
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

InteractDescription interact
{
	PointList _pointList = "Models\Buildings\StorageCart\StorageCartPoints.rsc";
}

WorkDescription work
{
	int _defaultWorkers = 8;
}

StorageDescription storage
{
	RawMaterialFlags _storageFlags = Edible | Fuel | Tool | Health | Clothing | Textile;

	/*
	InitialStorage _initialStorage
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialTool.rsc";
			int _count = 50;
		}		
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialPotato.rsc";
			int _count = 900;
		}	
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialFirewood.rsc";
			int _count = 100;
		}	
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialLeatherCoat.rsc";
			int _count = 20;
		}
	]*/
	
	bool _areaBasedLimit = false;
	bool _available = true;
	int _volumeLimit = 2500;
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
			ObjectType _type = DestroyUI; 
			ElementDescription _element = "Dialog/Destroy.rsc:destroy"; 
			String _insertAt = "pageDestroy"; 
		}
		{
			ObjectType _type = StatusIconUI;
			ElementDescription _element = "Dialog/Building.rsc:icons";
			String _insertAt = "userTitle0";
		}
	]
}
