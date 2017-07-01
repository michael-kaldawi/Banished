// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fifth;
	
	// declare types that will be used
	Description _descriptions
	[
		"value",
		"select",

		"map",
		"model",
		"naturalresource",
		"growth",
		"fruit"
	]
}

SelectDescription select
{
	SpriteSheet _spriteSheet = "Dialog\SpriteSheet.rsc";
	String _spriteName = "FruitCherry";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _stringName = "Cherry";
	SelectGroup _group = Orchard;
}

ValueDescription value
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "SeedCherrySmall";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _stringName = "SeedCherry";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 2500;

	// how much is sold in a single sale
	int _stackCount = 1;
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
		{ 
			AnimationGroup _animations = "Models\NaturalResource\FruitTrees\CherryTreeAnims.rsc";
			GraphicsMesh _mesh [ "Models\NaturalResource\FruitTrees\CherryTreeMesh.rsc" ] 
		}
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

FruitDescription fruit
{
	float _growthInMonths = 4;
	float _growthTemp = 65;
	float _growthTempRange = 20;

	ComponentDescription _rawMaterial = "Template\RawMaterialCherry.rsc";	
}

NaturalResourceDescription naturalresource
{
	ComponentDescription _rawMaterial = "Template\RawMaterialWood.rsc";

	float _noisePersistance = 0.25;
	float _noiseOctaves = 4.0;
	float _noiseScale = 5.0;
	float _noiseCutoff = -0.2;
	float _spawnChance = 0.04;	
	
	float _minHeight = 0.0f;
	float _maxHeight = 1.0f;
	float _maxAngle = 0.75f;	
	
	bool _animated = true;
	Time _preAnimateTime = 6.0;
	Time _postAnimateTime = 3.0;	
	ToolType _toolType = Axe;
	
	float _positionTolerance = 0.1;
}

GrowthDescription growth
{
	// maximum growth before death, -1 for ever living
	float _maxGrowth = 4.0;

	// growth +- some amount
	float _maxGrowthTolerance = 1.0;

	// length of growth period to maturity
	float _growthInMonths = 24;

	// temperature dependant growth
	bool _temperatureDependent = false;
	float _growthTemp = 0.0;
	float _growthTempRange = 0.0;

	// re-seeding. Seed chance 0 means no reseeding
	int _seedChance = 0;
	int _seedDistance = 0;
	int _seedTimeMonths = 0;
	float _growthForSeeding = 0.0;

	// max neighbors when reseeding
	int _maxNeighbors = 1;

	float _minScale = 0.2f;
}
