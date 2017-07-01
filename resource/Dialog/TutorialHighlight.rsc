Dialog resource
{
	Flags _flags = NoMouseCapture;
	ElementDescription _rootElement = "main";

	int _drawLevel = 1;
}

GroupDescription main
{
	
	Alignment _alignment = TopLeft;
	ElementDescription _elements
	[
		"glowGroup"
		"arrowGroup"
	]
}

BorderDescription borderGlow
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "GlowUpperLeft";
	String _upperCenter = "GlowUpperCenter";
	String _upperRight = "GlowUpperRight";
	String _midLeft = "GlowMidLeft";
	String _midCenter = "GlowMidCenter";
	String _midRight = "GlowMidRight";
	String _lowerLeft = "GlowLowerLeft";
	String _lowerCenter = "GlowLowerCenter";
	String _lowerRight = "GlowLowerRight";
}

GroupDescription glowGroup
{
	ElementDescription _elements
	[
		"glow"
		"borderGlow"
	]
}

ImageDescription glow
{
	Alignment _alignment = TopLeft;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "White";
	Color _color = 0x00FFFFFF;
}

GroupDescription arrowGroup
{
	ElementDescription _elements
	[
		"arrow"
	]
}


ImageDescription arrow 
{
	Alignment _alignment = TopLeft;
	
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "TutorialArrow";
}
