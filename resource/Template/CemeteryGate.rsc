// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = None;
	
	// declare types that will be used
	Description _descriptions
	[
		"map",
		"createplaced",
		"model",
		"picking",
		"highlight",
		"interact",
	]
}

CreatePlacedDescription createplaced
{	
	PathBits _placeBits = Normal | Obstacle;
				 	
	int _width = 4;
	int _height = 1;
}

MapDescription map
{
	PathType _pathType = Immovable;
	bool _addOnCreate = false;

	String _pathBitmap =
		"#__#";

	bool _addToOverhead = false;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			GraphicsMesh _mesh 
			[ 
				"Models\Buildings\Cemetery\CemeteryBuild01Mesh.rsc" 
				"Models\Buildings\Cemetery\CemeteryBuild02Mesh.rsc" 
				"Models\Buildings\Cemetery\CemeteryMesh.rsc" 
			] 
		}
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

HighlightDescription highlight
{
	EdgeGroup _meshes
	[
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Buildings\Cemetery\CemeteryBuild01Mesh.rsc:edge" 
				"Models\Buildings\Cemetery\CemeteryBuild02Mesh.rsc:edge" 
				"Models\Buildings\Cemetery\CemeteryMesh.rsc:edge" 
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}



InteractDescription interact
{
	PointList _pointList = "Models\Buildings\Cemetery\CemeteryPoints.rsc";
}

PickingDescription picking
{
	MaterialInstance _selectMaterial = "Material/SelectionMask/SelectionMask.rsc";
	PickingGroup _meshes
	[
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Buildings\Cemetery\CemeteryBuild01Picking.rsc" 
				"Models\Buildings\Cemetery\CemeteryBuild02Picking.rsc" 
				"Models\Buildings\Cemetery\CemeteryPicking.rsc" 
			] 
		}
	]
}
