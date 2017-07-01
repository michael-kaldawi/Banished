GraphicsMesh resource
{
	String _meshName = "Models\Buildings\IronMine\IronMine.fbx";
	int _instanceCount = 1;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "destroy";
			ImageBuffer _image = "Models\Buildings\IronMine\MaterialInstance\IronMineDestroyAO.rsc";
		}
	]
}
