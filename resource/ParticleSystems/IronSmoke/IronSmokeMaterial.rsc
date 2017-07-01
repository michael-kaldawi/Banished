MaterialInstance resource
{
	Material _material = "Material\Particle\ParticleMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "ParticleSystems\IronSmoke\IronSmokeTexture.rsc";
		}
		{
			String _name = "normal";
			ImageBuffer _texture = "ParticleSystems\IronSmoke\IronSmokeNTexture.rsc";
		}		
	]
}