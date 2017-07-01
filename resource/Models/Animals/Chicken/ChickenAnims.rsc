AnimationGroup resource
{
	Animation _animations
	[ 
		{
			String _meshName = "Models\Animals\Chicken\ChickenMesh.rsc"; String _sourceName = "Models\Animals\Chicken\Chicken.fbx";
			String _name = "Walk";
			int _startFrame = 42;
			int _endFrame = 114;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 3;
		}
		{
			String _meshName = "Models\Animals\Chicken\ChickenMesh.rsc"; String _sourceName = "Models\Animals\Chicken\Chicken.fbx";
			String _name = "Idle0";
			int _startFrame = 200;
			int _endFrame = 320;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 3;

			Event _events [	{ int _frameId = 220; AnimationEvent _event = "Audio/Animal/Chicken.rsc:event"; } ]
		}
		{
			String _meshName = "Models\Animals\Chicken\ChickenMesh.rsc"; String _sourceName = "Models\Animals\Chicken\Chicken.fbx";
			String _name = "Idle1";
			int _startFrame = 320;
			int _endFrame = 440;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 3;

			Event _events [	{ int _frameId = 340; AnimationEvent _event = "Audio/Animal/Chicken.rsc:event"; } ]
		}		
		{
			String _meshName = "Models\Animals\Chicken\ChickenMesh.rsc"; String _sourceName = "Models\Animals\Chicken\Chicken.fbx";
			String _name = "Idle2";
			int _startFrame = 440;
			int _endFrame = 560;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 3;

			Event _events [	{ int _frameId = 460; AnimationEvent _event = "Audio/Animal/Chicken.rsc:event"; } ]
		}				
	]
}