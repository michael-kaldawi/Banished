
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
	]
}

MapDescription map
{
	PathType _pathType = Obstacle;
	bool _addOnCreate = true;

	bool _addToOverhead = true;
	Color _mapColor = 0xFF895445;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ GraphicsMesh _mesh [ "Models\NaturalResource\Ore\Ore01Mesh.rsc" ] }
		{ GraphicsMesh _mesh [ "Models\NaturalResource\Ore\Ore02Mesh.rsc" ] }
		{ GraphicsMesh _mesh [ "Models\NaturalResource\Ore\Ore03Mesh.rsc" ] }
	]
	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = true;
}

NaturalResourceDescription naturalresource
{
	ComponentDescription _rawMaterial = "Template\RawMaterialIron.rsc";

	float _noisePersistance = 0.1;
	float _noiseOctaves = 4.0;
	float _noiseScale = 5.0;
	float _noiseCutoff = 0.65;
	float _spawnChance = 0.4;	
	
	float _minHeight = 0.0f;
	float _maxHeight = 1.0f;
	float _maxAngle = 0.75f;	
	
	bool _animated = false;
	Time _preAnimateTime = 7.0;
	Time _postAnimateTime = 7.0;	
	float _positionTolerance = 0.3;

	ToolType _toolType = PickAxe;
}
