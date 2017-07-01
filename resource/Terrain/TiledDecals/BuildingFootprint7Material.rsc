MaterialInstance resource
{
	Material _material = "Material\TerrainDecal\TerrainDecalBlendMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Terrain\TiledDecals\BuildingFootprint7Texture.rsc";
		}
		{
			String _name = "snow";
			ImageBuffer _texture = "Terrain\TerrainSnowTexture.rsc";
		}
		{
			String _name = "blend";
			ImageBuffer _texture = "Terrain\TiledDecals\BuildingFootprint7BlendTexture.rsc";
		}
	]
}