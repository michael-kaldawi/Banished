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
	VertexLayout _vertexLayout = "MeshLayout\SelectionEdgeSkinLayout.rsc";
	VertexProgram _vertexProgram = "SelectionEdgeMaterial.srsl:Skin_vs";
	PixelProgram _pixelProgram = "SelectionEdgeMaterial.srsl:Normal_ps";
	RenderState _renderState = "Material\SelectionEdge\SelectionEdgeMaterial.rsc:rs";
}

