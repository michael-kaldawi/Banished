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
				 	
	int _width = 3;
	int _height = 5;
}

MapDescription map
{
	PathType _pathType = Immovable;
	bool _addOnCreate = false;

	String _pathBitmap =
		"###
		 _##
		 __#
		 __#
		 _##";

	bool _addToOverhead = false;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			GraphicsMesh _mesh 
			[ 
				"Models\Buildings\AnimalShelter\AnimalShelterBuild01Mesh.rsc" 
				"Models\Buildings\AnimalShelter\AnimalShelterBuild02Mesh.rsc" 
				"Models\Buildings\AnimalShelter\AnimalShelterMesh.rsc" 
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
				"Models\Buildings\AnimalShelter\AnimalShelterBuild01Mesh.rsc:edge" 
				"Models\Buildings\AnimalShelter\AnimalShelterBuild02Mesh.rsc:edge" 
				"Models\Buildings\AnimalShelter\AnimalShelterMesh.rsc:edge" 
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}



InteractDescription interact
{
	PointList _pointList = "Models\Buildings\AnimalShelter\AnimalShelterPoints.rsc";
}

PickingDescription picking
{
	MaterialInstance _selectMaterial = "Material/SelectionMask/SelectionMask.rsc";
	PickingGroup _meshes
	[
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Buildings\AnimalShelter\AnimalShelterBuild01Picking.rsc" 
				"Models\Buildings\AnimalShelter\AnimalShelterBuild02Picking.rsc" 
				"Models\Buildings\AnimalShelter\AnimalShelterPicking.rsc" 
			] 
		}
	]
}
