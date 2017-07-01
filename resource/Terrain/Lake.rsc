MaterialInstance resource
{
	Material _material = "Material\Lake\LakeMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "water";
			ImageBuffer _texture = "Terrain\LakeWaterTexture.rsc";
		}
		{
			String _name = "frame";
			ImageBuffer _texture = "Terrain\RiverFrameCopyTexture.rsc";
		}			
		{
			String _name = "reflection";
			ImageBuffer _texture = "Terrain\RiverReflect2Texture.rsc";
		}		
		{
			String _name = "highlight";
			ImageBuffer _texture = "Terrain\RiverReflectTexture.rsc";
		}	

	]
}