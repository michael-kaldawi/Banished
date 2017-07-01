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
		"createfenced",
		"decal",
		"work",
		"radius",
		"storage",
		"model",
		"interact",
		"highlight",
		"statusicon",
				
		"statemachine",
		"cleararea",
		"build",
		"workplace",
		"multiobject", 
		"destroy",
		"happiness",
		"cemetery",
	]
}


MultiObjectDescription multiobject { }
InteractDescription interact { }
StorageDescription storage { }
ClearAreaDescription cleararea { int _workerCount = 8; }
StateMachineDescription statemachine { }
ZoneDescription zone { }
DestroyDescription destroy { }

HappinessDescription happiness
{
	HappinessType _happinessType = Spirit;
	int _idleRange = 0;
}

RadiusDescription radius
{
	int _radius = 30;
	// MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}

StatusIconDescription statusicon
{
	SpriteSheet _spriteSheet = "StatusIcons\BuildingIconSpriteSheet.rsc";
	bool _fixedSize = true;
	float _size = 0.04;
	float _zoffset = 1.33;
}

MapDescription map
{
	PathType _pathType = Normal;
	bool _addOnCreate = false;
	bool _neverAdd = true;

	bool _addToOverhead = true;
	Color _mapColor = 0xFF80694D;
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "BuildCemetery";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "Cemetery";
	String _stringNameLwr = "CemeteryLwr";
	String _toolTip = "CemeteryTip";

	String _statusStrings
	[
		"CreateOk",
		"CreateTooSmall",
		"CreateTooBig",
		"CreateBlocked",		
	]

	int _group = 2;
}

CreateFencedDescription createfenced
{
	PathBits _placeBits = Normal | Obstacle;
	
	int _maxWidth = 20;
	int _maxHeight = 20;
	int _minWidth = 7;
	int _minHeight = 7;		

	bool _centerBuilding = true;
	
	ComponentDescription _sections
	[
		"Template/CemeteryGate.rsc",
		"Template/StoneFenceEnd.rsc",
		"Template/StoneFenceCorner.rsc",
		"Template/StoneFenceStraight.rsc",
		"Template/StoneFenceStraightLong.rsc",
		"Template/StoneFenceGate.rsc",
	]

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";		
}

CemeteryDescription cemetery
{
	ComponentDescription _tombstone = "Template/Tombstone.rsc";
}

WorkDescription work
{
	int _defaultWorkers = 4;
	int _maxArea = 400;
}

WorkPlaceDescription workplace
{
	// no actual work done here once the building is built
	//Profession _profession = null;
	//Profession _pickupProfession = null;
}

DecalDescription decal
{
	MaterialInstance _materials [ "Terrain/TiledDecals/PastureMaterial.rsc" ]
	bool _tiled = true;
	float _initialAlpha = 1.0;
}

ModelDescription model
{
	int _displayIndex = 0;
	int _subIndex = -1;	
	bool _randomIndex = false;
}

HighlightDescription highlight
{
	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

BuildDescription build
{
	int _workRequired = 1;
	bool _scaledWithSize = true;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 1;
		}	
	]
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{ ElementDescription _element = "groupEmpty"; String _insertAt = "userGroup0"; }
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
			ObjectType _type = CemeteryUI;
			ElementDescription _element = "Dialog/Cemetery.rsc:cemetery"; 
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

GroupDescription groupEmpty
{
	int _minWidth = 287;
	int _minHeight = 64;
}