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
		"floor",		
		"interact",
		"storage",
		"work",
		"radius",
		"statusicon",
		"tracker",	
		"ambientemitter",
		"Common.rsc:fireWoodBuilding",
		"particle",
				
		"statemachine",
		"cleararea",
		"workplace",
		"build",
		"destroy",	
		"fishing"
	]
}

AmbientEmitterDescription ambientemitter
{
	bool _addOnCreate = false;
	SoundEffect _soundEffects [ "Audio/Effects/FireEffect.rsc" ]
}


TrackerDescription tracker { }
ClearAreaDescription cleararea 
{ 
	bool _flattenGround = false; 
}

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
	String _spriteName = "BuildFishermansDock";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "FishermansDock";
	String _stringNameLwr = "FishermansDockLwr";
	String _toolTip = "FishermansDockTip";

	String _statusStrings
	[
		"CreateOk",
		"CreateBlocked",		
	]

	int _group = 3;
}

CreatePlacedDescription createplaced
{
	PathBits _placeBits = Normal | Obstacle | Water | DeepWater;
	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Water | DeepWater,
		Water | DeepWater,
		Normal | Obstacle | Fast | Faster
	]
	String _placeBitmap =
		"3333
		 0000
		 0000
		 1111
		 1111 
		 2222
		 2222
		 2222
		 2222";
		 	
	int _width = 4;
	int _height = 9;

	int _footprintRotation = 180;

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"....
		 _###
		 _###
		 ___#
		 ___# 
		 ##_#
		 ___#
		 _###
		 _###";

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
			float _x0 = 832.0;
			float _y0 = 1472.0;
			float _x1 = 1088.0;
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
				"Models\Buildings\FishermansDock\FishermansDockBuild01Picking.rsc",
				"Models\Buildings\FishermansDock\FishermansDockBuild02Picking.rsc",
				"Models\Buildings\FishermansDock\FishermansDockPicking.rsc"
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
				"Models\Buildings\FishermansDock\FishermansDockBuild01Mesh.rsc",
				"Models\Buildings\FishermansDock\FishermansDockBuild02Mesh.rsc",
				"Models\Buildings\FishermansDock\FishermansDockMesh.rsc"
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
				"Models\Buildings\FishermansDock\FishermansDockBuild01Mesh.rsc:edge",
				"Models\Buildings\FishermansDock\FishermansDockBuild02Mesh.rsc:edge",
				"Models\Buildings\FishermansDock\FishermansDockMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

FloorDescription floor
{
	PickingMesh _mesh = "Models\Buildings\FishermansDock\FishermansDockFloor.rsc";
}

InteractDescription interact
{
	PointList _pointList = "Models\Buildings\FishermansDock\FishermansDockPoints.rsc";
}

StorageDescription storage
{
	bool _areaBasedLimit = false;
	bool _available = false;
	int _volumeLimit = 0;
}

WorkDescription work
{
	int _defaultWorkers = 4;

	bool _allowCountChange = true;
	int _minWorkerCount = 1;
	int _maxWorkerCount = 4;

}

BuildDescription build
{
	int _workRequired = 45;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 30;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 16;
		}	
	]
}

WorkPlaceDescription workplace
{
	Profession _profession = "Game/Profession/Profession.rsc:fisherman";
	Profession _pickupProfession = "Game/Profession/Profession.rsc:fisherman";
}

FishingDescription fishing
{
	ResourceLimit _resourceLimit = Food;

	ComponentDescription _population = "Template/PopulationFish.rsc";
	ComponentDescription _produceMaterial = "Template/RawMaterialFish.rsc";
	PathBits _pathType = Water | DeepWater;
}


RadiusDescription radius
{
	int _radius = 14;
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
			ElementDescription _element = "enableFishWorkButton"; 
			String _insertAt = "userButton0";
			DialogControllerConfig _config = "workButtonConfig";	
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
			String _insertAt = "userButton1";
		}
		{
			ObjectType _type = StatusIconUI;
			ElementDescription _element = "Dialog/Building.rsc:icons";
			String _insertAt = "userTitle2";
			DialogControllerConfig _config = "CropField.rsc:titleBuildStatus";	
		}
		{
			ObjectType _type = ResourceLimitUI;
			ElementDescription _element = "resourceLimit"; 
			String _insertAt = "userButton1";
			DialogControllerConfig _config = "CropField.rsc:resourceLimitConfig";	
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
	ObjectType _type = FishingComponent;
	int _controlId = 0;
}

CheckDescription enableFishWorkButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelFishWorkUncheck";	
	ElementDescription _check = "labelFishWorkCheck";	
}

LabelDescription labelFishWorkCheck : "Dialog/Work.rsc:labelEnableWork"
{
	String _spriteName = "FishWork";	
}

LabelDescription labelFishWorkUncheck : "labelFishWorkCheck"
{
	Color _color = 0xFF2E2B28;
}
