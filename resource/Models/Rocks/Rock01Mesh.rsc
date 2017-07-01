GraphicsMesh resource
{
	String _meshName = "Models\Rocks\Rock01.fbx";
	int _instanceCount = -1;
	float _maxDepthDraw = 60.0;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 50.0;
			String _subObject = "mesh01";
			ImageBuffer _image = "Models\Rocks\MaterialInstance\Rock01AO.rsc";
		}
		{
			float _transitionDistance = 10000.0;
			String _subObject = "mesh01_lod";
			ImageBuffer _image = "Models\Rocks\MaterialInstance\Rock01AO.rsc";
		}

	]
}