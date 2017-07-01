Dialog resource
{
	ElementDescription _rootElement = "main";
}

Dialog gameLoad : "resource" 
{
	String _backgroundSpriteName = "Background";
	Color _backgroundColor = 0xFFFFFFFF;
}

Dialog gameLoad0 : "gameLoad" { SpriteSheet _backgroundSpriteSheet = "Sprite/Background/Loading00.rsc"; }
Dialog gameLoad1 : "gameLoad" { SpriteSheet _backgroundSpriteSheet = "Sprite/Background/Loading01.rsc"; }
Dialog gameLoad2 : "gameLoad" { SpriteSheet _backgroundSpriteSheet = "Sprite/Background/Loading02.rsc"; }
Dialog gameLoad3 : "gameLoad" { SpriteSheet _backgroundSpriteSheet = "Sprite/Background/Loading03.rsc"; }
Dialog gameLoad4 : "gameLoad" { SpriteSheet _backgroundSpriteSheet = "Sprite/Background/Loading04.rsc"; }
Dialog gameLoad5 : "gameLoad" { SpriteSheet _backgroundSpriteSheet = "Sprite/Background/Loading05.rsc"; }
Dialog gameLoad6 : "gameLoad" { SpriteSheet _backgroundSpriteSheet = "Sprite/Background/Loading06.rsc"; }
Dialog gameLoad7 : "gameLoad" { SpriteSheet _backgroundSpriteSheet = "Sprite/Background/Loading07.rsc"; }
Dialog gameLoad8 : "gameLoad" { SpriteSheet _backgroundSpriteSheet = "Sprite/Background/Loading08.rsc"; }
Dialog gameLoad9 : "gameLoad" { SpriteSheet _backgroundSpriteSheet = "Sprite/Background/Loading09.rsc"; }
Dialog gameLoad10 : "gameLoad" { SpriteSheet _backgroundSpriteSheet = "Sprite/Background/Loading10.rsc"; }
Dialog gameLoad11 : "gameLoad" { SpriteSheet _backgroundSpriteSheet = "Sprite/Background/Loading11.rsc"; }


GroupDescription main
{

	Alignment _alignment = BottomCenter;
	ElementDescription _elements
	[
		//"SharedElements.rsc:dialogBorder",
		"fullContent"
	]
}

RibbonDescription fullContent
{
	int _leftPad = 0;
	int _rightPad = 0;
	int _topPad = 0;
	int _bottomPad = 24;

	int _cellPad = -16;
	bool _vertical = true;
	Alignment _alignment = MidCenter;
	ElementDescription _elements
	[
		"content",
		"descText",
	]
}

RibbonDescription content
{
	int _cellPad = 4;
	bool _vertical = false;
	Alignment _alignment = MidCenter;
	ElementDescription _elements
	[
		"imageGroup",
		"loadingText",
	]
}

TextDescription loadingText
{
	Alignment _alignment = MidCenter;

	Font _font = "Font\FontLarge.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "Loading";
}

TextDescription descText
{
	Alignment _alignment = MidCenter;

	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:loadingDetails";
	String _text = "Loading0";
}


GroupDescription imageGroup
{
	int _bottomPad = 26;
	ElementDescription _elements
	[
		"animatedImage"
		"loadingImage"
	]
}

ImageDescription loadingImage
{
	Alignment _alignment = MidCenter;

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "LoadingCircle";
	Color _color = 0x00FFFFFF;

	int _width = 1;
	int _height = 1;
}

AnimatedImageDescription animatedImage
{
	Alignment _alignment = MidCenter;
	Color _color = 0xFFFFFFFF;
	SpriteSheet _spriteSheet = "LoadingSpriteSheet.rsc";
	String _spriteName = "Loading00";

	int _framesPerSecond = 30;

	String _frames
	[
		"Loading00"
		"Loading01"
		"Loading02"
		"Loading03"
		"Loading04"
		"Loading05"
		"Loading06"
		"Loading07"
		"Loading08"
		"Loading09"

		"Loading10"
		"Loading11"
		"Loading12"
		"Loading13"
		"Loading14"
		"Loading15"
		"Loading16"
		"Loading17"
		"Loading18"
		"Loading19"

		"Loading20"
		"Loading21"
		"Loading22"
		"Loading23"
		"Loading24"
		"Loading25"
		"Loading26"
		"Loading27"
		"Loading28"
		"Loading29"

		"Loading30"
		"Loading31"
		"Loading32"
		"Loading33"
		"Loading34"
		"Loading35"
		"Loading36"
		"Loading37"
		"Loading38"
		"Loading39"

		"Loading40"
		"Loading41"
		"Loading42"
		"Loading43"
		"Loading44"
		"Loading45"
		"Loading46"
		"Loading47"
		"Loading48"
		"Loading49"

		"Loading50"
		"Loading51"
		"Loading52"
		"Loading53"
		"Loading54"
		"Loading55"
		"Loading56"
		"Loading57"
		"Loading58"
		"Loading59"
	]
}

