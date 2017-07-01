RibbonDescription status
{
	bool _vertical = false;
	ElementDescription _elements
	[
		"heartGroup",
		"heartGroup",
		"heartGroup",
		"heartGroup",
		"heartGroup",
	]
}

GroupDescription heartGroup
{
	ElementDescription _elements
	[
		"empty",
		"half",
		"whole",
	]
}

ImageDescription empty
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "HeartBorder";
}

ImageDescription half
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "HeartHalf";
}

ImageDescription whole
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "HeartFilled";
}
