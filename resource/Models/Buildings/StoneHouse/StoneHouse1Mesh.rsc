GraphicsMesh resource
{
	String _meshName = "Models\Buildings\StoneHouse\StoneHouse.fbx";
	int _instanceCount = 10;

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "mesh1";
			ImageBuffer _image = "Models\Buildings\StoneHouse\MaterialInstance\StoneHouse1AO.rsc";
		}
	]

	Skin _skins
	[
		{
			MaterialInstance _materials
			[
				"Models\Buildings\StoneHouse\MaterialInstance\StoneHouse1.rsc:damage"
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