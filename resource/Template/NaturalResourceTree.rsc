
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
			GraphicsMesh _mesh 
			[ 
				"Models\NaturalResource\Tree\PineTreeMesh01.rsc" 
				"Models\NaturalResource\Tree\PineTreeMesh02.rsc" 
				"Models\NaturalResource\Tree\PineTreeMesh03.rsc" 
				"Models\NaturalResource\Tree\PineTreeMesh04.rsc" 
			] 
		}
		{ 
			AnimationGroup _animations = "Models\NaturalResource\Tree\TreeAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\NaturalResource\Tree\BirchTreeMesh01.rsc" 
				"Models\NaturalResource\Tree\BirchTreeMesh02.rsc" 
				"Models\NaturalResource\Tree\BirchTreeMesh03.rsc" 
				"Models\NaturalResource\Tree\BirchTreeMesh04.rsc" 
			] 
		}
		{ 
			AnimationGroup _animations = "Models\NaturalResource\Tree\TreeAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\NaturalResource\Tree\OakTreeMesh.rsc" 
			] 
		}
	]
	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

NaturalResourceDescription naturalresource
{
	ComponentDescription _rawMaterial = "Template\RawMaterialWood.rsc";

	// placement
	float _noisePersistance = 1.0;
	float _noiseOctaves = 4.0;
	float _noiseScale = 30.0;
	float _noiseCutoff = 0.35;
	float _spawnChance = 0.4;	

	bool _groupModels = true;
	float _groupPersistance = 1.0;
	float _groupOctaves = 1.0;
	float _groupScale = 5.0;
	float _groupCutOff = 0.5;
	int _groupRandom = 5;
	
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
			ComponentDescription _naturalResource = "Template\NaturalResourceHerb.rsc";
			float _minSpawnAge = 1.1;
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
		{
			ComponentDescription _naturalResource = "Template\NaturalResourceMushroom.rsc";
			float _minSpawnAge = 0.1;
			float _maxSpawnAge = 100.0;
		}
		{
			ComponentDescription _naturalResource = "Template\NaturalResourceRoot.rsc";
			float _minSpawnAge = 0.1;
			float _maxSpawnAge = 100.0;
		}
	]
}
