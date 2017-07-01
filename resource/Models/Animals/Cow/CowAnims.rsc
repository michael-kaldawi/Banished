AnimationGroup resource
{
	Animation _animations
	[ 
		{
			String _meshName = "Models\Animals\Cow\CowMesh.rsc"; String _sourceName = "Models\Animals\Cow\Cow.fbx";
			String _name = "Walk";
			int _startFrame = 30;
			int _endFrame = 90;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 3;
		}
		{
			String _meshName = "Models\Animals\Cow\CowMesh.rsc"; String _sourceName = "Models\Animals\Cow\Cow.fbx";
			String _name = "Idle0";
			int _startFrame = 120;
			int _endFrame = 270;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 3;

			Event _events [	{ int _frameId = 140; AnimationEvent _event = "Audio/Animal/Cow.rsc:event"; } ]
		}
		{
			String _meshName = "Models\Animals\Cow\CowMesh.rsc"; String _sourceName = "Models\Animals\Cow\Cow.fbx";
			String _name = "Idle1";
			int _startFrame = 270;
			int _endFrame = 600;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 3;

			Event _events [	{ int _frameId = 290; AnimationEvent _event = "Audio/Animal/Cow.rsc:event"; } ]
		}		
		{
			String _meshName = "Models\Animals\Cow\CowMesh.rsc"; String _sourceName = "Models\Animals\Cow\Cow.fbx";
			String _name = "Idle2";
			int _startFrame = 600;
			int _endFrame = 800;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 3;


			Event _events [	{ int _frameId = 620; AnimationEvent _event = "Audio/Animal/Cow.rsc:event"; } ]
		}				
	]
}