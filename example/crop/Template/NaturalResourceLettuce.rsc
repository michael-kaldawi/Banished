
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
	SpriteSheet _spriteSheet = "UI/CropSpriteSheet.rsc";
	String _spriteName = "SeedLettuceSmall";
	StringTable _stringTable = "UI/CropStringTable.rsc";
	String _stringName = "SeedLettuce";
		
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
	SpriteSheet _spriteSheet = "UI/CropSpriteSheet.rsc";
	String _spriteName = "CropLettuce";
	StringTable _stringTable = "UI/CropStringTable.rsc";
	String _stringName = "Lettuce";
	SelectGroup _group = Crop;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ GraphicsMesh _mesh [ "Models\LettuceLeafMesh.rsc" ] }
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

NaturalResourceDescription naturalresource
{
	ComponentDescription _rawMaterial = "Template\RawMaterialLettuce.rsc";

	float _spawnChance = 0.0;	
	float _positionTolerance = 0.15;
	
	bool _animated = false;
	Time _preAnimateTime = 1.0;
	Time _postAnimateTime = 1.0;	

	ToolType _toolType = Scythe;
}

GrowthDescription growth
{
	// maximum growth before death, -1 for ever living
	float _maxGrowth = -1.0;

	// growth +- some amount
	float _maxGrowthTolerance = 0.0;

	// length of growth period to maturity
	float _growthInMonths = 2;

	// temperature dependant growth
	bool _temperatureDependent = true;
	float _growthTemp = 65.0;
	float _growthTempRange = 25.0;

	// soil properties
	bool _soilDependent = true;
	float _soilQualityChangeOnRemove = 0.98f;
	float _soilQualityChangeOnDecay = -0.8f;

	// re-seeding. Seed chance 0 means no reseeding
	int _seedChance = 0;

	bool _zScale = true;
	float _minScale = 0.1;
}
