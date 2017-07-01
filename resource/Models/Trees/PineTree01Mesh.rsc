GraphicsMesh resource
{
	String _meshName = "Models\Trees\PineTree01.fbx";
	int _instanceCount = -1;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "root";
			ImageBuffer _image = "Models\Trees\MaterialInstance\PineTree01AO.rsc";
		}
	]
}