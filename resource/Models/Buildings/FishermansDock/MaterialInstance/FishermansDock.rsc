MaterialInstance resource
{
	Material _material = "Material\OpaqueInWater\OpaqueInWaterMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Models\Buildings\FishermansDock\MaterialInstance\FishermansDockTexture.rsc";
		}
		{
			String _name = "snow";
			ImageBuffer _texture = "Terrain\TerrainSnowTexture.rsc";
		}			
	]
}

MaterialInstance damage
{
	Material _material = "Material\OpaqueInWater\OpaqueInWaterDamageMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Models\Buildings\FishermansDock\MaterialInstance\FishermansDockTexture.rsc";
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