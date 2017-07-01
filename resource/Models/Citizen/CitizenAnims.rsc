AnimationGroup resource
{
	float _defaultBlendTime = 0.2;

	AnimationBlend _blendTimes
	[
		{ String _from = "Idle";				String _to = "WalkLongTool";	float _blendTime = 0.33;	}
		{ String _from = "Idle";				String _to = "WalkTool";		float _blendTime = 0.33;	}

		{ String _from = "WalkLongTool";		String _to = "HoeWork";			float _blendTime = 0.33;	}
		{ String _from = "HoeWork";				String _to = "WalkLongTool";	float _blendTime = 0.5;		}
		{ String _from = "HoeWork";				String _to = "Walk";			float _blendTime = 0.5;		}
		{ String _from = "HoeWork";				String _to = "Idle";			float _blendTime = 0.5;		}

		{ String _from = "WalkLongTool";		String _to = "ScytheWork";		float _blendTime = 0.33;	}
		{ String _from = "ScytheWork";			String _to = "WalkLongTool";	float _blendTime = 0.5;		}
		{ String _from = "ScytheWork";			String _to = "Walk";			float _blendTime = 0.5;		}
		{ String _from = "ScytheWork";			String _to = "Idle";			float _blendTime = 0.5;		}

		{ String _from = "WalkTool";			String _to = "AxeWork";			float _blendTime = 0.33;	}
		{ String _from = "AxeWork";				String _to = "WalkTool";		float _blendTime = 0.33;	}
		{ String _from = "AxeWork";				String _to = "Walk";			float _blendTime = 0.33;	}
		{ String _from = "AxeWork";				String _to = "Idle";			float _blendTime = 0.33;	}

		{ String _from = "WalkTool";			String _to = "PickAxeWork";		float _blendTime = 0.33;	}
		{ String _from = "PickAxeWork";			String _to = "WalkTool";		float _blendTime = 0.33;	}
		{ String _from = "PickAxeWork";			String _to = "Walk";			float _blendTime = 0.33;	}
		{ String _from = "PickAxeWork";			String _to = "Idle";			float _blendTime = 0.33;	}
	]

	Animation _animations
	[ 
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "Idle";
			int _startFrame = 110;
			int _endFrame = 229;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 3;
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "Walk";
			int _startFrame = 10;
			int _endFrame = 39;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 4;
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "WalkTool";
			int _startFrame = 360;
			int _endFrame = 389;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 4;
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "WalkLongTool";
			int _startFrame = 450;
			int _endFrame = 479;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 4;
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "WalkInventory";
			int _startFrame = 490;
			int _endFrame = 519;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 4;
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "WalkBarrow";
			int _startFrame = 1000;
			int _endFrame = 1029;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 4;
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "BendDown";
			int _startFrame = 530;
			int _endFrame = 553;
			float _rate = 15.000000;
			bool _looping = false;
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "StandUp";
			int _startFrame = 553;
			int _endFrame = 575;
			float _rate = 15.000000;
			bool _looping = false;
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "GenericWork";
			int _startFrame = 110;
			int _endFrame = 229;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 4;
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "AxeWork";
			int _startFrame = 50;
			int _endFrame = 99;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 4;

			Event _events [	{ int _frameId = 72; AnimationEvent _event = "Audio/Tool/AxeChopEffect.rsc:event"; } ]
		}	
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "PickAxeWork";
			int _startFrame = 240;
			int _endFrame = 299;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 4;

			Event _events [	{ int _frameId = 255; AnimationEvent _event = "Audio/Tool/PickAxeEffect.rsc:event"; } ]
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "ScytheWork";
			int _startFrame = 310;
			int _endFrame = 354;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 4;

			Event _events [	{ int _frameId = 310; AnimationEvent _event = "Audio/Tool/HoeEffect.rsc:event"; } ]
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "HoeWork";
			int _startFrame = 400;
			int _endFrame = 444;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 4;

			Event _events [	{ int _frameId = 415; AnimationEvent _event = "Audio/Tool/HoeEffect.rsc:event"; } ]
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "HammerWork";
			int _startFrame = 590;
			int _endFrame = 619;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 4;

			Event _events [	{ int _frameId = 595; AnimationEvent _event = "Audio/Tool/HammerEffect.rsc:event"; } ]
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "FishingWork";
			int _startFrame = 630;
			int _endFrame = 929;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 8;
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "AnvilWork";
			int _startFrame = 590;
			int _endFrame = 619;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 4;

			Event _events [	{ int _frameId = 595; AnimationEvent _event = "Audio/Tool/AnvilEffect.rsc:event"; } ]
		}
		{
			String _meshName = "Models\Citizen\CitizenMaleMesh.rsc"; String _sourceName = "Models\Citizen\Citizen.fbx";
			String _name = "SawWork";
			int _startFrame = 940;
			int _endFrame = 969;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 4;

			Event _events [	{ int _frameId = 950; AnimationEvent _event = "Audio/Tool/SawEffect.rsc:event"; } ]
		}
	]
}