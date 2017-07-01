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
	VertexLayout _vertexLayout = "MeshLayout\TerrainLayout.rsc";
	VertexProgram _vertexProgram = "Material/River/RiverMaterial.srsl:Normal_lakevs";
	PixelProgram _pixelProgram = "Material/River/RiverMaterial.srsl:Normal_ps";
	RenderState _renderState = "Material/River/RiverMaterial.rsc:rs";
}

