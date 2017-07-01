GraphicsMesh resource
{
	String _meshName = "Models\FigTree.fbx";
	int _instanceCount = -1;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "rootfig";
			ImageBuffer _image = "Models\MaterialInstance\FigTreeAO.rsc";
		}
	]
}