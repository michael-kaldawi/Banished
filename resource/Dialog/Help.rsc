RibbonDescription main
{
	Alignment _alignment = MidCenter;
	bool _vertical = true; 
	ElementDescription _elements
	[
		
		"navGroup"
		"content"
	]
}

RibbonDescription comboGroup
{
	Alignment _alignment = TopRight;
	int _cellPad = 4;
	int _topPad = 4;

	bool _vertical = false;

	ElementDescription _elements
	[
		"textTopic"
		"comboTopic"
	]
}

GroupDescription navGroup
{
	ElementDescription _elements
	[
		"comboGroup"
		"buttonGroup"
	]
}

RibbonDescription buttonGroup
{
	Alignment _alignment = TopLeft;
	int _cellPad = 4;
	int _topPad = 4;

	bool _vertical = false;

	ElementDescription _elements
	[
		"buttonBack"
		"buttonForward"
	]
}

TextDescription textTopic
{
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "Topic";
	Color _color = 0xFFC0C0C0;
}

ButtonDescription buttonBack : "SharedElements.rsc:borderButton"
{
	ElementDescription _content = "imageBack";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "HelpBackTip";
}

ButtonDescription buttonForward : "SharedElements.rsc:borderButton"
{
	ElementDescription _content = "imageForward";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "HelpForwardTip";
}

ImageDescription imageBack
{
	Alignment _alignment = MidCenter;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "ArrowLeft";
	int _leftPad = 20;
	int _rightPad = 20;
	int _topPad = 4;
	int _bottomPad = 4;
}

ImageDescription imageForward : "imageBack"
{
	String _spriteName = "ArrowRight";
}

ComboDescription comboTopic : "SharedElements.rsc:textCombo"
{
	int _minWidth = 220;
}

ContainerDescription content
{
	Flags _flags = ExtendWidth;
	Alignment _alignment = TopLeft;

	int _topPad = 4;
	int _bottomPad = 4;

	int _width = 589;
	int _height = 400;
	int _scrollSpacing = 4;

	bool _allowShrinkHeight = false;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "documentHelp";
}

DocumentTextDescription documentHelp
{
	Alignment _alignment = TopLeft;
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";

	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;

	SpriteSheet _elementSheet = "Dialog/SpriteSheet.rsc";
	String _underlineSprite = "White";
	String _bulletSprite 
	[ 
		"BulletSmall"
		"BulletMedium"
		"Bullet"
		"BulletLarge"
	]

	Color _linkColor = 0xFFF6CD51;
	Color _linkHover = 0xFFFFD968;
	Color _linkPressed = 0xFFB6911F;

	int _tabSize = 32;
	int _width = 564;
	int _minHeight = 400;
	
	Font _fonts 
	[
		"Font\FontSmall.rsc",
		"Font\FontMedium.rsc",
		"Font\Font.rsc",
		"Font\FontLarge.rsc",
	]

	SpriteSheet _spriteSheets
	[
		"Dialog/SpriteSheet.rsc",
		"StatusIcons/CitizenIconSpriteSheet.rsc",
		"StatusIcons/BuildingIconSpriteSheet.rsc",
		"Game/Help/Sprite/HelpSpriteSheet.rsc",
	]

	ExternalList _spriteGroups = "Game/Help/HelpSprites.rsc";

	Color _colors
	[
		0xFFFFFFFF,
		0xFFdb8036,
		0xFFF6CD51,
	]
}


