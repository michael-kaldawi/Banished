MaterialInstance resource
{
	Material _material = "Material\TerrainTiledDecal\TerrainTiledDecalMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Terrain\TiledDecals\ClearAreaTexture.rsc";
		}
		{
			String _name = "tiles";
			ImageBuffer _texture = "Terrain\TerrainTileTexture.rsc";
		}
	]
}