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
		"statusicon",		
		"ambientemitter",
		"Common.rsc:fireWoodBuilding",
		"particle",

		"statemachine",
		"cleararea",
		"workplace",
		"build",
		"destroy",
		"attendance"
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
	String _spriteName = "BuildSchoolHouse";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "SchoolHouse";
	String _stringNameLwr = "SchoolHouseLwr";
	String _toolTip = "SchoolHouseTip";

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
	int _height = 5;
	int _footprintRotation = 90;
	
	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"00000001 
		 00000001
		 00000001 
		 00000001 
		 00000001";

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"#######. 
		 ##_____. 
		 #######. 
		 #######. 
		 #######.";

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
				"Models\Buildings\SchoolHouse\SchoolHouseBuild01Picking.rsc",
				"Models\Buildings\SchoolHouse\SchoolHouseBuild02Picking.rsc",
				"Models\Buildings\SchoolHouse\SchoolHousePicking.rsc"
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
				"Models\Buildings\SchoolHouse\SchoolHouseBuild01Mesh.rsc",
				"Models\Buildings\SchoolHouse\SchoolHouseBuild02Mesh.rsc",
				"Models\Buildings\SchoolHouse\SchoolHouseMesh.rsc"
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
				"Models\Buildings\SchoolHouse\SchoolHouseBuild01Mesh.rsc:edge",
				"Models\Buildings\SchoolHouse\SchoolHouseBuild02Mesh.rsc:edge",
				"Models\Buildings\SchoolHouse\SchoolHouseMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

FloorDescription floor
{
	PickingMesh _mesh = "Models\Buildings\SchoolHouse\SchoolHouseFloor.rsc";
}


InteractDescription interact
{
	PointList _pointList = "Models\Buildings\SchoolHouse\SchoolHousePoints.rsc";
}

StorageDescription storage
{
}

WorkDescription work
{
	int _defaultWorkers = 1;
}

WorkPlaceDescription workplace
{
	Profession _profession = "Game/Profession/Profession.rsc:teacher";
}

BuildDescription build
{
	int _workRequired = 80;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 50;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 16;
		}	
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialIron.rsc";
			int _count = 16;
		}	
	]
}

AttendanceDescription attendance
{
	int _maxCitizens = 20;
}

UIDescription ui
{
	int _displayPage = 0;	// set to 1 for tab layout
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";
	ElementController _controllers
	[
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "enableSchoolWorkButton"; 
			String _insertAt = "userButton0";
			DialogControllerConfig _config = "workButtonConfig";	
		}
		{
			ObjectType _type = AttendanceUI;
			ElementDescription _element = "Dialog/Attendance.rsc:school"; 
			String _insertAt = "userButton1";
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
	ObjectType _type = AttendanceComponent;
	int _controlId = 0;
}

CheckDescription enableSchoolWorkButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelSchoolWorkUncheck";	
	ElementDescription _check = "labelSchoolWorkCheck";	

	String _toolTipText = "EnableSchoolTip";
}

LabelDescription labelSchoolWorkCheck : "Dialog/Work.rsc:labelEnableWork"
{
	String _spriteName = "SchoolWork";	
}

LabelDescription labelSchoolWorkUncheck : "labelSchoolWorkCheck"
{
	Color _color = 0xFF2E2B28;
}

