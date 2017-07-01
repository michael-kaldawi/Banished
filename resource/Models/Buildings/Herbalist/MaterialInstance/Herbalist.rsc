MaterialInstance resource
{
	Material _material = "Material\OpaqueSnow\OpaqueSnowAlphaTestMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Models\Buildings\Herbalist\MaterialInstance\HerbalistTexture.rsc";
		}
		{
			String _name = "snow";
			ImageBuffer _texture = "Terrain\TerrainSnowTexture.rsc";
		}			
	]
}

MaterialInstance damage
{
	Material _material = "Material\OpaqueSnow\OpaqueSnowDamageAlphaTestMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Models\Buildings\Herbalist\MaterialInstance\HerbalistTexture.rsc";
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