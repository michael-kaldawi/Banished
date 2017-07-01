
// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = None;
	
	// declare types that will be used
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
	Color _mapColor = 0xFFA0A0A0;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ GraphicsMesh _mesh [ "Models\Rocks\Rock01Mesh.rsc" ] }
		{ GraphicsMesh _mesh [ "Models\Rocks\Rock02Mesh.rsc" ] }
		{ GraphicsMesh _mesh [ "Models\Rocks\Rock03Mesh.rsc" ] }
	]
	Mesh _meshes [ "Models\Rocks\Rock01.rsc" ]
	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = true;
}

NaturalResourceDescription naturalresource
{
	ComponentDescription _rawMaterial = "Template\RawMaterialStone.rsc";

	float _noisePersistance = 0.5;
	float _noiseOctaves = 12.0;
	float _noiseScale = 3.0;
	float _noiseCutoff = 0.625;
	float _spawnChance = 0.35;
	
	float _minHeight = 0.0f;
	float _maxHeight = 0.25f;
	float _maxAngle = 0.99f;		
	
	bool _animated = false;
	Time _preAnimateTime = 7.0;
	Time _postAnimateTime = 7.0;		
	
	ToolType _toolType = PickAxe;	
	
	float _positionTolerance = 0.4;
}