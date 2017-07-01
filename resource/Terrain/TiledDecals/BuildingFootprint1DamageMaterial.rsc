MaterialInstance resource
{
	Material _material = "Material\TerrainDecal\TerrainDamageDecalMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Terrain\TiledDecals\BuildingFootprint1Texture.rsc";
		}
		{
			String _name = "damage";
			ImageBuffer _texture = "Terrain\TiledDecals\DamageTexture.rsc";
		}
	]
}