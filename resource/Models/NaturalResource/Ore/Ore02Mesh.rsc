GraphicsMesh resource
{
	String _meshName = "Models\NaturalResource\Ore\Ore.fbx";
	int _instanceCount = -1;
	float _maxDepthDraw = 60.0;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 65.0;
			String _subObject = "mesh02";
			ImageBuffer _image = "Models\NaturalResource\Ore\MaterialInstance\Ore02AO.rsc";
		}
		{
			float _transitionDistance = 10000.0;
			String _subObject = "mesh02_lod";
			ImageBuffer _image = "Models\NaturalResource\Ore\MaterialInstance\Ore02AO.rsc";
		}
	]
}