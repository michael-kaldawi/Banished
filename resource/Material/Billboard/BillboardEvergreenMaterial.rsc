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
	VertexLayout _vertexLayout = "MeshLayout\ModelBillboardLayout.rsc";
	VertexProgram _vertexProgram = "BillboardMaterial.srsl:Normal_vs";
	PixelProgram _pixelProgram = "BillboardMaterial.srsl:Normal_psevergreen";
	RenderState _renderState = "Material\Billboard\BillboardMaterial.rsc:rs";
}

VideoProgram depth
{
	VertexLayout _vertexLayout = "MeshLayout\ModelBillboardLayout.rsc";
	VertexProgram _vertexProgram = "BillboardMaterial.srsl:Depth_vs";
	PixelProgram _pixelProgram = "BillboardMaterial.srsl:Depth_psevergreen";
	RenderState _renderState = "Material\Billboard\BillboardMaterial.rsc:rsDepth";
}
