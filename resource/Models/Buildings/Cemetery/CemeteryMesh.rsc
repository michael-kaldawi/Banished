GraphicsMesh resource
{
	String _meshName = "Models\Buildings\Cemetery\Cemetery.fbx";
	int _instanceCount = 4;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "mesh";
			ImageBuffer _image = "Models\Buildings\Cemetery\MaterialInstance\CemeteryAO.rsc";
		}
	]
}

EdgeMesh edge
{
	GraphicsMesh _graphicsMesh = "resource";

	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _skinMaskMaterial = "Material/SelectionMask/SelectionMaskSkin.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
	MaterialInstance _skinEdgeMaterial = "Material/SelectionEdge/SelectionEdgeSkin.rsc";
}