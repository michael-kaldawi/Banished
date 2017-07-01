Dialog resource
{
	ElementDescription _rootElement = "main";
}

GroupDescription main
{
	Alignment _alignment = TopLeft;

	ElementDescription _elements
	[
		"savingImage"
		"animatedImage"
	]
}

AnimatedImageDescription animatedImage : "Loading.rsc:animatedImage"
{
	Alignment _alignment = MidCenter;
	int _rightPad = 4;
	int _bottomPad = 4;
	int _leftPad = 4;
	int _topPad = 4;

	int _width = 40;
	int _height = 40;

	Flags _flags = Hidden;
}

ImageDescription savingImage
{
	Flags _flags = Hidden;
	Alignment _alignment = MidCenter;

	int _rightPad = 4;
	int _bottomPad = 4;
	int _leftPad = 4;
	int _topPad = 4;

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "MediumLoadingCircle";
}

