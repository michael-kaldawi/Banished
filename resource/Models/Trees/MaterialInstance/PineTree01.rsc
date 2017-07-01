MaterialInstance resource
{
	Material _material = "Material\Foliage\FoliageMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Models\Trees\MaterialInstance\PineTree01Texture.rsc";
		}
		{
			String _name = "snow";
			ImageBuffer _texture = "Terrain\TerrainSnowTexture.rsc";
		}		
	]
	Constant _constants
	[ 
	]
}