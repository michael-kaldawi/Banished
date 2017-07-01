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
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:Normal_vs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:Normal_psalpha";
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rs";
}

VideoProgram depth
{
	VertexLayout _vertexLayout = "MeshLayout\ModelDepthAlphaLayout.rsc";
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:DepthAlpha_vs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:DepthAlpha_ps";
	RenderState _renderState = "rsDepth";
}

VideoProgram reflect : "normal"
{
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rsRef";
}

RenderState rsDepth
{
	AlphaBlend _alphaBlend
	{
		bool _enable = false;
		Blend _source = One;
		Blend _dest = Zero;
		BlendOp _op = Add;
		ColorWrite _writeMask = Red | Green | Blue;
	}
	Depth _depth
	{
		bool _enable = true;
		bool _write = true;
		Compare _compare = LessEqual;
		float _bias = 0.0001000;
		float _slopeBias = 0.000100;
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
