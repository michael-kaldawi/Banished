// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fifth;
	
	// declare types that will be used
	Description _descriptions
	[
		"map",
		"model",
		"tombstone",
	]
}

MapDescription map
{
	PathType _pathType = Immovable;
	bool _addOnCreate = true;

	int _width = 1;
	int _height = 1;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ GraphicsMesh _mesh [ "Models\Buildings\Cemetery\TombstoneMesh.rsc:grave01" ] }
		{ GraphicsMesh _mesh [ "Models\Buildings\Cemetery\TombstoneMesh.rsc:grave02" ] }
		{ GraphicsMesh _mesh [ "Models\Buildings\Cemetery\TombstoneMesh.rsc:grave03" ] }
		{ GraphicsMesh _mesh [ "Models\Buildings\Cemetery\TombstoneMesh.rsc:grave04" ] }
		{ GraphicsMesh _mesh [ "Models\Buildings\Cemetery\TombstoneMesh.rsc:grave05" ] }
		{ GraphicsMesh _mesh [ "Models\Buildings\Cemetery\TombstoneMesh.rsc:grave06" ] }
		{ GraphicsMesh _mesh [ "Models\Buildings\Cemetery\TombstoneMesh.rsc:grave07" ] }
		{ GraphicsMesh _mesh [ "Models\Buildings\Cemetery\TombstoneMesh.rsc:grave08" ] }
		{ GraphicsMesh _mesh [ "Models\Buildings\Cemetery\TombstoneMesh.rsc:grave09" ] }
		{ GraphicsMesh _mesh [ "Models\Buildings\Cemetery\TombstoneMesh.rsc:grave10" ] }
		{ GraphicsMesh _mesh [ "Models\Buildings\Cemetery\TombstoneMesh.rsc:grave11" ] }
		{ GraphicsMesh _mesh [ "Models\Buildings\Cemetery\TombstoneMesh.rsc:grave12" ] }
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = true;
}

TombstoneDescription tombstone
{
	float _lifetimeInMonths = 60.0;
	float _lifetimeTolerance = 12.0;
}