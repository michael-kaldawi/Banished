// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fourth;
	
	// declare types that will be used
	Description _descriptions
	[
		"map",
		"zone",
		"createdrag",
		"decal",
		"work",
		
		"statemachine",
		"cleararea",
		"destroy",
		"clearresource",
	]
}

ClearResourceDescription clearresource { }
StateMachineDescription statemachine { }
ZoneDescription zone { }
DestroyDescription destroy { }

MapDescription map
{
	PathType _pathType = Normal;
}

CreateDragDescription createdrag
{
	bool _ignoreZones = false;

	PathBits _placeBits = Normal | Obstacle;

	int _maxWidth = 30;
	int _maxHeight = 30;
	int _minWidth = 1;
	int _minHeight = 1;		
}

DecalDescription decal
{
	MaterialInstance _materials [ "Terrain/TiledDecals/ClearAreaMaterial.rsc" ]
	bool _tiled = true;
	float _initialAlpha = 1.0;
}

WorkDescription work
{
	int _defaultWorkers = 8;
}

ClearAreaDescription cleararea
{
	bool _clearResources = false;
	bool _clearRoads = true;
	bool _clearPickups = false;
	bool _flattenGround = false;
}
