GraphicsMesh resource
{
	String _meshName = "Models\Lettuce.fbx";
	int _instanceCount = -1;	// full set of instances (only matters for size of dx9 meshes...)

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "lettuceleaf";
			ImageBuffer _image = "Models\MaterialInstance\LettuceLeafAO.rsc";
		}
	]
}