SpriteSheet resource
{
	String _materialName = "FigSpriteSheetMaterial.rsc";
	String _imageName = "Build/FigSpriteSheet.png";
	int _imageWidth = 128;
	int _imageHeight = 128;
	bool _padForFiltering = true;
	
	Sprite _sprites
	[ 
		{ String _name = "Fig";				String _source = "UI/Sprite/Fig.png"; }
		{ String _name = "FigSmall";		String _source = "UI/Sprite/FigSmall.png"; }

		{ String _name = "SeedFigSmall";	String _source = "UI/Sprite/SeedFigSmall.png"; }
		{ String _name = "SeedFig";			String _source = "UI/Sprite/SeedFig.png"; }

		{ String _name = "FruitFig";		String _source = "UI/Sprite/FruitFig.png"; }
	]
}
