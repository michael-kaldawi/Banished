AnimationGroup resource
{
	Animation _animations
	[ 
		{
			String _meshName = "Models\FigTreeMesh.rsc"; String _sourceName = "Models\FigTree.fbx";
			String _name = "Fall";
			int _startFrame = 0;
			int _endFrame = 60;
			float _rate = 15.000000;
			bool _looping = fale;
		}
		{
			String _meshName = "Models\FigTreeMesh.rsc"; String _sourceName = "Models\FigTree.fbx";
			String _name = "Sink";
			int _startFrame = 60;
			int _endFrame = 150;
			float _rate = 15.000000;
			bool _looping = false;
		}
		{
			String _meshName = "Models\FigTreeMesh.rsc"; String _sourceName = "Models\FigTree.fbx";
			String _name = "Remove";
			int _startFrame = 0;
			int _endFrame = 150;
			float _rate = 15.000000;
			bool _looping = false;
		}
	]
}