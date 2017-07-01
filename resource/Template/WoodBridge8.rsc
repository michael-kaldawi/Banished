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
		"floor",		
	]
}

CreatePlacedDescription createplaced
{
	PathBits _placeBits = Normal | Obstacle | Water | DeepWater;
			 	
	int _width = 8;
	int _height = 1;
}

MapDescription map
{
	PathType _pathType = Bridge;
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
				"Models\Bridges\WoodBridge\WoodBridge8Build01Picking.rsc" 
				"Models\Bridges\WoodBridge\WoodBridge8Build02Picking.rsc" 
				"Models\Bridges\WoodBridge\WoodBridge8Picking.rsc" 
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
				"Models\Bridges\WoodBridge\WoodBridge8Build01Mesh.rsc" 
				"Models\Bridges\WoodBridge\WoodBridge8Build02Mesh.rsc" 
				"Models\Bridges\WoodBridge\WoodBridge8Mesh.rsc" 
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
				"Models\Bridges\WoodBridge\WoodBridge8Build01Mesh.rsc:edge" 
				"Models\Bridges\WoodBridge\WoodBridge8Build02Mesh.rsc:edge" 
				"Models\Bridges\WoodBridge\WoodBridge8Mesh.rsc:edge" 
			]
		}
	]
}

FloorDescription floor
{
	PickingMesh _mesh = "Models\Bridges\WoodBridge\WoodBridge8Floor.rsc";
	bool _addOnCreate = true;
}