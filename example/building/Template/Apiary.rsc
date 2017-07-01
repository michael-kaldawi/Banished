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
		"particle",
		"picking",
		"highlight",
		"interact",
		"storage",
		"work",	
		"radius",
		"statusicon",
		"tracker",	
		
		"statemachine",
		"cleararea",
		"build",
		"workplace",
		"destroy",
		"happiness",
		"consumeproduce",
	]
}

// layout of the entity
ComponentDescription destroyed
{
	// how often to update
	UpdatePriority _updatePriority = None;
	
	// declare types that will be used
	Description _descriptions
	[
		"map",
		"zone",
		"decal",
		"modeldestroyed",
		"radius",
		"happiness",
	]
}

HappinessDescription happiness
{
	HappinessType _happinessType = Goods;
}

RadiusDescription radius
{
	int _radius = 20;
	// MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}


TrackerDescription tracker 
{ 
}

ClearAreaDescription cleararea 
{ 
	bool _flattenGround = true;
}

StateMachineDescription statemachine 
{ 
}

ZoneDescription zone 
{ 
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

ParticleDescription particle
{
	PointList _pointList = "Models\ApiaryPoints.rsc";

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

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "UI/ApiarySpriteSheet.rsc";
	String _spriteName = "BuildApiary";

	StringTable _stringTable = "UI/ApiaryStringTable.rsc";
	String _stringName = "Apiary";
	String _stringNameLwr = "ApiaryLwr";
	String _toolTip = "ApiaryTip";

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

	int _width = 8;
	int _height = 8;
	int _footprintRotation = 0;

	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"00000000
		 00000000
		 00000000
		 00000000
		 00000000
		 00000000
		 00000000
		 11111111";

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"########
		 #__#####
		 #______#
		 #####__#
		 #_____##
		 #_###__#
		 #_######
		 ........";

	bool _addToOverhead = true;
	Color _mapColor = 0xFF545454;
}

DecalDescription decal
{
	MaterialInstance _materials 
	[ 
		"Models/MaterialInstance/ApiaryFootprintMaterial.rsc" 
		"Models/MaterialInstance/ApiaryFootprintDamageMaterial.rsc" 
	]
	bool _tiled = false;
	float _initialAlpha = 0.5;
	
	float _mapWidth = 512.0;

	DecalLocation _decalLocations
	[
		{
			float _x0 = 0.0;
			float _y0 = 0.0;
			float _x1 = 512.0;
			float _y1 = 512.0;	
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
				"Models\ApiaryBuild01Picking.rsc",
				"Models\ApiaryBuild02Picking.rsc",
				"Models\ApiaryPicking.rsc"
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
				"Models\ApiaryBuild01Mesh.rsc",
				"Models\ApiaryBuild02Mesh.rsc",
				"Models\ApiaryMesh.rsc"
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
				"Models\ApiaryBuild01Mesh.rsc:edge",
				"Models\ApiaryBuild02Mesh.rsc:edge",
				"Models\ApiaryMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

InteractDescription interact
{
	PointList _pointList = "Models\ApiaryPoints.rsc";
}

StorageDescription storage
{
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
	Profession _profession = "Profession/Profession.rsc:beekeeper";
	Profession _pickupProfession = "Profession/Profession.rsc:beekeeper";
}

ConsumeProduceDescription consumeproduce
{
	Product _products
	[
		{
			ComponentDescription _produceMaterial = "Template/RawMaterialHoney.rsc";
			ResourceLimit _resourceLimit = Food;
		}
	]

	StringTable _stringTable = "UI/ApiaryStringTable.rsc";

	float _workTime = 4.0;
	ToolType _toolType = Hoe;
	int _workRequired = 10;
}

BuildDescription build
{
	int _workRequired = 60;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 54;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 24;
		}	
	]
}

UIDescription ui
{
	int _displayPage = 0;	// set to 1 for tab layout
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "enableWorkButton"; 
			String _insertAt = "userButton0";
			DialogControllerConfig _config = "workButtonConfig";	
		}
		{
			ObjectType _type = ResourceLimitUI;
			ElementDescription _element = "resourceLimit"; 
			String _insertAt = "userButton1";
			DialogControllerConfig _config = "resourceLimitConfig";	
		}
		{ 
			ObjectType _type = ProductionUI; 
			ElementDescription _element = "Dialog/Production.rsc:production4"; 
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

CheckDescription enableWorkButton : "Dialog/SharedElements.rsc:checkSimple"
{
	int _topPad = 4;

	Dialog _toolTipDialog = "Dialog/ToolTip.rsc";
	StringTable _toolTipStringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _toolTipText = "EnableWorkTip";

	ElementDescription _content = "labelWorkUncheck";	
	ElementDescription _check = "labelWorkCheck";	
}

LabelDescription labelWorkCheck
{
	int _topPad = 4;
	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
	int _minWidth = 61;
	int _minHeight = 61;

	Alignment _alignment = MidCenter;

	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _text = "EnableWork";

	int _spacing = 2;
	LabelPosition _labelPosition = TextBottom;
	Alignment _textAlignment = MidCenter;

	SpriteSheet _spriteSheet = "UI/ApiarySpriteSheet.rsc";
	String _spriteName = "AphiaryWork";	
}

LabelDescription labelWorkUncheck : "labelWorkCheck"
{
	Color _color = 0xFF2E2B28;
}

ResourceLimitUIConfig resourceLimitConfig
{
	ResourceLimit _resourceLimit = Food;
}

RibbonDescription resourceLimit
{
	Alignment _alignment = TopLeft;
	bool vertical = false;
	int _topPad = 24;
	int _cellPad = 8;
	int _minWidth = 222;

	ElementDescription _elements
	[
		"labelLimit",
		"editLimit",
	]

	Dialog _toolTipDialog = "Dialog/ToolTip.rsc";
	StringTable _toolTipStringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _toolTipText = "FoodLimitTip";
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
	String _text = "FoodLimit";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "Potato";
}

SpinnerDescription editLimit : "Dialog/SharedElements.rsc:spinnerSmall6"
{
	int _increment = 100;
	ElementDescription _border = "Dialog/SharedElements.rsc:flatButtonEnabledBorder";
}

