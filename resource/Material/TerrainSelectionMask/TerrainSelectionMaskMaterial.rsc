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
	VertexLayout _vertexLayout = "MeshLayout\TerrainDepthLayout.rsc";
	VertexProgram _vertexProgram = "Material\Terrain\TerrainMaterial.srsl:Depth_vs";
	PixelProgram _pixelProgram = "Material\Terrain\TerrainMaterial.srsl:Depth_ps";
	RenderState _renderState = "Material\SelectionMask\SelectionMaskMaterial.rsc:rs";
}

