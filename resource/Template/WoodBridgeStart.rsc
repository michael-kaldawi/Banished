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
		"floor",		
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
				"Models\Bridges\WoodBridge\WoodBridgeStartBuild01Picking.rsc" 
				"Models\Bridges\WoodBridge\WoodBridgeStartBuild02Picking.rsc" 
				"Models\Bridges\WoodBridge\WoodBridgeStartPicking.rsc" 
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
				"Models\Bridges\WoodBridge\WoodBridgeStartBuild01Mesh.rsc" 
				"Models\Bridges\WoodBridge\WoodBridgeStartBuild02Mesh.rsc" 
				"Models\Bridges\WoodBridge\WoodBridgeStartMesh.rsc" 
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
				"Models\Bridges\WoodBridge\WoodBridgeStartBuild01Mesh.rsc:edge" 
				"Models\Bridges\WoodBridge\WoodBridgeStartBuild02Mesh.rsc:edge" 
				"Models\Bridges\WoodBridge\WoodBridgeStartMesh.rsc:edge" 
			]
		}
	]
}


InteractDescription interact
{
	PointList _pointList = "Models\Bridges\WoodBridge\WoodBridgeStartPoints.rsc";
}

FloorDescription floor
{
	PickingMesh _mesh = "Models\Bridges\WoodBridge\WoodBridgeStartFloor.rsc";
	bool _addOnCreate = true;
}