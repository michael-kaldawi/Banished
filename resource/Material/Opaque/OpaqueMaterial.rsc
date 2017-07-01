Material resource
{
	MaterialType _type = Opaque;
	VideoProgram _passes
	[ 
		"normal"
		"depth"
		"reflect"
	]
}

VideoProgram normal
{
	VertexLayout _vertexLayout = "MeshLayout\ModelLayout.rsc";
	VertexProgram _vertexProgram = "OpaqueMaterial.srsl:Normal_vs";
	PixelProgram _pixelProgram = "OpaqueMaterial.srsl:Normal_ps";
	RenderState _renderState = "rs";
}

VideoProgram depth
{
	VertexLayout _vertexLayout = "MeshLayout\ModelDepthLayout.rsc";
	VertexProgram _vertexProgram = "OpaqueMaterial.srsl:Depth_vs";
	PixelProgram _pixelProgram = "OpaqueMaterial.srsl:Depth_ps";
	RenderState _renderState = "rsDepth";
}

VideoProgram reflect : "normal"
{
	RenderState _renderState = "rsRef";
}

RenderState rs
{
	AlphaBlend _alphaBlend
	{
		bool _enable = false;
		Blend _source = One;
		Blend _dest = Zero;
		BlendOp _op = Add;
		ColorWrite _writeMask = Red | Green | Blue | Alpha;
	}
	Depth _depth
	{
		bool _enable = true;
		bool _write = true;
		Compare _compare = LessEqual;
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

RenderState rsRef : "rs"
{
	CullMode _cullMode = FrontFaces;
}

RenderState rsRefNone : "rs"
{
	CullMode _cullMode = None;
}

RenderState rsDepth
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
		float _bias = 0.0;//0.0010;
		float _slopeBias = 0.0;//0.000100;
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
	CullMode _cullMode = FrontFaces;
	CullMode _fillMode = Solid;
}
