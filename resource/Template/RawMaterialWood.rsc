// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fourth;
	
	// declare types that will be used
	Description _descriptions
	[
		"value",
		"map",
		"model",
		"work",
		"rawmaterial",
	]
}

ValueDescription value
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "LogSmall";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _stringName = "Log";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 2;

	// how much is sold in a single sale
	int _stackCount = 200;
}


MapDescription map
{
	PathType _pathType = Obstacle;
	bool _addOnCreate = true;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ GraphicsMesh _mesh [ "Models\Resources\WoodMesh.rsc" ] }
		{ GraphicsMesh _mesh 
		  [
			"Models\Resources\WoodPile0Mesh.rsc",
			"Models\Resources\WoodPile1Mesh.rsc",
			"Models\Resources\WoodPile2Mesh.rsc"
		  ]
		}
	]
	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

WorkDescription work
{
	int _defaultWorkers = 1;
}

RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "Log";
	String _nameSmall = "LogSmall";
		
	int _lowCreateCount = 2;
	int _highCreateCount = 3;
	int _weight = 11;
	int _createChance = 1;

	RawMaterialFlags _flags = Wood;

	float _carryScale = 0.33;
}