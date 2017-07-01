GraphicsMesh resource
{
	String _meshName = "Models\Citizen\Citizen.fbx";
	int _instanceCount = -1;
	float _maxDepthDraw = 80.0;

	DetailLevel _detailLevel
	[
		{
			String _subObject = "root_male";
			ImageBuffer _image = "Models\Citizen\MaterialInstance\CitizenAO.rsc";
			float _transitionDistance = 10000.0;
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