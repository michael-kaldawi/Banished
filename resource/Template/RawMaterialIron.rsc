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
	String _spriteName = "IronSmall";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _stringName = "Iron";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 5;

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
		{ GraphicsMesh _mesh [ "Models\Resources\IronMesh.rsc" ] }
		{ GraphicsMesh _mesh 
		  [
			"Models\Resources\IronPile0Mesh.rsc",
			"Models\Resources\IronPile1Mesh.rsc",
			"Models\Resources\IronPile2Mesh.rsc"
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
	String _name = "Iron";
	String _nameSmall = "IronSmall";
			
	int _lowCreateCount = 1;
	int _highCreateCount = 2;
	int _weight = 25;
	int _createChance = 1;

	RawMaterialFlags _flags = Iron;

	float _carryScale = 0.33;
}