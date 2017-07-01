Material resource
{
	MaterialType _type = Opaque;
	VideoProgram _passes
	[ 
		"normal"
		"Material\AlphaTest\AlphaTestMaterial.rsc:depth"
		"reflect"
	]
}

VideoProgram normal
{
	VertexLayout _vertexLayout = "MeshLayout\ModelLayout.rsc";
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:Normal_vs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:Normal_psalpha";
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rsRefNone";
}

VideoProgram reflect
{
	VertexLayout _vertexLayout = "MeshLayout\ModelLayout.rsc";
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:Normal_vs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:Normal_psalpha";
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rsRefNone";
}