Material resource
{
	MaterialType _type = Opaque;
	VideoProgram _passes
	[ 
		"normal"
	]
}

VideoProgram normal
{
	VertexLayout _vertexLayout = "MeshLayout\SelectionMaskSkinLayout.rsc";
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:DepthSkin_vs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:DepthSkin_ps";
	RenderState _renderState = "Material\SelectionMask\SelectionMaskMaterial.rsc:rs";
}
