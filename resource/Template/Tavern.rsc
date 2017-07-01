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
		"interact",
		"particle",
		"storage",
		"work",
		"radius",
		"statusicon",
		"tracker",
		"ambientemitter",
		"Common.rsc:fireProduction",
		
		"statemachine",
		"cleararea",
		"workplace"
		"build",
		"destroy",
		"happiness",
		"storagelocation"
		"consumeproduce",
	]
}

AmbientEmitterDescription ambientemitter
{
	bool _addOnCreate = false;
	SoundEffect _soundEffects [ "Audio/Effects/FireEffect.rsc" ]
}

TrackerDescription tracker { }
ClearAreaDescription cleararea { }
StateMachineDescription statemachine { }
ZoneDescription zone { }

HappinessDescription happiness
{
	HappinessType _happinessType = Entertainment;
	bool _requireWorker = true;
	bool _requireStorage = true;
	RawMaterialFlags _requiredTypes = Alcohol;
	int _idleRange = 3;
}

RadiusDescription radius
{
	int _radius = 30;
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

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "BuildTavern";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "Tavern";
	String _stringNameLwr = "TavernLwr";
	String _toolTip = "TavernTip";

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
	
	int _width = 6;
	int _height = 7;
	int _footprintRotation = 0;

	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"000000
		 000000
		 000000
		 000000
		 000000
		 000000
		 111111";	

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"######
		 ######
		 ######
		 ######
		 ######
		 ___#__
		 ......";

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
			float _x0 = 512.0;
			float _y0 = 960.0;
			float _x1 = 896.0;
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
				"Models\Buildings\Tavern\TavernBuild01Picking.rsc", 
				"Models\Buildings\Tavern\TavernBuild02Picking.rsc", 
				"Models\Buildings\Tavern\TavernPicking.rsc" 
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
				"Models\Buildings\Tavern\TavernBuild01Mesh.rsc", 
				"Models\Buildings\Tavern\TavernBuild02Mesh.rsc", 
				"Models\Buildings\Tavern\TavernMesh.rsc" 
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
				"Models\Buildings\Tavern\TavernBuild01Mesh.rsc:edge" 
				"Models\Buildings\Tavern\TavernBuild02Mesh.rsc:edge" 
				"Models\Buildings\Tavern\TavernMesh.rsc:edge" 
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}


InteractDescription interact
{
	PointList _pointList = "Models\Buildings\Tavern\TavernPoints.rsc";
}

ParticleDescription particle
{
	PointList _pointList = "Models\Buildings\Tavern\TavernPoints.rsc";

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
			String _attachNode = "smoke";
		}
	]
}

StorageDescription storage
{
	RawMaterialFlags _storageFlags = Alcohol | Edible;
	bool _areaBasedLimit = false;
	bool _available = false;
	int _volumeLimit = 300;
}

StorageLocationDescription storagelocation 
{ 
	RawMaterialFlags _storageFlags = Alcohol;
}

WorkDescription work
{
	int _defaultWorkers = 1;
}

WorkPlaceDescription workplace
{
	Profession _profession = "Game/Profession/Profession.rsc:brewer";
	Profession _pickupProfession = "Game/Profession/Profession.rsc:brewer";
}

BuildDescription build
{
	int _workRequired = 90;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 52;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 12;
		}	
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialIron.rsc";
			int _count = 20;
		}	
	]
}

ConsumeProduceDescription consumeproduce
{
	Product _products
	[
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialApple.rsc";
					int _count = 30;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialAle.rsc";
			ResourceLimit _resourceLimit = Alcohol;

			String _requirements = "AleAppleRequire";
		}
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialBlueberry.rsc";
					int _count = 60;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialAle.rsc";
			ResourceLimit _resourceLimit = Alcohol;

			String _requirements = "AleBlueberryRequire";
		}
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialCherry.rsc";
					int _count = 30;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialAle.rsc";
			ResourceLimit _resourceLimit = Alcohol;

			String _requirements = "AleCherryRequire";
		}
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialPeach.rsc";
					int _count = 30;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialAle.rsc";
			ResourceLimit _resourceLimit = Alcohol;

			String _requirements = "AlePeachRequire";
		}
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialPear.rsc";
					int _count = 30;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialAle.rsc";
			ResourceLimit _resourceLimit = Alcohol;

			String _requirements = "AlePearRequire";
		}
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialPlum.rsc";
					int _count = 30;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialAle.rsc";
			ResourceLimit _resourceLimit = Alcohol;

			String _requirements = "AlePlumRequire";
		}
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialWheat.rsc";
					int _count = 100;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialAle.rsc";
			ResourceLimit _resourceLimit = Alcohol;

			String _requirements = "AleWheatRequire";
		}
	]

	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	int _workRequired = 10;
	ToolType _toolType = Scythe;
	float _workTime = 4.0;
	
}


UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "enableTavernWorkButton"; 
			String _insertAt = "userButton0";
			DialogControllerConfig _config = "workButtonConfig";	
		}
		{ 
			ObjectType _type = StorageUI; 
			ElementDescription _element = "Template/ToolMaker.rsc:inventoryTab2"; 
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

CheckDescription enableTavernWorkButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelTavernWorkUncheck";	
	ElementDescription _check = "labelTavernWorkCheck";	
}

LabelDescription labelTavernWorkCheck : "Dialog/Work.rsc:labelEnableWork"
{
	String _spriteName = "TavernWork";	
}

LabelDescription labelTavernWorkUncheck : "labelTavernWorkCheck"
{
	Color _color = 0xFF2E2B28;
}

ResourceLimitUIConfig resourceLimitConfig
{
	ResourceLimit _resourceLimit = Alcohol;
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
	String _toolTipText = "AlcoholLimitTip";
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
	String _text = "AlcoholLimit";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "Ale";
}

SpinnerDescription editLimit : "Dialog/SharedElements.rsc:spinnerSmall6"
{
	int _increment = 100;
	ElementDescription _border = "Dialog/SharedElements.rsc:flatButtonEnabledBorder";
}

