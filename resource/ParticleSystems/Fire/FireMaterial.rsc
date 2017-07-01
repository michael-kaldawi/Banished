MaterialInstance resource
{
	Material _material = "Material\Particle\ParticleMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "ParticleSystems\Fire\FireTexture.rsc";
		}
		{
			String _name = "normal";
			ImageBuffer _texture = "ParticleSystems\Fire\FireNTexture.rsc";
		}		
	]
}