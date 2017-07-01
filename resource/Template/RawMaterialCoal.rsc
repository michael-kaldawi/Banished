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
	String _spriteName = "CoalSmall";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _stringName = "Coal";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 6;

	// how much is sold in a single sale
	int _stackCount = 300;
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
		{ GraphicsMesh _mesh [ "Models\Resources\CoalMesh.rsc" ] }
		{ GraphicsMesh _mesh 
		  [
			"Models\Resources\CoalPile0Mesh.rsc",
			"Models\Resources\CoalPile1Mesh.rsc",
			"Models\Resources\CoalPile2Mesh.rsc"
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
	String _name = "Coal";
	String _nameSmall = "CoalSmall";
		
	int _lowCreateCount = 3;
	int _highCreateCount = 4;

	int _weight = 15;
	int _createChance = 1;
	
	RawMaterialFlags _flags = Fuel | CoalFuel;

	float _carryScale = 0.33;
}