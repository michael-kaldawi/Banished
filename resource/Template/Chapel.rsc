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

ClearAreaDescription cleararea { }
StateMachineDescription statemachine { }
ZoneDescription zone { }

HappinessDescription happiness
{
	HappinessType _happinessType = Spirit;
	bool _requireWorker = true;
	int _idleRange = 3;
}

RadiusDescription radius
{
	int _radius = 35;
	// MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}
AttendanceDescription attendance
{
	int _maxCitizens = 200;
}

DestroyDescription destroy 
{ 
	int _damagedSkin = 1;
	int _damagedDecal = 1;
}

WorkPlaceDescription workplace
{
	Profession _profession = "Game/Profession/Profession.rsc:priest";
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
	String _spriteName = "BuildChapel";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "Chapel";
	String _stringNameLwr = "ChapelLwr";
	String _toolTip = "ChapelTip";

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
	int _height = 12;

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
		 ########
		 ########
		 ########
		 ########
		 ########
		 ########
		 ########
		 _######_
		 _######_
		 ___##___
		 ........";

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
			float _x0 = 0.0;
			float _y0 = 960.0;
			float _x1 = 512.0;
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
				"Models\Buildings\Chapel\ChapelBuild01Picking.rsc", 
				"Models\Buildings\Chapel\ChapelBuild02Picking.rsc", 
				"Models\Buildings\Chapel\ChapelBuild03Picking.rsc", 
				"Models\Buildings\Chapel\ChapelPicking.rsc" 
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
				"Models\Buildings\Chapel\ChapelBuild01Mesh.rsc", 
				"Models\Buildings\Chapel\ChapelBuild02Mesh.rsc", 
				"Models\Buildings\Chapel\ChapelBuild03Mesh.rsc", 
				"Models\Buildings\Chapel\ChapelMesh.rsc" 
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
				"Models\Buildings\Chapel\ChapelBuild01Mesh.rsc:edge" 
				"Models\Buildings\Chapel\ChapelBuild02Mesh.rsc:edge" 
				"Models\Buildings\Chapel\ChapelBuild03Mesh.rsc:edge" 
				"Models\Buildings\Chapel\ChapelMesh.rsc:edge" 
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}


InteractDescription interact
{
	PointList _pointList = "Models\Buildings\Chapel\ChapelPoints.rsc";
}

ParticleDescription particle
{
	PointList _pointList = "Models\Buildings\Chapel\ChapelPoints.rsc";

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

StorageDescription storage
{
	bool _areaBasedLimit = false;
	bool _available = false;
}

WorkDescription work
{
	int _defaultWorkers = 1;
}

BuildDescription build
{
	int _workRequired = 150;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 50;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 130;
		}	
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialIron.rsc";
			int _count = 30;
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
			ElementDescription _element = "enableSchoolWorkButton"; 
			String _insertAt = "userButton0";
			DialogControllerConfig _config = "workButtonConfig";	
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
		{
			ObjectType _type = AttendanceUI;
			ElementDescription _element = "Dialog/Attendance.rsc:chapel"; 
			String _insertAt = "userButton1";
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

	String _toolTipText = "EnablePriestTip";
}

LabelDescription labelSchoolWorkCheck : "Dialog/Work.rsc:labelEnableWork"
{
	String _spriteName = "PriestWork";	
}

LabelDescription labelSchoolWorkUncheck : "labelSchoolWorkCheck"
{
	Color _color = 0xFF2E2B28;
}

