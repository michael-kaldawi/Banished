GraphicsMesh resource
{
	String _meshName = "Models\Honey.fbx";
	int _instanceCount = -1;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "mesh";
			ImageBuffer _image = "Models\MaterialInstance\HoneyAO.rsc";
		}
	]
}