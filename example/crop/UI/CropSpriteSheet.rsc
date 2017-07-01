SpriteSheet resource
{
	String _materialName = "CropSpriteSheetMaterial.rsc";
	String _imageName = "Build/CropSpriteSheet.png";
	int _imageWidth = 128;
	int _imageHeight = 64;
	bool _padForFiltering = true;
	
	Sprite _sprites
	[ 
		{ String _name = "Lettuce";				String _source = "UI/Sprite/Lettuce.png"; }
		{ String _name = "LettuceSmall";		String _source = "UI/Sprite/LettuceSmall.png"; }

		{ String _name = "SeedLettuceSmall";	String _source = "UI/Sprite/SeedLettuceSmall.png"; }
		{ String _name = "SeedLettuce";			String _source = "UI/Sprite/SeedLettuce.png"; }

		{ String _name = "CropLettuce";			String _source = "UI/Sprite/CropLettuce.png"; }
	]
}
