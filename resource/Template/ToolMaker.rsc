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
		"statusicon",	
		"tracker",	
		"ambientemitter",
		"Common.rsc:fireStoneHouse",

		"statemachine",
		"cleararea",
		"workplace",		
		"build",
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
	String _spriteName = "BuildToolMaker";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ToolMaker";
	String _stringNameLwr = "ToolMakerLwr";
	String _toolTip = "ToolMakerTip";

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
	int _height = 5;
	int _footprintRotation = 0;
	
	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"0000000 
		 0000000
		 0000000
		 0000000
		 1111111";

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"####### 
		 #######  
		 ##__### 
		 ____### 
		 .......";

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
			float _x0 = 448.0;
			float _y0 = 896.0;
			float _x1 = 896.0;
			float _y1 = 1216.0;	
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
				"Models\Buildings\ToolMaker\ToolMakerBuild01Picking.rsc",
				"Models\Buildings\ToolMaker\ToolMakerBuild02Picking.rsc",
				"Models\Buildings\ToolMaker\ToolMakerPicking.rsc"
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
				"Models\Buildings\ToolMaker\ToolMakerBuild01Mesh.rsc",
				"Models\Buildings\ToolMaker\ToolMakerBuild02Mesh.rsc",
				"Models\Buildings\ToolMaker\ToolMakerMesh.rsc"
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
				"Models\Buildings\ToolMaker\ToolMakerBuild01Mesh.rsc:edge",
				"Models\Buildings\ToolMaker\ToolMakerBuild02Mesh.rsc:edge",
				"Models\Buildings\ToolMaker\ToolMakerMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}


InteractDescription interact
{
	PointList _pointList = "Models\Buildings\ToolMaker\ToolMakerPoints.rsc";
}

ParticleDescription particle
{
	PointList _pointList = "Models\Buildings\ToolMaker\ToolMakerPoints.rsc";

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
	]
}

StorageDescription storage
{
	RawMaterialFlags _storageFlags = Fuel | Wood | Iron;
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
	Profession _profession = "Game/Profession/Profession.rsc:toolmaker";
	Profession _pickupProfession = "Game/Profession/Profession.rsc:toolmaker";
}

ConsumeProduceDescription consumeproduce
{
	Product _products
	[
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialIron.rsc";
					int _count = 1;
				}
				{
					ComponentDescription _material = "Template/RawMaterialWood.rsc";
					int _count = 1;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialTool.rsc";
			ResourceLimit _resourceLimit = Tools;
			String _requirements = "ToolRequire";
		}
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialCoal.rsc";
					int _count = 1;
				}
				{
					ComponentDescription _material = "Template/RawMaterialIron.rsc";
					int _count = 1;
				}
				{
					ComponentDescription _material = "Template/RawMaterialWood.rsc";
					int _count = 1;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialSteelTool.rsc";
			ResourceLimit _resourceLimit = Tools;
			String _requirements = "SteelToolRequire";
		}
	]
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	int _workRequired = 5;
	ToolType _toolType = Anvil;
	float _workTime = 4.0;
	
}

BuildDescription build
{
	int _workRequired = 90;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 32;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 55;
		}	
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialIron.rsc";
			int _count = 32;
		}	
	]
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "enableToolMakerWorkButton"; 
			String _insertAt = "userButton0";
			DialogControllerConfig _config = "workButtonConfig";	
		}
		{ 
			ObjectType _type = StorageUI; 
			ElementDescription _element = "inventoryTab2"; 
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

CheckDescription enableToolMakerWorkButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelToolMakerWorkUncheck";	
	ElementDescription _check = "labelToolMakerWorkCheck";	
}

LabelDescription labelToolMakerWorkCheck : "Dialog/Work.rsc:labelEnableWork"
{
	String _spriteName = "ToolMakerWork";	
}

LabelDescription labelToolMakerWorkUncheck : "labelToolMakerWorkCheck"
{
	Color _color = 0xFF2E2B28;
}

TabDescription inventoryTab
{
	int _topPad = 4;

	ElementDescription _outerBorderTop = "Dialog/SharedElements.rsc:tabBorderTop";
	ElementDescription _outerBorderBottom = "Dialog/SharedElements.rsc:tabBorderBottom";
	ElementDescription _innerBorder = "Dialog/SharedElements.rsc:raisedBorder";

	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _connectStart = "TabStart";
	String _connectMid = "TabMid";
	String _connectEnd = "TabEnd";

	int _elementPad = 4;

	Tab _tabs
	[
		{ 
			ElementDescription _button = "Dialog/Storage.rsc:buttonTabStorage";	
			ElementDescription _content = "Dialog/Storage.rsc:storageTiny";
		}
	]
}

TabDescription inventoryTab2 : "inventoryTab"
{
	Tab _tabs
	[
		{ 
			ElementDescription _button = "Dialog/Storage.rsc:buttonTabStorage";	
			ElementDescription _content = "Dialog/Storage.rsc:storageTiny4";
		}
	]
}


ResourceLimitUIConfig resourceLimitConfig
{
	ResourceLimit _resourceLimit = Tools;
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
	String _toolTipText = "ToolLimitTip";
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
	String _text = "ToolLimit";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "Tool";
}

SpinnerDescription editLimit : "Dialog/SharedElements.rsc:spinnerSmall6"
{
	int _increment = 100;
	ElementDescription _border = "Dialog/SharedElements.rsc:flatButtonEnabledBorder";
}
