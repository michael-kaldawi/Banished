MaterialInstance resource
{
	Material _material = "Material\OpaqueSnow\OpaqueSnowMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Models\Buildings\StoneHouse\MaterialInstance\StoneHouse2Texture.rsc";
		}
		{
			String _name = "snow";
			ImageBuffer _texture = "Terrain\TerrainSnowTexture.rsc";
		}			
	]
}

MaterialInstance damage
{
	Material _material = "Material\OpaqueSnow\OpaqueSnowDamageMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Models\Buildings\StoneHouse\MaterialInstance\StoneHouse2Texture.rsc";
		}
		{
			String _name = "damage";
			ImageBuffer _texture = "Models\Buildings\DamageTexture.rsc";
		}
		{
			String _name = "snow";
			ImageBuffer _texture = "Terrain\TerrainSnowTexture.rsc";
		}			
	]
}