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
	VertexLayout _vertexLayout = "MeshLayout\ModelLayout.rsc";
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:Snow_vs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:SnowDamage_alphatest";
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rs";
}

VideoProgram depth
{
	VertexLayout _vertexLayout = "MeshLayout\ModelDepthLayout.rsc";
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:Depth_vs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:Depth_ps";
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rsDepth";
}

VideoProgram reflect : "normal"
{
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rsRef";
}			

