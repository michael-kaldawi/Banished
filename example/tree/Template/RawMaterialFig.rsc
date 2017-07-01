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
	SpriteSheet _spriteSheet = "UI/FigSpriteSheet.rsc";
	String _spriteName = "FigSmall";
	StringTable _stringTable = "UI/FigStringTable.rsc";
	String _stringName = "Fig";
		
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
		{ GraphicsMesh _mesh [ "Models\FigMesh.rsc" ] }
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
	SpriteSheet _spriteSheet = "UI/FigSpriteSheet.rsc";
	StringTable _stringTable = "UI/FigStringTable.rsc";
	String _name = "Fig";
		
	int _lowCreateCount = 50;
	int _highCreateCount = 65;

	int _weight = 1;
	int _createChance = 1;
	
	RawMaterialFlags _flags = Edible | Fruit;

	float _carryScale = 0.5;
}