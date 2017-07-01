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
	VertexLayout _vertexLayout = "MeshLayout\ParticleLayout.rsc";
	VertexProgram _vertexProgram = "ParticleMaterial.srsl:ZUp_vs";
	PixelProgram _pixelProgram = "ParticleMaterial.srsl:ZUp_ps";
	RenderState _renderState = "Material\Particle\ParticleMaterial.rsc:rs";
}

