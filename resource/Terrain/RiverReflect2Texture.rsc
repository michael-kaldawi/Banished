ReflectionImageBuffer resource
{
	Type _type = Rectangle;
	Usage _usage = Rendered;
	Format _format = RGBA8;
	Flags _flags = HalfViewportSize;
	AddressMode _addressU = Clamp;
	AddressMode _addressV = Clamp;
	AddressMode _addressW = Clamp;
	FilterMode _filterMode = Anisotropic;

	float _reflectionPlane [ 0.0, 0.0, 1.0, -0.75 ]
}