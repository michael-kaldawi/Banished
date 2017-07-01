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
		"terraform",
		
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
	bool _autoClear = true;
}
StorageDescription storage { }
MultiObjectDescription multiobject { }
InteractDescription interact { }
StateMachineDescription statemachine { }
ZoneDescription zone { }
DestroyDescription destroy { }

TerraformDescription terraform
{
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
	String _spriteName = "BuildTunnel";

	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringNameLwr = "TunnelLwr";
	String _stringName = "Tunnel";
	String _toolTip = "TunnelTip";
	

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
	PathBits _placeBits = Unusable | Walkable;
	PathBits _invalidBits = Faster | Fast | Normal | Obstacle | Occasional;
	PathBits _startEndBits = Faster | Fast | Normal | Obstacle;
	PathBits _requiredBits = Unusable;
	PathBits _edgeBits = Faster | Fast | Normal | Obstacle | Unusable | Walkable;
	int _edgeWidth = 1;

	ComponentDescription _sections
	[
		"Template/TunnelStart.rsc",
		"Template/Tunnel1.rsc",
		"Template/Tunnel2.rsc",
		"Template/Tunnel4.rsc",
		"Template/Tunnel8.rsc",
	]			 	
}

MapDescription map
{
	PathType _pathType = Unusable;
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
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 4;
		}	
	]
}

DecalDescription decal
{
	MaterialInstance _materials [ "Terrain/TiledDecals/TunnelMaterial.rsc" ]
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