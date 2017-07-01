GraphicsMesh resource
{
	String _meshName = "Models\Animals\Chicken\Chicken.fbx";
	float _scale = 1.5;
	int _instanceCount = -1;
	float _maxDepthDraw = 60.0;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "root";
			ImageBuffer _image = "Models\Animals\Chicken\MaterialInstance\ChickenAO.rsc";
		}
	]
}