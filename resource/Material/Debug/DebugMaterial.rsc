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
	VertexLayout _vertexLayout = "MeshLayout\DebugLayout.rsc";
	VertexProgram _vertexProgram = "Debug.srsl:Normal_vs";
	PixelProgram _pixelProgram = "Debug.srsl:Normal_ps";
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
		ColorWrite _writeMask = Red | Green | Blue | Alpha;
	}
	Depth _depth
	{
		bool _enable = true;
		bool _write = true;
		Compare _compare = Always;
		float _bias = 0.000000;
		float _slopeBias = 0.000000;
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
	CullMode _cullMode = BackFaces;
	CullMode _fillMode = Solid;
}
