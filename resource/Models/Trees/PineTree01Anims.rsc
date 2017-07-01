AnimationGroup resource
{
	Animation _animations
	[ 
		{
			String _meshName = "Models\Trees\PineTree01Mesh.rsc"; String _sourceName = "Models\Trees\PineTree01.fbx";
			String _name = "Fall";
			int _startFrame = 0;
			int _endFrame = 60;
			float _rate = 15.000000;
			bool _looping = false;

			Event _events [	{ int _frameId = 2; AnimationEvent _event = "Audio/Effects/TreeFallEffect.rsc:event"; } ]
		}
		{
			String _meshName = "Models\Trees\PineTree01Mesh.rsc"; String _sourceName = "Models\Trees\PineTree01.fbx";
			String _name = "Sink";
			int _startFrame = 60;
			int _endFrame = 150;
			float _rate = 15.000000;
			bool _looping = false;
		}
		{
			String _meshName = "Models\Trees\PineTree01Mesh.rsc"; String _sourceName = "Models\Trees\PineTree01.fbx";
			String _name = "Remove";
			int _startFrame = 0;
			int _endFrame = 150;
			float _rate = 15.000000;
			bool _looping = false;

			Event _events [	{ int _frameId = 2; AnimationEvent _event = "Audio/Effects/TreeFallEffect.rsc:event"; } ]
		}				
	]
}