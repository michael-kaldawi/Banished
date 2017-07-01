GraphicsMesh resource
{
	String _meshName = "Models\NaturalResource\Ore\Ore.fbx";
	int _instanceCount = -1;
	float _maxDepthDraw = 40.0;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 50.0;
			String _subObject = "mesh03";
			ImageBuffer _image = "Models\NaturalResource\Ore\MaterialInstance\Ore03AO.rsc";
		}
		{
			float _transitionDistance = 10000.0;
			String _subObject = "mesh03_lod";
			ImageBuffer _image = "Models\NaturalResource\Ore\MaterialInstance\Ore03AO.rsc";
		}
	]
}