GraphicsMesh resource
{
	String _meshName = "Models\Buildings\SchoolHouse\SchoolHouse.fbx";
	int _instanceCount = 1;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "mesh";
			ImageBuffer _image = "Models\Buildings\SchoolHouse\MaterialInstance\SchoolHouseAO.rsc";
		}
	]

	Skin _skins
	[
		{
			MaterialInstance _materials
			[
				"Models\Buildings\SchoolHouse\MaterialInstance\SchoolHouse.rsc:damage"
			]
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