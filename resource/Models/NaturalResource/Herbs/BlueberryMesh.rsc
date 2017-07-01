GraphicsMesh resource
{
	String _meshName = "Models\NaturalResource\Herbs\Herbs.fbx";
	int _instanceCount = -1;
	float _maxDepthDraw = 60.0;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "blueberrymesh";
			ImageBuffer _image = "Models\NaturalResource\Herbs\MaterialInstance\BlueberryAO.rsc";
		}
	]
}