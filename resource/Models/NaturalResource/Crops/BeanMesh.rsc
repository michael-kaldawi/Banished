GraphicsMesh resource
{
	String _meshName = "Models\NaturalResource\Crops\Crops.fbx";
	int _instanceCount = -1;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "meshbean";
			ImageBuffer _image = "Models\NaturalResource\Crops\MaterialInstance\BeanAO.rsc";
		}
	]
}