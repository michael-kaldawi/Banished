ImageBuffer resource : "Texture/UITexture.rsc"
{
	FilterMode _filterMode = Point;
	String _imageName = "Cursor\Move.png";
}


MaterialInstance material
{
	Material _material = "Material\UI\uiMaterial.rsc";
	Texture _textures
	[ 
		{
			String _name = "diffuse";
			ImageBuffer _texture = "resource";
		}
	]
}

SpriteSheet spriteSheet
{
	String _materialName = "Cursor/Move.rsc:material";
	String _imageName = "Build\MoveTex.png";	// dummy - not used!
	int _imageWidth = 32;
	int _imageHeight = 32;
	bool _padForFiltering = false;
	
	Sprite _sprites
	[ 
		{ String _name = "Cursor";			String _source = "Cursor\Move.png"; }
	]
}

Cursor cursor
{
	SpriteSheet _cursorSheet = "spriteSheet";
	int _hotSpotX = 10;
	int _hotSpotY = 10;
}
