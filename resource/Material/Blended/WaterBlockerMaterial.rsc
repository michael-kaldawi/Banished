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
	VertexLayout _vertexLayout = "MeshLayout\ModelDepthLayout.rsc";
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:Depth_vs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:Depth_ps";
	RenderState _renderState = "rs";
}

RenderState rs
{
	AlphaBlend _alphaBlend
	{
		bool _enable = false;
		Blend _source = One;
		Blend _dest = Zero;
		BlendOp _op = Add;
		ColorWrite _writeMask = 0;
	}
	Depth _depth
	{
		bool _enable = true;
		bool _write = true;
		Compare _compare = LessEqual;
		float _bias = 0.0;
		float _slopeBias = 0.0;
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