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
	VertexLayout _vertexLayout = "MeshLayout\DebugTextureLayout.rsc";
	VertexProgram _vertexProgram = "Debug.srsl:Texture_vs";
	PixelProgram _pixelProgram = "Debug.srsl:Texture_ps";
	RenderState _renderState = "Material\Debug\DebugMaterial.rsc:rs";
}
