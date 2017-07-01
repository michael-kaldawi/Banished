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
	]
}

CreatePlacedDescription createplaced
{	
	PathBits _placeBits = Normal | Obstacle;
			 	
	int _width = 1;
	int _height = 1;
}

MapDescription map
{
	PathType _pathType = Obstacle;
	bool _addOnCreate = false;
}

PickingDescription picking
{
	MaterialInstance _selectMaterial = "Material/SelectionMask/SelectionMask.rsc";
	PickingGroup _meshes
	[
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Fences\StoneFenceEndBuild01Picking.rsc" 
				"Models\Fences\StoneFenceEndBuild02Picking.rsc" 
				"Models\Fences\StoneFenceEndPicking.rsc" 
			] 
		}
	]
}


ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			GraphicsMesh _mesh 
			[ 
				"Models\Fences\StoneFenceEndBuild01Mesh.rsc" 
				"Models\Fences\StoneFenceEndBuild02Mesh.rsc" 
				"Models\Fences\StoneFenceEndMesh.rsc" 
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
				"Models\Fences\StoneFenceEndBuild01Mesh.rsc:edge" 
				"Models\Fences\StoneFenceEndBuild02Mesh.rsc:edge" 
				"Models\Fences\StoneFenceEndMesh.rsc:edge" 
			]
		}
	]
}
