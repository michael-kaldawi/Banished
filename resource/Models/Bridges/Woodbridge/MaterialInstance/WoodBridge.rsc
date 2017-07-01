MaterialInstance resource
{
	Material _material = "Material\OpaqueInWater\OpaqueInWaterMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "Models\Bridges\WoodBridge\MaterialInstance\WoodBridgeTexture.rsc";
		}
		{
			String _name = "snow";
			ImageBuffer _texture = "Terrain\TerrainSnowTexture.rsc";
		}		
	]
}

