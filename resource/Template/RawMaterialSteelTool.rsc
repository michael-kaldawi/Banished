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
	String _spriteName = "SteelToolSmall";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _stringName = "SteelTool";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 10;

	// how much is sold in a single sale
	int _stackCount = 100;
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
		{ GraphicsMesh _mesh [ "Models\Resources\SteelToolMesh.rsc" ] }
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
	String _name = "SteelTool";
	
		
	int _lowCreateCount = 1;
	int _highCreateCount = 2;
	int _weight = 10;
	int _createChance = 1;

	// tool quality
	int _useValue = 200;
	
	RawMaterialFlags _flags = Tool;
	bool _preferred = true;

	float _carryScale = 0.33;
}