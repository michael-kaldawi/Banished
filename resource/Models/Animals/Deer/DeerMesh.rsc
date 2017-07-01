GraphicsMesh resource
{
	String _meshName = "Models\Animals\Deer\Deer.fbx";
	float _scale = 0.75;
	int _instanceCount = -1;
	float _maxDepthDraw = 80.0;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "root";
			ImageBuffer _image = "Models\Animals\Deer\MaterialInstance\DeerAO.rsc";
		}
	]
}