Dialog resource
{
	ElementDescription _rootElement = "main";

	ElementController _controllers
	[
		{ ObjectType _type = ToolUI; }
	]
}

Dialog resourceUserTitle
{
	ElementDescription _rootElement = "main";

	ElementController _controllers
	[
		{ ObjectType _type = ToolUI; }
	]

	ElementOverride _override
	[
		{ String _name = "labelTitle"; ElementDescription _element = "labelTitleParam"; }
	]
}


Dialog entity
{
	ElementDescription _rootElement = "main";

	ElementController _controllers
	[
		{ ObjectType _type = ToolUI; }
		{ ObjectType _type = EntityUI; ElementDescription _element = "centerPin"; String _insertAt = "centerPinGroup"; }
	]
}

GroupDescription main
{
	Alignment _alignment = TopLeft;

	ElementDescription _elements
	[
		"content"
	]
}

RibbonDescription content
{
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 8;
	int _bottomPad = 8;

	bool _vertical = true;
	ElementDescription _border = "SharedElements.rsc:dialogBorder";
	ElementDescription _elements
	[
		"titleBar",
		"pages",
	]
}

PageDescription pages
{
	ElementDescription _elements
	[
		"pageMain",
		"pageTabGroup",
		"pageBuild",
		"pageDestroy",
		"pageUser",
	]
}

GroupDescription pageUser
{
}

GroupDescription pageBuild
{
}

GroupDescription pageDestroy
{
}

GroupDescription pageTabHeader
{
}


GroupDescription pageTabGroup
{
	ElementDescription _elements
	[
		"pageTab",
		"pageTabHeader",
	]
}

TabDescription pageTab
{
	int _topPad = 4;

	ElementDescription _outerBorderTop = "SharedElements.rsc:tabBorderTop";
	ElementDescription _outerBorderBottom = "SharedElements.rsc:tabBorderBottom";
	ElementDescription _innerBorder = "SharedElements.rsc:raisedBorder";

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _connectStart = "TabStart";
	String _connectMid = "TabMid";
	String _connectEnd = "TabEnd";

	int _elementPad = 4;
}

RibbonDescription pageMain
{
	bool _vertical = true;
	ElementDescription _elements
	[
		"buttonBar",
		"userGroup0",
		"userGroup1",
		"userGroup2",
		"userGroup3",
		"userGroup4",
		"userGroup5"
	]
}

BorderDescription borderTitle : "SharedElements.rsc:sunkenBorder" { int _mouseCursorIndex = 3; }

GroupDescription titleBar
{
	// show move icon when hovering on title bar
	

	ElementDescription _elements
	[
		"borderTitle",
		"labelTitleGroup",
		"userTitle",
	]
}

RibbonDescription buttonBar
{
	bool _vertical = false;
	Alignment _alignment = MidLeft;
	int _cellPad = 4;

	ElementDescription _elements
	[
		"userButton0",
		"userButton1",
		"userButton2",
		"userButton3",
		"userButton4",
		"userButton5",
	]
}

RibbonDescription labelTitleGroup
{
	int _mouseCursorIndex = 3;
	bool _vertical = false;
	Alignment _alignment = MidLeft;
	int _cellPad = 2;
	int _leftPad = 2;

	ElementDescription _elements
	[
		
		"labelTitle"
	]
}

TextDescription labelTitle 
{
	int _mouseCursorIndex = 3;
	Alignment _alignment = MidLeft;

	int _bottomPad = 3;
	int _leftPad = 2;
	int _rightPad = 2;
	int _topPad = 3;

	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:objects";
}

TextDescription labelTitleParam 
{
	int _mouseCursorIndex = 3;
	Alignment _alignment = MidLeft;

	int _bottomPad = 3;
	int _leftPad = 2;
	int _rightPad = 2;
	int _topPad = 3;

	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
}


RibbonDescription userTitle
{
	int _mouseCursorIndex = 3;

	bool _vertical = false;
	Alignment _alignment = MidRight;
	int _cellPad = 2;
	int _rightPad = 2;

	ElementDescription _elements
	[
		"userTitle5",
		"userTitle4",
		"userTitle3",
		"userTitle2",
		"userTitle1",
		"userTitle0",
		"centerPinGroup",
		"buttonClose",
	]
}

RibbonDescription centerPin
{
	int _mouseCursorIndex = 3;

	bool _vertical = false;
	Alignment _alignment = MidRight;
	int _cellPad = 2;
	
	ElementDescription _elements
	[
		"buttonCenter",
		"checkPin",
	]
}

ButtonDescription titleButton : "SharedElements.rsc:raisedButton"
{
	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
}

ImageDescription titleImage 
{
	int _bottomPad = 2;
	int _leftPad = 2;
	int _rightPad = 2;
	int _topPad = 2;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
}

ButtonDescription buttonClose : "titleButton" {	ElementDescription _content = "imageClose"; String _toolTipText = "CloseTip"; }
ButtonDescription buttonCenter : "titleButton" {	ElementDescription _content = "imageCenter"; String _toolTipText = "CenterTip"; }
CheckDescription checkPin : "titleButton"
{
	String _toolTipText = "PinTip";

	ElementDescription _check = "imagePin";
	ElementDescription _content = "imagePin";

	Color _enabledColor = 0xFF2E2B28;
	Color _disabledColor = 0xFF2E2B28;
	Color _highlightedColor = 0xFF2E2B28;
	Color _pressedColor = 0xFF2E2B28;
	Color _color = 0xFF2E2B28;
}

ImageDescription imageClose : "titleImage" { String _spriteName = "ToolClose"; }
ImageDescription imageCenter : "titleImage" { String _spriteName = "ToolCenter"; }
ImageDescription imagePin : "titleImage" { String _spriteName = "ToolPin"; }

GroupDescription centerPinGroup { }

GroupDescription userGroup0 { }
GroupDescription userGroup1 { }
GroupDescription userGroup2 { }
GroupDescription userGroup3 { }
GroupDescription userGroup4 { }
GroupDescription userGroup5 { }

GroupDescription userButton0 { }
GroupDescription userButton1 { }
GroupDescription userButton2 { }
GroupDescription userButton3 { }
GroupDescription userButton4 { }
GroupDescription userButton5 { }

GroupDescription userTitle0 { }
GroupDescription userTitle1 { }
GroupDescription userTitle2 { }
GroupDescription userTitle3 { }
GroupDescription userTitle4 { }
GroupDescription userTitle5 { }

ButtonDescription buttonTab : "SharedElements.rsc:raisedButton"
{
	Alignment _alignment = MidCenter;
}

LabelDescription labelTab
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;

	Alignment _alignment = MidCenter;

	Font _font = "Font\FontSmall.rsc";
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";

	int _spacing = 2;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;
}
