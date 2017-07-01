GraphicsMesh resource
{
	String _meshName = "Models\NaturalResource\FruitTrees\FruitTrees.fbx";
	int _instanceCount = -1;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "rootpecan";
			ImageBuffer _image = "Models\NaturalResource\FruitTrees\MaterialInstance\PecanTreeAO.rsc";
		}
	]
}