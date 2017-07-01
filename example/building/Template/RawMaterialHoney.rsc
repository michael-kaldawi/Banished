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
	SpriteSheet _spriteSheet = "UI/ApiarySpriteSheet.rsc";
	String _spriteName = "HoneySmall";
	StringTable _stringTable = "UI/ApiaryStringTable.rsc";
	String _stringName = "Honey";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 1;

	// how much is sold in a single sale
	int _stackCount = 2000;
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
		{ GraphicsMesh _mesh [ "Models\HoneyMesh.rsc" ] }
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
	SpriteSheet _spriteSheet = "UI/ApiarySpriteSheet.rsc";
	StringTable _stringTable = "UI/ApiaryStringTable.rsc";
	String _name = "Honey";
		
	int _lowCreateCount = 25;
	int _highCreateCount = 32;

	int _weight = 1;
	int _createChance = 1;
	
	RawMaterialFlags _flags = Edible | Protein | Fruit | Vegetable | Grain;

	float _carryScale = 0.5;
}