GraphicsMesh resource
{
	String _meshName = "Models\Buildings\WoodHouse\WoodHouse.fbx";

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "mesh4build02";
			ImageBuffer _image = "Models\Buildings\WoodHouse\MaterialInstance\WoodHouse4Build02AO.rsc";
		}
	]

	Skin _skins
	[
		{
			MaterialInstance _materials
			[
				"Models\Buildings\WoodHouse\MaterialInstance\WoodHouse4.rsc:damage"
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