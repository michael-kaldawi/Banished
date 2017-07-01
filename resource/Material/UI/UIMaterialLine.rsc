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
	VertexLayout _vertexLayout = "MeshLayout\UILayout.rsc";
	VertexProgram _vertexProgram = "UI.srsl:Normal_vs";
	PixelProgram _pixelProgram = "UI.srsl:Normal_ps";
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
		bool _enable = false;
		bool _write = false;
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
	CullMode _cullMode = None;
	FillMode _fillMode = Wireframe;
	bool _scissorEnable = true;
}