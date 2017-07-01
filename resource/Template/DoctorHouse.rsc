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
		"particle"
		"statusicon",
		"ambientemitter",
		"Common.rsc:fireStoneBuilding",
		
		"statemachine",
		"cleararea",
		"workplace",
		"build",
		"destroy",
		"happiness",
		"attendance"
	]
}

AmbientEmitterDescription ambientemitter
{
	bool _addOnCreate = false;
	SoundEffect _soundEffects [ "Audio/Effects/FireEffect.rsc" ]
}


StorageDescription storage { }
ClearAreaDescription cleararea { }
StateMachineDescription statemachine { }
ZoneDescription zone { }

HappinessDescription happiness
{
	HappinessType _happinessType = Health;
	bool _requireWorker = true;
	int _idleRange = 5;
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
	String _spriteName = "BuildDoctor";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "Doctor";
	String _stringNameLwr = "DoctorLwr";
	String _toolTip = "DoctorTip";

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
	int _height = 7;

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
		 ####__#
		 ####__#
		 #####_#
		 _####_#
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
			float _x0 = 0.0;
			float _y0 = 1280.0;
			float _x1 = 448.0;
			float _y1 = 1728.0;	
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
				"Models\Buildings\DoctorHouse\DoctorHouseBuild01Picking.rsc", 
				"Models\Buildings\DoctorHouse\DoctorHouseBuild02Picking.rsc", 
				"Models\Buildings\DoctorHouse\DoctorHousePicking.rsc" 
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
				"Models\Buildings\DoctorHouse\DoctorHouseBuild01Mesh.rsc", 
				"Models\Buildings\DoctorHouse\DoctorHouseBuild02Mesh.rsc", 
				"Models\Buildings\DoctorHouse\DoctorHouseMesh.rsc" 
			] 
		}
	]

	int _displayIndex = 0;
	int _subIndex = 2;	
	bool _randomIndex = false;
}

HighlightDescription highlight
{
	EdgeGroup _meshes
	[
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Buildings\DoctorHouse\DoctorHouseBuild01Mesh.rsc:edge", 
				"Models\Buildings\DoctorHouse\DoctorHouseBuild02Mesh.rsc:edge", 
				"Models\Buildings\DoctorHouse\DoctorHouseMesh.rsc:edge" 
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}


InteractDescription interact
{
	PointList _pointList = "Models\Buildings\DoctorHouse\DoctorHousePoints.rsc";
}

ParticleDescription particle
{
	PointList _pointList = "Models\Buildings\DoctorHouse\DoctorHousePoints.rsc";

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

WorkDescription work
{
	int _defaultWorkers = 1;
}

WorkPlaceDescription workplace
{
	Profession _profession = "Game/Profession/Profession.rsc:doctor";
}

AttendanceDescription attendance
{
	int _maxCitizens = 30;
}

BuildDescription build
{
	int _workRequired = 150;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 52;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 78;
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
			ElementDescription _element = "enableDoctorWorkButton"; 
			String _insertAt = "userButton0";
			DialogControllerConfig _config = "workButtonConfig";	
		}
		{
			ObjectType _type = AttendanceUI;
			ElementDescription _element = "Dialog/Attendance.rsc:doctor"; 
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

CheckDescription enableDoctorWorkButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelDoctorWorkUncheck";	
	ElementDescription _check = "labelDoctorWorkCheck";	

	String _toolTipText = "EnableDoctorTip";
}

LabelDescription labelDoctorWorkCheck : "Dialog/Work.rsc:labelEnableWork"
{
	String _spriteName = "DoctorWork";	
}

LabelDescription labelDoctorWorkUncheck : "labelDoctorWorkCheck"
{
	Color _color = 0xFF2E2B28;
}

