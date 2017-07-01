GraphicsMesh resource
{
	String _meshName = "Models\Animals\Cow\Cow.fbx";
	float _scale = 1.0;
	int _instanceCount = -1;
	float _maxDepthDraw = 90.0;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "root";
			ImageBuffer _image = "Models\Animals\Cow\MaterialInstance\CowAO.rsc";
		}
	]
}