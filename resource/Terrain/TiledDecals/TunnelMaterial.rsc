MaterialInstance resource
{
	Material _material = "Material\TerrainTiledDecal\TerrainTunnelMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Terrain\TiledDecals\StorageYardTexture.rsc";
		}
		{
			String _name = "tiles";
			ImageBuffer _texture = "Terrain\TerrainTileTexture.rsc";
		}
	]
}