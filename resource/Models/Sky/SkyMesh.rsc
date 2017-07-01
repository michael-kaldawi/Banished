GraphicsMesh resource
{
	String _meshName = "Models\Sky\Sky.fbx";
	int _instanceCount = 1;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "mesh";
		}
	]
}