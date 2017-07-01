// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Second;
	
	// declare types that will be used
	Description _descriptions
	[
		"ui", 
		"toolbar",

		"model",
		"picking",
		"highlight",
		"character",
		
		"statemachine",
		"nomad",
	]
}

NomadDescription nomad
{
	ComponentDescription _citizen = "Template/Citizen.rsc";
	MaterialInstance _maleMaterial = "Models/Citizen/MaterialInstance/MaleNomad.rsc";
	MaterialInstance _femaleMaterial = "Models/Citizen/MaterialInstance/FemaleNomad.rsc";
}

StateMachineDescription statemachine { }

ToolbarDescription toolbar
{
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "Nomad";
}

CharacterDescription character
{
	float _headingOffset = 0.0;
	float _turnFilter = 0.96;
	float _defaultAnimationBlendTime = 0.5;

	float _slowSpeed = 0.75;
	float _fastSpeed = 1.2;
	float _fastestSpeed = 1.4;
}

PickingDescription picking
{
	bool _useGraphicsMesh = true;
	MaterialInstance _selectMaterial = "Material/SelectionMask/SelectionMaskSkin.rsc";
	PickingGroup _meshes
	[
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Citizen\CitizenPicking.rsc" 
			] 
		}
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Citizen\CitizenPicking.rsc" 
			] 
		}
	]
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			AnimationGroup _animations = "Models\Citizen\CitizenAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\Citizen\CitizenMaleMesh.rsc" 
			] 
		}		
		{ 
			AnimationGroup _animations = "Models\Citizen\CitizenAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\Citizen\CitizenFemaleMesh.rsc" 
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
				"Models\Citizen\CitizenMaleMesh.rsc:edge" 
			]
		}
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Citizen\CitizenFemaleMesh.rsc:edge" 
			]
		}
	]
}

UIDescription ui
{
	int _displayPage = 0;	// set to 1 for tab layout
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";
	
	ElementController _controllers
	[
		{ 
			ElementDescription _element = "pad"; 
			String _insertAt = "userGroup0"; 
		}
	]
}

GroupDescription pad
{
	int _minWidth = 250;
	int _minHeight = 64;
}