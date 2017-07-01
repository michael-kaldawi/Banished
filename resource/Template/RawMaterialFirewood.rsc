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
	String _spriteName = "FirewoodSmall";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _stringName = "Firewood";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 4;

	// how much is sold in a single sale
	int _stackCount = 500;
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
		{ GraphicsMesh _mesh [ "Models\Resources\FirewoodMesh.rsc" ] }
		{ GraphicsMesh _mesh 
		  [
			"Models\Resources\FirewoodPile0Mesh.rsc",
			"Models\Resources\FirewoodPile1Mesh.rsc",
			"Models\Resources\FirewoodPile2Mesh.rsc",
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
	String _name = "Firewood";
		
	int _lowCreateCount = 3;
	int _highCreateCount = 4;

	int _weight = 4;
	int _createChance = 1;
	
	RawMaterialFlags _flags = Fuel | WoodFuel;
	bool _preferred = true;

	float _carryScale = 0.33;
}