
// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fifth;
	
	// components that will be used
	Description _descriptions
	[
		"map",
		"model",
		"naturalresource",
		"growth",
		"spawn",
	]
}

MapDescription map
{
	PathType _pathType = Obstacle;
	bool _addOnCreate = true;

	bool _addToOverhead = true;
	Color _mapColor = 0xFF136932;
}

ModelDescription model
{
	MeshGroup _meshes
	[

		{ 
			AnimationGroup _animations = "Models\NaturalResource\Tree\TreeAnims.rsc";
			GraphicsMesh _mesh [ "Models\NaturalResource\Tree\OakTreeMesh.rsc" ] 
		}
	]
	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = true;
}

NaturalResourceDescription naturalresource
{
	ComponentDescription _rawMaterial = "Template\RawMaterialWood.rsc";

	float _noisePersistance = 0.25;
	float _noiseOctaves = 4.0;
	float _noiseScale = 5.0;
	float _noiseCutoff = 0.2;
	float _spawnChance = 0.33;	
	
	float _minHeight = 0.0f;
	float _maxHeight = 1.0f;
	float _maxAngle = 0.75f;	
	
	bool _animated = true;
	Time _preAnimateTime = 6.0;
	Time _postAnimateTime = 3.0;	
	ToolType _toolType = Axe;
	
	float _positionTolerance = 0.4;
}

GrowthDescription growth
{
	// maximum growth before death, -1 for ever living
	float _maxGrowth = 5.0;

	// growth +- some amount
	float _maxGrowthTolerance = 1.0;

	// length of growth period to maturity
	float _growthInMonths = 40;

	// temperature dependant growth
	bool _temperatureDependent = false;
	float _growthTemp = 0.0;
	float _growthTempRange = 0.0;

	// re-seeding. 
	bool _autoSeed = true;
	int _seedChance = 12;
	int _seedDistance = 8;
	int _seedTimeMonths = 3;
	float _growthForSeeding = 0.9;

	// max neighbors when reseeding
	int _maxNeighbors = 1;
	int _maxNeighborsSelf = 0;

	float _minScale = 0.2f;
}

SpawnDescription spawn
{
	Spawn _spawn
	[
		{
			ComponentDescription _naturalResource = "Template\NaturalResourceMushroom.rsc";
			float _minSpawnAge = 1.5;
			float _maxSpawnAge = 100.0;
		}
		{
			ComponentDescription _naturalResource = "Template\NaturalResourceOnion.rsc";
			float _minSpawnAge = 0.1;
			float _maxSpawnAge = 100.0;
		}
		{
			ComponentDescription _naturalResource = "Template\NaturalResourceBlueberry.rsc";
			float _minSpawnAge = 0.1;
			float _maxSpawnAge = 100.0;
		}

	]
}
