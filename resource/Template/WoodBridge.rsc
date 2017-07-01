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
		"storage",
		"createbridge", 
		"work",
		"decal",
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
	]
}

ClearAreaDescription cleararea 
{ 
	bool _flattenGround = false;
}
StorageDescription storage { }
MultiObjectDescription multiobject { }
InteractDescription interact { }
StateMachineDescription statemachine { }
ZoneDescription zone { }
DestroyDescription destroy { }

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
	String _spriteName = "BuildBridge";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringNameLwr = "BridgeLwr";
	String _stringName = "Bridge";
	String _toolTip = "BridgeTip";
	

	String _statusStrings
	[
		"CreateOk",
		"CreateTooSmall",
		"CreateTooBig",
		"CreateBlocked",		
	]

	int _group = 1;
}

CreateBridgeDescription createbridge
{	
	PathBits _placeBits = Water | DeepWater;
	PathBits _invalidBits = Faster | Fast | Normal | Obstacle | Occasional;
	PathBits _startEndBits = Faster | Fast | Normal | Obstacle;
	PathBits _requiredBits = Water | DeepWater;
	PathBits _edgeBits = 0;
	int _edgeWidth = 0;

	ComponentDescription _sections
	[
		"Template/WoodBridgeStart.rsc",
		"Template/WoodBridge1.rsc",
		"Template/WoodBridge2.rsc",
		"Template/WoodBridge4.rsc",
		"Template/WoodBridge8.rsc",
	]			 	
}

MapDescription map
{
	PathType _pathType = Bridge;
	bool _addOnCreate = false;
	bool _neverAdd = true;

	bool _addToOverhead = true;
	Color _mapColor = 0xFF545454;
}

WorkDescription work
{
	int _defaultWorkers = 3;
}

WorkPlaceDescription workplace
{
	// no actual work done here once the building is built
	//Profession _profession = null;
	//Profession _pickupProfession = null;
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
	int _workRequired = 3;
	bool _scaledWithSize = true;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 4;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 1;
		}	
	]
}

DecalDescription decal
{
	MaterialInstance _materials [ "Terrain/TiledDecals/StorageYardMaterial.rsc" ]
	bool _tiled = true;
	float _initialAlpha = 0.5;
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";
	ElementController _controllers
	[
		{ ElementDescription _element = "groupEmpty"; String _insertAt = "userGroup0"; }
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
			ObjectType _type = WorkPlaceUI; 
			ElementDescription _element = "Dialog/Work.rsc:workPlace"; 
			String _insertAt = "userTitle0"; 
		}
		{
			ObjectType _type = StatusIconUI;
			ElementDescription _element = "Dialog/Building.rsc:icons";
			String _insertAt = "userTitle1";
		}
	]
}

GroupDescription groupEmpty
{
	int _minWidth = 287;
	int _minHeight = 64;
}