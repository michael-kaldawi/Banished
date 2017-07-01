// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fifth;
	
	// components that will be used
	Description _descriptions
	[
		"value",

		"map",
		"model",
		"naturalresource",
		"growth",
		"select"
	]
}

ValueDescription value
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "SeedPotatoSmall";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _stringName = "SeedPotato";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 2500;

	// how much is sold in a single sale
	int _stackCount = 1;
}

MapDescription map
{
	PathType _pathType = Obstacle;	// crop
	bool _addOnCreate = true;
}

SelectDescription select
{
	SpriteSheet _spriteSheet = "Dialog\SpriteSheet.rsc";
	String _spriteName = "CropPotato";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _stringName = "Potato";
	SelectGroup _group = Crop;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ GraphicsMesh _mesh [ "Models\NaturalResource\Crops\PotatoMesh.rsc" ] }
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

NaturalResourceDescription naturalresource
{
	ComponentDescription _rawMaterial = "Template\RawMaterialPotato.rsc";

	float _spawnChance = 0.0;	
	float _positionTolerance = 0.15;
	
	bool _animated = false;
	Time _preAnimateTime = 2.5;
	Time _postAnimateTime = 2.5;	

	ToolType _toolType = Scythe;
}

GrowthDescription growth
{
	// maximum growth before death, -1 for ever living
	float _maxGrowth = -1.0;

	// growth +- some amount
	float _maxGrowthTolerance = 0.0;

	// length of growth period to maturity
	float _growthInMonths = 3;

	// temperature dependant growth
	bool _temperatureDependent = true;
	float _growthTemp = 65.0;
	float _growthTempRange = 20.0;

	// soil properties
	bool _soilDependent = true;
	float _soilQualityChangeOnRemove = 0.98f;
	float _soilQualityChangeOnDecay = -0.8f;

	// re-seeding. Seed chance 0 means no reseeding
	int _seedChance = 0;

	float _minScale = 0.1;
}
