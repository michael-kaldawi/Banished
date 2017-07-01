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
	SpriteSheet _spriteSheet = "UI/CropSpriteSheet.rsc";
	String _spriteName = "LettuceSmall";
	StringTable _stringTable = "UI/CropStringTable.rsc";
	String _stringName = Lettuce;
		
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
		{ GraphicsMesh _mesh [ "Models\LettuceMesh.rsc" ] }
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
	SpriteSheet _spriteSheet = "UI/CropSpriteSheet.rsc";
	StringTable _stringTable = "UI/CropStringTable.rsc";
	String _name = "Lettuce";
		
	int _lowCreateCount = 20;
	int _highCreateCount = 28;

	int _weight = 1;
	int _createChance = 4;
	
	RawMaterialFlags _flags = Edible | Vegetable;

	float _carryScale = 0.5;
}