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
	VertexLayout _vertexLayout = "MeshLayout\ModelDepthLayout.rsc";
	VertexProgram _vertexProgram = "SkyMaterial.srsl:Normal_vs";
	PixelProgram _pixelProgram = "SkyMaterial.srsl:Normal_ps";
	RenderState _renderState = "rs";
}

VideoProgram depth
{
	// no depth - just empty...
}

VideoProgram reflect
{
	VertexLayout _vertexLayout = "MeshLayout\ModelDepthLayout.rsc";
	VertexProgram _vertexProgram = "SkyMaterial.srsl:Normal_vs";
	PixelProgram _pixelProgram = "SkyMaterial.srsl:Normal_ps";
	RenderState _renderState = "rsRef";
}

RenderState rsRef : "rs"
{
	CullMode _cullMode = FrontFaces;
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
		bool _enable = false;
		bool _write = false;
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

