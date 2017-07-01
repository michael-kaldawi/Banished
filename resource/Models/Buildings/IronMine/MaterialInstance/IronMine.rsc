MaterialInstance resource
{
	Material _material = "Material\OpaqueSnow\OpaqueSnowMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Models\Buildings\IronMine\MaterialInstance\IronMineTexture.rsc";
		}
		{
			String _name = "snow";
			ImageBuffer _texture = "Terrain\TerrainSnowTexture.rsc";
		}			
	]
}