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
	VertexLayout _vertexLayout = "MeshLayout\ModelBillboardLayout.rsc";
	VertexProgram _vertexProgram = "BillboardMaterial.srsl:Normal_vs";
	PixelProgram _pixelProgram = "BillboardMaterial.srsl:Normal_ps";
	RenderState _renderState = "rs";
}

VideoProgram depth
{
	VertexLayout _vertexLayout = "MeshLayout\ModelBillboardLayout.rsc";
	VertexProgram _vertexProgram = "BillboardMaterial.srsl:Depth_vs";
	PixelProgram _pixelProgram = "BillboardMaterial.srsl:Depth_ps";
	RenderState _renderState = "rsDepth";
}

VideoProgram reflect : "normal"
{
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
	CullMode _cullMode = None;
	CullMode _fillMode = Solid;
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
	CullMode _fillMode = Solid;
}
