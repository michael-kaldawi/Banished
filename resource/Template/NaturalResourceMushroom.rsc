
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
		"growth"
	]
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
			GraphicsMesh _mesh [ "Models\NaturalResource\Herbs\MushroomMesh.rsc" ] 
		}
	]
	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = true;
}

NaturalResourceDescription naturalresource
{
	ComponentDescription _rawMaterial = "Template\RawMaterialMushroom.rsc";

	float _noisePersistance = 0.1;
	float _noiseOctaves = 4.0;
	float _noiseScale = 5.0;
	float _noiseCutoff = 0.3;
	float _spawnChance = 0.4;	
	
	float _minHeight = 0.0f;
	float _maxHeight = 1.0f;
	float _maxAngle = 0.75f;	
	
	bool _animated = false;
	Time _preAnimateTime = 1.5;
	Time _postAnimateTime = 1.5;	
	float _positionTolerance = 0.3;

	ToolType _toolType = Scythe;
	Profession _requiredHarvestProfession = "Game/Profession/Profession.rsc:gatherer";
}

GrowthDescription growth
{
	// maximum growth before death, -1 for ever living
	float _maxGrowth = 9.0;

	// growth +- some amount
	float _maxGrowthTolerance = 1.0;

	// length of growth period to maturity
	float _growthInMonths = 1;

	// temperature dependant growth
	bool _temperatureDependent = false;
	float _growthTemp = 0.0;
	float _growthTempRange = 0.0;

	// re-seeding. 
	bool _autoSeed = false;
	int _seedChance = 60;
	int _seedDistance = 1;
	int _seedTimeMonths = 1;
	float _growthForSeeding = 0.0;

	// max neighbors when reseeding
	int _maxNeighbors = 2;
	int _maxNeighborsSelf = 8;

	float _minScale = 0.2f;
}
