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
	VertexProgram _vertexProgram = "Material\Terrain\TerrainMaterial.srsl:Decal_vs";
	PixelProgram _pixelProgram = "Material\Terrain\TerrainMaterial.srsl:Decal_ps";
	RenderState _renderState = "rs";
}

RenderState rs
{
	AlphaBlend _alphaBlend
	{
		bool _enable = true;
		Blend _source = SourceAlpha;
		Blend _dest = InverseSourceAlpha;
		BlendOp _op = Add;
		ColorWrite _writeMask = Red | Green | Blue;
	}
	Depth _depth
	{
		bool _enable = true;
		bool _write = false;
		Compare _compare = LessEqual;
		float _bias = -0.0000001;
		float _slopeBias = -0.00001;
	}
	Stencil _stencil
	{
		bool _enable = false;
		bool _twosided = false;
		Compare _compare = Greater;
		uchar _ref = 0;
		StencilOp _fail = Keep;
		StencilOp _zFail = Keep;
		StencilOp _pass = Keep;
		StencilOp _tsFail = Keep;
		StencilOp _tsZFail = Keep;
		StencilOp _tsPass = Keep;
	}
	CullMode _cullMode = Backfaces;
	CullMode _fillMode = Solid;
}
