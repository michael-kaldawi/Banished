GraphicsMesh resource
{
	String _meshName = "Models\Bridges\WoodBridge\WoodBridge.fbx";
	int _instanceCount = 1;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "bridge8build02";
			ImageBuffer _image = "Models\Bridges\WoodBridge\MaterialInstance\WoodBridge8Build02AO.rsc";
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