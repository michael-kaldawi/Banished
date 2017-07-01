MaterialInstance resource
{
	Material _material = "Material\AlphaTest\AlphaTestMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Models\NaturalResource\Crops\MaterialInstance\WheatTexture.rsc";
		}
		{
			String _name = "snow";
			ImageBuffer _texture = "Terrain\TerrainSnowTexture.rsc";
		}			
	]
}