Dialog resource
{
	ElementDescription _rootElement = "content";

	Flags _flags = PerElementCapture;
}

GroupDescription content
{
	Flags _flags = NoMouseCapture;
	Alignment _alignment = MidCenter;
	ElementDescription _elements
	[
		"ribbonPopup"
	]
}

RibbonDescription ribbonPopup
{
	Flags _flags = NoMouseCapture;
	bool _vertical = true;
	int _cellPad = 8;
	ElementDescription _elements
	[
		"imageIcon",
		"ribbonElement",
	]
}

RibbonDescription ribbonElement
{
	Flags _flags = NoMouseCapture;
	ElementDescription _border = "border";
	
	int _rightPad = 4;
	bool _vertical = false;
	int _cellPad = 4;
	ElementDescription _elements
	[
		"textEvent",
		"buttonOk"
	]
}

TextDescription buttonOkText : "SharedElements.rsc:buttonOkText"
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 1;
	int _bottomPad = 1;
	int _minWidth = 0;
}

ButtonDescription buttonOk : "SharedElements.rsc:raisedButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "buttonOkText";
}

ImageDescription imageIcon
{
	Flags _flags = NoMouseCapture;
	Alignment _alignment = MidCenter;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
}

BorderDescription border : "SharedElements.rsc:darkBorder"
{
	Color _color = 0xA0FFFFFF;
}

TextDescription textEvent
{
	Flags _flags = NoMouseCapture;
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;

	Alignment _alignment = MidCenter;
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	
	bool _wordWrap = true;
	int _wordWrapSize = 400;
	bool _dropShadow = true;
}
