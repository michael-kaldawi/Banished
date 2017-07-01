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
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:SnowWater_vs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:SnowWater_ps";
	RenderState _renderState = "rs";
}

VideoProgram depth
{
	VertexLayout _vertexLayout = "MeshLayout\ModelDepthLayout.rsc";
	VertexProgram _vertexProgram = "Material\Opaque\OpaqueMaterial.srsl:Depth_vs";
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:Depth_ps";
	RenderState _renderState = "Material\Opaque\OpaqueMaterial.rsc:rsDepth";
}

VideoProgram reflect : "normal"
{
	PixelProgram _pixelProgram = "Material\Opaque\OpaqueMaterial.srsl:SnowWater_refl";
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
