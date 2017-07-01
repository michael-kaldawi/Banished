// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Second;
	
	// declare types that will be used
	Description _descriptions
	[
		"model",
		"character",
		"particle",
		"statemachine",
		"boat"
	]
}

BoatDescription boat { }

StateMachineDescription statemachine { }

CharacterDescription character
{
	float _headingOffset = 90.0;
	float _turnFilter = 0.992;
	bool _forceHeight = true;
	float _height = 0.0f;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			AnimationGroup _animations = "Models\Buildings\TradingPost\BoatAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\Buildings\TradingPost\BoatMesh.rsc" 
			] 
		}
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

ParticleDescription particle
{
	ParticleAttachment _systems 
	[
	/*
		{
			bool _addOnCreate = true;
			Particle _particle = "ParticleSystems\BoatWake\BoatWake.rsc";
			String _attachNode = "particle0";
			bool _updateAttachment = true;
		}
		*/
	]
}
