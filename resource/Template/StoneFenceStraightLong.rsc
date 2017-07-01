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
			 	
	int _width = 2;
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
				"Models\Fences\StoneFenceStraightLongBuild01Picking.rsc" 
				"Models\Fences\StoneFenceStraightLongBuild02Picking.rsc" 
				"Models\Fences\StoneFenceStraightLongPicking.rsc" 
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
				"Models\Fences\StoneFenceStraightLongBuild01Mesh.rsc" 
				"Models\Fences\StoneFenceStraightLongBuild02Mesh.rsc" 
				"Models\Fences\StoneFenceStraightLongMesh.rsc" 
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
				"Models\Fences\StoneFenceStraightLongBuild01Mesh.rsc:edge" 
				"Models\Fences\StoneFenceStraightLongBuild02Mesh.rsc:edge" 
				"Models\Fences\StoneFenceStraightLongMesh.rsc:edge" 
			]
		}
	]
}
