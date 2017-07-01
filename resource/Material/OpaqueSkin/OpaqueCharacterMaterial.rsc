Material resource
{
	MaterialType _type = Opaque;
	VideoProgram _passes
	[ 
		"normal"
		"depth"
	]
}

VideoProgram normal
{
	VertexLayout _vertexLayout = "MeshLayout\ModelSkinLayout.rsc";
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:NormalSkin_charactervs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:Normal_ps";
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rs";
}

VideoProgram depth
{
	VertexLayout _vertexLayout = "MeshLayout\ModelSkinDepthLayout.rsc";
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:DepthSkin_vs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:DepthSkin_ps";
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rsDepth";
}

