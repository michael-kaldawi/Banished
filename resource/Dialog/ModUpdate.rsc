Dialog resource
{
	Flags _flags = PauseGame | Modal;
	ElementDescription _rootElement = "main";

	ElementDescription _templates
	[
		"textPublished"
	]
}

GroupDescription main
{
	Alignment _alignment = MidCenter;
	ElementDescription _elements
	[
		"SharedElements.rsc:dialogBorder",
		"content"
	]
}

RibbonDescription content
{
	int _leftPad = 12;
	int _rightPad = 12;
	int _topPad = 12;
	int _bottomPad = 12;
	int _cellPad = 4;
	Alignment _alignment = MidCenter;
	int _minWidth = 570;

	bool _vertical = true;
	ElementDescription _elements
	[
		"text",
		"editNote"
		"listPublished"
		"linkUser"
		"linkMod"
		"imageBusy"
		"progress"
		"buttonList",
	]
}

ListDescription listPublished
{
	ElementDescription _border = "SharedElements.rsc:darkBorder";
	ElementDescription _container = "containerPublished";

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "White";

	Color _hoverColor = 0xFF706d68;
	Color _selectColor = 0xFFC6663C;
}

ContainerDescription containerPublished
{
	
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;

	int _width = 570;
	int _height = 200;
	int _scrollSpacing = 4;

	bool _allowShrinkHeight = false;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "ribbonPublished";
}

RibbonDescription ribbonPublished
{
	int _topPad = 4;
	int _bottomPad = 4;
	int _leftPad = 4;
	int _rightPad = 4;

	Flags _flags = ExpandWidth;
	bool _vertical = true;
	int _cellPad = 2;

	ElementDescription _elements
	[
		//"textPublished",
	]
}

TextDescription textPublished
{
	Alignment _alignment = MidLeft;
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
}

EditDescription editNote
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	int _leftPad = 3;
	int _topPad = 4;
	int _rightPad = 4;
	int _bottomPad = 3;
	Font _font = "Font\FontSmall.rsc";
	int _maxLength = 58;
	int _minWidth = 570;
	// String _allowableCharacters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz 1234567890";	
}

ProgressDescription progress : "SharedElements.rsc:progressBar"
{
	Alignment _alignment = TopRight;
	ElementDescription _text = "textProgress";
}

TextDescription textProgress
{
	Alignment _alignment = MidLeft;

	int _topPad = 0;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "PercentComplete";
	Color _color = 0xFF000000;
}

ImageDescription imageBusy
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "SmallLoadingCircle";	
	Alignment _alignment = MidCenter;
}

TextDescription text
{
	Alignment _alignment = TopCenter;
	bool _wordWrap = true;
	int _wordWrapSize = 570;
	int _minWidth = 570;
	int _bottomPad = 8;

	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:modUpload";
	String _text = "UserAgreement";

	Justify _justify = Center;
}

DocumentTextDescription linkMod : "linkUser"
{
	String _text = "ModWorkshopLink";
}

DocumentTextDescription linkUser
{
	Alignment _alignment = TopLeft;

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
	int _width = 570;
	
	Font _fonts 
	[
		"Font\FontSmall.rsc",
		"Font\FontMedium.rsc",
		"Font\Font.rsc",
	]

	SpriteSheet _spriteSheets
	[
		"Dialog/SpriteSheet.rsc",
	]

	Color _colors
	[
		0xFFFFFFFF,
		0xFFF6CD51,
		0xFFFFFF00,
	]

	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModUserAgreement";
}

RibbonDescription buttonList
{
	bool _vertical = false;
	
	int _topPad = 4;
	int _cellPad = 4;
	Alignment _alignment = MidCenter;

	ElementDescription _elements
	[
		"SharedElements.rsc:buttonYes",
		"SharedElements.rsc:buttonNo",
		"SharedElements.rsc:buttonOk",
		"SharedElements.rsc:buttonCancel",
	]
}
