Dialog resource
{
	Flags _flags = PauseGame | Modal | FirstDraw;
	ElementDescription _rootElement = "main";

	ElementDescription _templates
	[
	]

	External _references
	[
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

LayoutDescription content
{
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 8;
	int _bottomPad = 8;

	LayoutItem _elements
	[
		{
			String _name = "details";
			ElementDescription _element = "modDetails";
			LayoutHorizontal _xLayout = LeftToLeft;
			LayoutVertical _yLayout = TopToTop; 
		}
		{
			String _name = "ok";
			ElementDescription _element = "SharedElements.rsc:buttonOk";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "details";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "details"; int _yOffset = 4;
		}
		{
			String _name = "create";
			ElementDescription _element = "buttonCreate";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "details";  
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "ok"; 
		}
		{
			String _name = "update";
			ElementDescription _element = "buttonUpdate";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "create"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "create"; 
		}
	]
}

RibbonDescription modDetails
{
	ElementDescription _border = "SharedElements.rsc:sunkenRaisedBorder";

	int _leftPad = 8;
	int _topPad = 8;
	int _rightPad = 8;
	int _bottomPad = 8;

	bool _vertical = true;

	int _cellPad = 4;	

	ElementDescription _elements
	[
		"containerDetails"
	]
}

ContainerDescription containerDetails
{
	int _width = 596;
	int _height = 350;
	int _scrollSpacing = 4;

	int _leftPad = 0;
	int _topPad = 0;
	int _rightPad = 0;
	int _bottomPad = 0;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "ribbonDetails";
}

RibbonDescription ribbonDetails
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";

	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
	int _topPad = 4;
	int _cellPad = 12;

	int _minHeight = 350;
	int _minWidth = 570;
	Alignment _alignment = TopLeft;

	bool _vertical = true;
	ElementDescription _elements
	[
		"layoutHeader"
		"textDescriptionTitle"
		"textDescription"
		"textConflictTitle"
		"textConflictList"
		"textResourceTitle"
		"textResourceList"
	]
}

LayoutDescription layoutHeader
{
	LayoutItem _elements
	[
		{
			String _name = "icon";
			ElementDescription _element = "imageIcon";
			LayoutHorizontal _xLayout = LeftToLeft; 
			LayoutVertical _yLayout = TopToTop; 
		}
		{
			String _name = "title";
			ElementDescription _element = "textName";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "icon"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "icon"; 
		}
		{
			String _name = "path";
			ElementDescription _element = "textPath";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "title";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "title";
		}
		{
			String _name = "version";
			ElementDescription _element = "textVersion";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "title";  int _xOffset = 16;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "title"; 
		}
		{
			String _name = "author";
			ElementDescription _element = "textAuthor";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "path"; 
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "path"; 
		}
	]
}

ButtonDescription buttonUpdate : "SharedElements.rsc:borderButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "textUpdate";
}

ButtonDescription buttonCreate : "SharedElements.rsc:borderButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "textCreate";
}

TextDescription textUpdate
{
	Alignment _alignment = MidCenter;

	int _bottomPad = 4;
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 4;

	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModUpdate";
}

TextDescription textCreate : "textUpdate"
{
	String _text = "ModCreate";
}

ImageDescription imageIcon
{
	ElementDescription _border = "SharedElements.rsc:raisedBorder";

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "White";
	Color _color = 0xFFFFFFFF;	
	int _width = 48;
	int _height = 48;
	int _leftPad = 2;
	int _rightPad = 2;
	int _topPad = 2;
	int _bottomPad = 2;
}

TextDescription textName 
{ 
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	Font _font = "Font\Font.rsc";
}

TextDescription textPath
{ 
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModPath";
	Font _font = "Font\FontSmall.rsc";
}

TextDescription textAuthor
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModCreatedBy";
	Font _font = "Font\FontSmall.rsc";
}

TextDescription textVersion
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModVersion";
	Font _font = "Font\Font.rsc";
	Alignment _alignment = MidCenter;
}

TextDescription textDescription
{
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	Font _font = "Font\FontMedium.rsc";
	bool _wordWrap = true;
	int _wordWrapSize = 570;
}

TextDescription textDescriptionTitle
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModDescription";
	Font _font = "Font\Font.rsc";
	bool _wordWrap = true;
	int _wordWrapSize = 570;
}

TextDescription textDescription
{
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	Font _font = "Font\FontMedium.rsc";
	Alignment _alignment = MidCenter;
	bool _wordWrap = true;
	int _wordWrapSize = 192;
}

DocumentTextDescription documentText
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
}


DocumentTextDescription textConflictTitle : "documentText" { String _text = "ModConflictTitle"; }
DocumentTextDescription textConflictList : "documentText" { }
DocumentTextDescription textResourceTitle : "documentText" { String _text = "ModResourceTitle"; }
DocumentTextDescription textResourceList : "documentText" { }
