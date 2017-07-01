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
		"radius",
		"statusicon",
		"ambientemitter",
		"Common.rsc:fireWoodBuilding",
		"particle",
		
		"statemachine",
		"cleararea",
		"build",
		"workplace",
		"destroy",
		"happiness",
		"marketlocation",
		"market",
	]
}

AmbientEmitterDescription ambientemitter
{
	bool _addOnCreate = false;
	SoundEffect _soundEffects [ "Audio/Effects/FireEffect.rsc" ]
}

MarketLocationDescription marketlocation { }
ClearAreaDescription cleararea { }
StateMachineDescription statemachine { }
ZoneDescription zone { }

HappinessDescription happiness
{
	HappinessType _happinessType = Goods;
	bool _requireWorker = true;
	int _idleRange = 0;
}

DestroyDescription destroy 
{ 
	int _damagedSkin = 1;
	int _damagedDecal = 1;
	int _minDamageLevel = 1;
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
	String _spriteName = "BuildMarket";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "Market";
	String _stringNameLwr = "MarketLwr";
	String _toolTip = "MarketTip";

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

	int _width = 14;
	int _height = 14;
	int _footprintRotation = -1;
	
	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"11111111111111 
		 10000000000001
		 10000000000001
		 10000000000001
		 10000000000001
		 10000000000001
		 10000000000001
		 10000000000001
		 10000000000001
		 10000000000001
		 10000000000001
		 10000000000001
		 10000000000001
		 11111111111111";

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"..............
		 .########_###.
		 .########_###.
		 .__________##.
		 .###__####___.
		 .###__####_##.
		 .###_______##.
		 .###__####___.
		 .###__####___.
		 .###_##____##.
		 .##__##____##.
		 .##__###___##.
		 .##___####_##.
		 .............. ";

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
			float _x0 = 0.0;
			float _y0 = 0.0;
			float _x1 = 896.0;
			float _y1 = 896.0;	
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
				"Models\Buildings\Market\MarketBuild01Picking.rsc",
				"Models\Buildings\Market\MarketBuild02Picking.rsc",
				"Models\Buildings\Market\MarketPicking.rsc"
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
				"Models\Buildings\Market\MarketBuild01Mesh.rsc",
				"Models\Buildings\Market\MarketBuild02Mesh.rsc",
				"Models\Buildings\Market\MarketMesh.rsc"
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
				"Models\Buildings\Market\MarketBuild01Mesh.rsc:edge",
				"Models\Buildings\Market\MarketBuild02Mesh.rsc:edge",
				"Models\Buildings\Market\MarketMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

InteractDescription interact
{
	PointList _pointList = "Models\Buildings\Market\MarketPoints.rsc";
}

StorageDescription storage
{
	// finished products that are used by people!
	RawMaterialFlags _storageFlags = Edible | Fuel | Tool | Health | Clothing | Iron | Wood | Textile;
	bool _areaBasedLimit = false;
	bool _available = false;
	int _volumeLimit = 10000;
}

WorkDescription work
{
	int _defaultWorkers = 12;

	bool _allowCountChange = true;
	int _minWorkerCount = 1;
	int _maxWorkerCount = 25;

}

WorkPlaceDescription workplace
{
	Profession _profession = "Game/Profession/Profession.rsc:vendor";
}

BuildDescription build
{
	int _workRequired = 100;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 58;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 62;
		}	
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialIron.rsc";
			int _count = 40;
		}	
	]
}

MarketDescription market
{
	float _fillLimit = 0.99;

	FillType _fillType
	[
		{
			RawMaterialFlags _flags = Fruit;
			float _ratio = 0.168;
		}
		{
			RawMaterialFlags _flags = Vegetable;
			float _ratio = 0.168;
		}
		{
			RawMaterialFlags _flags = Protein;
			float _ratio = 0.168;
		}
		{
			RawMaterialFlags _flags = Grain;
			float _ratio = 0.168;
		}
		{
			RawMaterialFlags _flags = Fuel;
			float _ratio = 0.168;
		}
		{
			RawMaterialFlags _flags = Tool;
			float _ratio = 0.02;
		}
		{
			RawMaterialFlags _flags = Health;
			float _ratio = 0.03;
		}
		{
			RawMaterialFlags _flags = Clothing;
			float _ratio = 0.06;
		}
		{
			RawMaterialFlags _flags = Iron;
			float _ratio = 0.02;
		}
		{
			RawMaterialFlags _flags = Wood;
			float _ratio = 0.02;
		}
		{
			RawMaterialFlags _flags = Textile;
			float _ratio = 0.02;
		}

	]
}

RadiusDescription radius
{
	int _radius = 45;
	MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}

UIDescription ui
{
	int _displayPage = 1;	// set to 1 for tab layout
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{
			ObjectType _type = RadiusUI;
		}
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "enableCutterWorkButton"; 
			String _insertAt = "pageTabHeader";
			DialogControllerConfig _config = "workButtonConfig";	
		}
		{ 
			ObjectType _type = StorageUI; 
			ElementDescription _element = "Dialog/Storage.rsc:storage"; 
			String _insertAt = "pageTab"; 
			ElementDescription _tabButton = "Dialog/Storage.rsc:buttonTabStorage";
		}
		{ 
			ObjectType _type = StorageCapacityUI; 
			ElementDescription _element = "Dialog/Storage.rsc:capacityShort"; 
			String _insertAt = "pageTabHeader"; 
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

ControlUIConfig workButtonConfig
{
	ObjectType _type = MarketComponent;
	int _controlId = 0;
}

CheckDescription enableCutterWorkButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelCutterWorkUncheck";	
	ElementDescription _check = "labelCutterWorkCheck";	
	Alignment _alignment = TopRight;
	int _topPad = 5;
}

LabelDescription labelCutterWorkCheck : "Dialog/Work.rsc:labelEnableWork"
{
	String _spriteName = "MarketWork";	
	int _imageWidth = 16;
	int _imageHeight = 16;
	int _minWidth = 64;
	int _minHeight = 0;
	int _spacing = 4;
	int _leftPad = 4;
	int _rightPad = 4;
	LabelPosition _labelPosition = TextRight;
}

LabelDescription labelCutterWorkUncheck : "labelCutterWorkCheck"
{
	Color _color = 0xFF2E2B28;
}

