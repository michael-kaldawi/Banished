GraphicsMesh resource
{
	String _meshName = "Models\Resources\Resources.fbx";
	int _instanceCount = -1;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "alemesh";
			ImageBuffer _image = "Models\Resources\MaterialInstance\AleAO.rsc";
		}
	]
}