AnimationGroup resource
{
	Animation _animations
	[ 
		{
			String _meshName = "Models\Animals\Sheep\SheepMesh.rsc"; String _sourceName = "Models\Animals\Sheep\Sheep.fbx";
			String _name = "Walk";
			int _startFrame = 30;
			int _endFrame = 89;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 3;
		}
		{
			String _meshName = "Models\Animals\Sheep\SheepMesh.rsc"; String _sourceName = "Models\Animals\Sheep\Sheep.fbx";
			String _name = "Idle0";
			int _startFrame = 100;
			int _endFrame = 459;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 3;

			Event _events [	{ int _frameId = 120; AnimationEvent _event = "Audio/Animal/Sheep.rsc:event"; } ]
		}
		{
			String _meshName = "Models\Animals\Sheep\SheepMesh.rsc"; String _sourceName = "Models\Animals\Sheep\Sheep.fbx";
			String _name = "Idle1";
			int _startFrame = 460;
			int _endFrame = 819;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 3;

			Event _events [	{ int _frameId = 480; AnimationEvent _event = "Audio/Animal/Sheep.rsc:event"; } ]
		}		
		{
			String _meshName = "Models\Animals\Sheep\SheepMesh.rsc"; String _sourceName = "Models\Animals\Sheep\Sheep.fbx";
			String _name = "Idle2";
			int _startFrame = 100;
			int _endFrame = 819;
			float _rate = 15.000000;
			bool _looping = true;
			bool _instanced = true;
			int _maxInstances = 3;

			Event _events [	{ int _frameId = 600; AnimationEvent _event = "Audio/Animal/Sheep.rsc:event"; } ]
		}				
	]
}