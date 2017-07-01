ImageBuffer resource : "Texture/UITexture.rsc"
{
	FilterMode _filterMode = Point;
	String _imageName = "Cursor\Arrow.png";
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
	String _materialName = "Cursor/Arrow.rsc:material";
	String _imageName = "Build\ArrowTex.png";	// dummy - not used!
	int _imageWidth = 32;
	int _imageHeight = 32;
	bool _padForFiltering = false;
	
	Sprite _sprites
	[ 
		{ String _name = "Cursor";			String _source = "Cursor\Arrow.png"; }
	]
}

Cursor cursor
{
	SpriteSheet _cursorSheet = "spriteSheet";
	int _hotSpotX = 0;
	int _hotSpotY = 0;
}
