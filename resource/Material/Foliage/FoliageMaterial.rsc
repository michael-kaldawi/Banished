Material resource
{
	MaterialType _type = Opaque;
	VideoProgram _passes
	[ 
		"normal"
		"depth"
		"reflect"
	]
}

VideoProgram normal
{
	VertexLayout _vertexLayout = "MeshLayout\ModelBillboardLayout.rsc";
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:Foliage_vs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:Foliage_ps";
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rs";
}

VideoProgram depth
{
	VertexLayout _vertexLayout = "MeshLayout\ModelBillboardDepthLayout.rsc";
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:FoliageDepth_vs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:DepthAlpha_ps";
	RenderState _renderState = "Material\AlphaTest\AlphaTestMaterial.rsc:rsDepth";
}

VideoProgram reflect : "normal"
{
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rsRefNone";
}

