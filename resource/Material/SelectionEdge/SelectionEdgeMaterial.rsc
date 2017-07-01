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
	VertexLayout _vertexLayout = "MeshLayout\SelectionEdgeLayout.rsc";
	VertexProgram _vertexProgram = "SelectionEdgeMaterial.srsl:Normal_vs";
	PixelProgram _pixelProgram = "SelectionEdgeMaterial.srsl:Normal_ps";
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
		bool _write = false;
		Compare _compare = Less;
		float _bias = -0.0001;
		float _slopeBias = -0.0001;
	}
	Stencil _stencil
	{
		bool _enable = true;
		bool _twosided = true;
		Compare _compare = Equal;
		uchar _ref = 0;
		StencilOp _fail = Keep;
		StencilOp _zFail = Keep;
		StencilOp _pass = Increment;
		StencilOp _tsFail = Keep;
		StencilOp _tsZFail = Keep;
		StencilOp _tsPass = Increment;
	}
	CullMode _cullMode = None;
	CullMode _fillMode = Solid;
}

