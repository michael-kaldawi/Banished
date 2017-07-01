Material resource
{
	MaterialType _type = Opaque;
	VideoProgram _passes
	[ 
		"normal"
	]
}

VideoProgram normal
{
	VertexLayout _vertexLayout = "MeshLayout\SelectionMaskLayout.rsc";
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
		ColorWrite _writeMask = 0;//Red | Green | Blue | Alpha;
	}
	Depth _depth
	{
		bool _enable = true;
		bool _write = false;
		Compare _compare = Always;
		float _bias = 0.000000;
		float _slopeBias = 0.000000;
	}
	Stencil _stencil
	{
		bool _enable = true;
		bool _twosided = false;
		Compare _compare = Always;
		uchar _ref = 1;
		StencilOp _fail = Keep;
		StencilOp _zFail = Keep;
		StencilOp _pass = Replace;
		StencilOp _tsFail = Keep;
		StencilOp _tsZFail = Keep;
		StencilOp _tsPass = Keep;
	}
	CullMode _cullMode = BackFaces;
	CullMode _fillMode = Solid;
}

