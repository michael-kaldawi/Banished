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
		"tracker",	
		"ambientemitter",
		"Common.rsc:fireProduction",
		"particle",

		"statemachine",
		"cleararea",
		"build",
		"workplace",
		"destroy",
		"consumeproduce",
	]
}

AmbientEmitterDescription ambientemitter
{
	bool _addOnCreate = false;
	SoundEffect _soundEffects [ "Audio/Effects/FireEffect.rsc" ]
}

TrackerDescription tracker { }
TailorLocationDescription marketlocation { }
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
	String _spriteName = "BuildTailor";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "Tailor";
	String _stringNameLwr = "TailorLwr";
	String _toolTip = "TailorTip";

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

	int _width = 7;
	int _height = 6;
	int _footprintRotation = 180;
	
	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"1111111 
		 0000000
		 0000000
		 0000000
		 0000000
		 0000000";

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		".......
		 ___####
		 ___####
		 #######
		 #######
		 #######";

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
			float _y0 = 896.0;
			float _x1 = 448.0;
			float _y1 = 1280.0;	
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
				"Models\Buildings\Tailor\TailorBuild01Picking.rsc",
				"Models\Buildings\Tailor\TailorBuild02Picking.rsc",
				"Models\Buildings\Tailor\TailorPicking.rsc"
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
				"Models\Buildings\Tailor\TailorBuild01Mesh.rsc",
				"Models\Buildings\Tailor\TailorBuild02Mesh.rsc",
				"Models\Buildings\Tailor\TailorMesh.rsc"
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
				"Models\Buildings\Tailor\TailorBuild01Mesh.rsc:edge",
				"Models\Buildings\Tailor\TailorBuild02Mesh.rsc:edge",
				"Models\Buildings\Tailor\TailorMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

InteractDescription interact
{
	PointList _pointList = "Models\Buildings\Tailor\TailorPoints.rsc";
}

StorageDescription storage
{
	RawMaterialFlags _storageFlags = Textile;
	bool _areaBasedLimit = false;
	bool _available = false;
	int _volumeLimit = 1000;
}

WorkDescription work
{
	int _defaultWorkers = 1;
}

WorkPlaceDescription workplace
{
	Profession _profession = "Game/Profession/Profession.rsc:tailor";
	Profession _pickupProfession = "Game/Profession/Profession.rsc:tailor";
}

BuildDescription build
{
	int _workRequired = 80;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 32;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 48;
		}	
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialIron.rsc";
			int _count = 16;
		}	
	]
}

ConsumeProduceDescription consumeproduce
{
	Product _products
	[
		{
			ComponentDescription _produceMaterial = "Template/RawMaterialLeatherCoat.rsc";
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialLeather.rsc";
					int _count = 2;
				}
			]
			ResourceLimit _resourceLimit = Clothing;
			String _requirements = "LeatherCoatRequire";
		}
		{
			ComponentDescription _produceMaterial = "Template/RawMaterialWoolCoat.rsc";
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialWool.rsc";
					int _count = 2;
				}
			]
			ResourceLimit _resourceLimit = Clothing;
			String _requirements = "WoolCoatRequire";
		}
		{
			ComponentDescription _produceMaterial = "Template/RawMaterialWinterCoat.rsc";
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialWool.rsc";
					int _count = 2;
				}
				{
					ComponentDescription _material = "Template/RawMaterialLeather.rsc";
					int _count = 2;
				}
			]
			ResourceLimit _resourceLimit = Clothing;
			String _requirements = "WinterCoatRequire";
		}
	]
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	int _workRequired = 5;
	float _workTime = 4.0;
}

UIDescription ui
{
	int _displayPage = 0;	// set to 1 for tab layout
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "enableTailorWorkButton"; 
			String _insertAt = "userButton0";
			DialogControllerConfig _config = "workButtonConfig";	
		}
		{ 
			ObjectType _type = StorageUI; 
			ElementDescription _element = "inventoryTab"; 
			String _insertAt = "userButton1"; 
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
			String _insertAt = "userTitle2";
		}
		{
			ObjectType _type = ResourceLimitUI;
			ElementDescription _element = "resourceLimit"; 
			String _insertAt = "userButton1";
			DialogControllerConfig _config = "resourceLimitConfig";	
		}
		{
			ObjectType _type = ConsumeProduceUI;
			ElementDescription _element = "Dialog/ConsumeProduce.rsc"; 
			String _insertAt = "userGroup0";
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
	ObjectType _type = ConsumeProduceComponent;
	int _controlId = 0;
}

CheckDescription enableTailorWorkButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelTailorWorkUncheck";	
	ElementDescription _check = "labelTailorWorkCheck";	
}

LabelDescription labelTailorWorkCheck : "Dialog/Work.rsc:labelEnableWork"
{
	String _spriteName = "TailorWork";	
}

LabelDescription labelTailorWorkUncheck : "labelTailorWorkCheck"
{
	Color _color = 0xFF2E2B28;
}

TabDescription inventoryTab : "ToolMaker.rsc:inventoryTab"
{
}

ResourceLimitUIConfig resourceLimitConfig
{
	ResourceLimit _resourceLimit = Clothing;
}

RibbonDescription resourceLimit
{
	Alignment _alignment = TopRight;
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
	String _toolTipText = "ClothesLimitTip";
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
	String _text = "ClothesLimit";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "WinterCoat";
}

SpinnerDescription editLimit : "Dialog/SharedElements.rsc:spinnerSmall6"
{
	int _increment = 100;
	ElementDescription _border = "Dialog/SharedElements.rsc:flatButtonEnabledBorder";
}
