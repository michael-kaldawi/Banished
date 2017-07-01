RibbonDescription status
{
	bool _vertical = false;
	ElementDescription _elements
	[
		"starGroup",
		"starGroup",
		"starGroup",
		"starGroup",
		"starGroup",
	]
}

RibbonDescription status3
{
	bool _vertical = false;
	ElementDescription _elements
	[
		"starGroup",
		"starGroup",
		"starGroup",
	]
}

GroupDescription starGroup
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
	String _spriteName = "StarBorder";
}

ImageDescription half
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "StarHalf";
}

ImageDescription whole
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "StarFilled";
}
