// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fourth;
	
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
	PathBits _placeBits = Normal | Obstacle | Water | DeepWater;
			 	
	int _width = 2;
	int _height = 1;
}

MapDescription map
{
	PathType _pathType = Tunnel;
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
				"Models\Bridges\Tunnel\Tunnel2Picking.rsc" 
				"Models\Bridges\Tunnel\Tunnel2Picking.rsc" 
				"Models\Bridges\Tunnel\Tunnel2Picking.rsc" 
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
				"Models\Bridges\Tunnel\Tunnel2Mesh.rsc" 
				"Models\Bridges\Tunnel\Tunnel2Mesh.rsc" 
				"Models\Bridges\Tunnel\Tunnel2Mesh.rsc" 
			] 
		}
	]

	int _displayIndex = 0;
	int _subIndex = -1;	
	bool _randomIndex = false;
}

HighlightDescription highlight
{
	EdgeGroup _meshes
	[
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Bridges\Tunnel\Tunnel2Mesh.rsc:edge" 
				"Models\Bridges\Tunnel\Tunnel2Mesh.rsc:edge" 
				"Models\Bridges\Tunnel\Tunnel2Mesh.rsc:edge" 
			]
		}
	]
}
