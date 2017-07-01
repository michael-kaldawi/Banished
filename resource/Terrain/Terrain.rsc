MaterialInstance resource
{
	Material _material = "Material\Terrain\TerrainMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "grass";
			ImageBuffer _texture = "Terrain\TerrainGrassTexture.rsc";
		}
		{
			String _name = "dirt";
			ImageBuffer _texture = "Terrain\TerrainDirtTexture.rsc";
		}	
		{
			String _name = "rock";
			ImageBuffer _texture = "Terrain\TerrainRockTexture.rsc";
		}				
		{
			String _name = "snow";
			ImageBuffer _texture = "Terrain\TerrainSnowTexture.rsc";
		}		
	]
}