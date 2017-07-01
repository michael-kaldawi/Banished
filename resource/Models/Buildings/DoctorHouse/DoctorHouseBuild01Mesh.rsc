GraphicsMesh resource
{
	String _meshName = "Models\Buildings\DoctorHouse\DoctorHouse.fbx";

	DetailLevel _detailLevel
	[
		{
			float _transitionDistance = 10000.0;
			String _subObject = "build01";
			ImageBuffer _image = "Models\Buildings\DoctorHouse\MaterialInstance\DoctorHouseBuild01AO.rsc";
		}
	]

	Skin _skins
	[
		{
			MaterialInstance _materials
			[
				"Models\Buildings\DoctorHouse\MaterialInstance\DoctorHouse.rsc:damage"
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