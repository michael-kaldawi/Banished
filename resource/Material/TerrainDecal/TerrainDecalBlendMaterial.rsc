Material resource
{
	MaterialType _type = Blended;
	VideoProgram _passes
	[ 
		"normal"
	]
}

VideoProgram normal
{
	VertexLayout _vertexLayout = "MeshLayout\TerrainDecalLayout.rsc";
	VertexProgram _vertexProgram = "Material\Terrain\TerrainMaterial.srsl:DecalBlend_vs";
	PixelProgram _pixelProgram = "Material\Terrain\TerrainMaterial.srsl:DecalBlend_ps";
	RenderState _renderState = "Material\TerrainDecal\TerrainDecalMaterial.rsc:rs";
}

