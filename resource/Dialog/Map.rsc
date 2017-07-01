GroupDescription content
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	int _leftPad = 2;
	int _rightPad = 2;
	int _topPad = 2;
	int _bottomPad = 2;

	ElementDescription _elements
	[
		"imageMap",
		"imageOverlay"
		"frustum"
	]
}

ImageDescription imageMap
{
	int _width = 192;
	int _height = 192;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "White";
	Color _color = 0xFFFFFFFF;
}

ImageDescription imageOverlay
{
	int _width = 192;
	int _height = 192;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "White";
	Color _color = 0xFFFFFFFF;
}

FrustumOutlineDescription frustum
{
	int _width = 192;
	int _height = 192;
	SpriteSheet _spriteSheet = "SpriteSheetLine.rsc";
	String _spriteName = "White";
	Color _color = 0x80FFFF00;
}