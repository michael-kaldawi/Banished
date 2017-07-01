GraphicsMesh resource
{
	String _meshName = "Models\Buildings\TradingPost\TradingPost.fbx";
	int _instanceCount = 1;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "boat";
			ImageBuffer _image = "Models\Buildings\TradingPost\MaterialInstance\BoatAO.rsc";
		}
	]
}