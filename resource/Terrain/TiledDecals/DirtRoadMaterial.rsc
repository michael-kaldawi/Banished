MaterialInstance resource
{
	Material _material = "Material\TerrainTiledSnowDecal\TerrainTiledSnowDecalMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Terrain\TiledDecals\DirtRoadTexture.rsc";
		}
		{
			String _name = "tiles";
			ImageBuffer _texture = "Terrain\RoadTileTexture.rsc";
		}
		{
			String _name = "snow";
			ImageBuffer _texture = "Terrain\TerrainSnowTexture.rsc";
		}		
	]
}