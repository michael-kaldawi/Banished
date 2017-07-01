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
		"interact",
		"terraform"
	]
}

CreatePlacedDescription createplaced
{
	PathBits _placeBits = Normal | Obstacle | Water | DeepWater;
			 	
	int _width = 1;
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
				"Models\Bridges\Tunnel\TunnelBuild01Picking.rsc" 
				"Models\Bridges\Tunnel\TunnelBuild02Picking.rsc" 
				"Models\Bridges\Tunnel\TunnelPicking.rsc" 
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
				"Models\Bridges\Tunnel\TunnelBuild01Mesh.rsc" 
				"Models\Bridges\Tunnel\TunnelBuild02Mesh.rsc" 
				"Models\Bridges\Tunnel\TunnelMesh.rsc" 
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
				"Models\Bridges\Tunnel\TunnelBuild01Mesh.rsc:edge" 
				"Models\Bridges\Tunnel\TunnelBuild02Mesh.rsc:edge" 
				"Models\Bridges\Tunnel\TunnelMesh.rsc:edge" 
			]
		}
	]
}


InteractDescription interact
{
	PointList _pointList = "Models\Bridges\Tunnel\TunnelPoints.rsc";
}

TerraformDescription terraform
{
	PathBits _ceilingModifyBits = Unusable | Walkable;
	PathBits _floorModifyBits = Faster | Fast | Normal | Obstacle | Walkable | Unusable;
	PickingMesh _floorMesh = "Models\Bridges\Tunnel\TunnelFloor.rsc";
	PickingMesh _ceilingMesh = "Models\Bridges\Tunnel\TunnelCeiling.rsc";
}