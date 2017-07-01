GraphicsMesh resource
{
	String _meshName = "Models\Citizen\Citizen.fbx";
	int _instanceCount = -1;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "fishingmesh";
			ImageBuffer _image = "Models\Citizen\MaterialInstance\ToolAO.rsc";
		}
	]
}