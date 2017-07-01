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
	VertexLayout _vertexLayout = "MeshLayout\TerrainLayout.rsc";
	VertexProgram _vertexProgram = "TerrainMaterial.srsl:Normal_vs";
	PixelProgram _pixelProgram = "TerrainMaterial.srsl:Normal_ps";
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rs";
}

VideoProgram depth
{
	VertexLayout _vertexLayout = "MeshLayout\TerrainDepthLayout.rsc";
	VertexProgram _vertexProgram = "TerrainMaterial.srsl:Depth_vs";
	PixelProgram _pixelProgram = "TerrainMaterial.srsl:Depth_ps";
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rsDepth";
}	

VideoProgram reflect
{
	VertexLayout _vertexLayout = "MeshLayout\TerrainLayout.rsc";
	VertexProgram _vertexProgram = "TerrainMaterial.srsl:Normal_vs";
	PixelProgram _pixelProgram = "TerrainMaterial.srsl:Normal_refl";
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rsRef";
}

