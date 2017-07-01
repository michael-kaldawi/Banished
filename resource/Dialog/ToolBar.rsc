Dialog resource
{
	ElementDescription _rootElement = "main";

	ElementDescription _templates
	[
		"textSpeed"
		"checkToolbar"
		"checkToolbar2"
		"buttonToolbar"
		"buttonToolbar2"
	]
}

RibbonDescription main
{
	Alignment _alignment = BottomRight;
	bool _vertical = true;
	ElementDescription _elements
	[
		"toolBar"
	]
}

RadioDescription toolBar
{
	ElementDescription _elements
	[
		"SharedElements.rsc:dialogBorder",
		"SharedElements.rsc:sunkenBorderPad6"
		"toolbarContent",
	]
}

TableDescription toolbarContent
{
	int _leftPad = 9;
	int _rightPad = 9;
	int _topPad = 9;
	int _bottomPad = 9;

	Alignment _alignment = MidCenter;
	bool _vertical = false;
	int _cellPad = 4;
	int _width = 30;
	int _height = 1;

	ElementDescription _elements
	[
	]
}

ButtonDescription buttonToolbar : "SharedElements.rsc:raisedButton"
{
	ElementDescription _content = "imageToolbar";

	Dialog _toolTipDialog = "ToolTipHotKey.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:toolBar";
	String _toolTipText = "Unknown";
}

ButtonDescription buttonToolbar2 : "buttonToolbar"
{
	Dialog _toolTipDialog = "ToolTipToolBar.rsc";
}

CheckDescription checkToolbar : "SharedElements.rsc:raisedButton"
{
	Color _enabledColor = 0xFF808080;
	Color _disabledColor = 0xFF2E2B28;
	Color _highlightedColor = 0xFFA0A0A0;
	Color _pressedColor = 0xFF808080;

	ElementDescription _content = "imageToolbar";
	ElementDescription _check = "imageToolbar";

	Dialog _toolTipDialog = "ToolTipHotKey.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:toolBar";
	String _toolTipText = "Unknown";
}

CheckDescription checkToolbar2 : "checkToolbar"
{
	Dialog _toolTipDialog = "ToolTipToolBar.rsc";
}

ImageDescription imageToolbar
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
}

GroupDescription textSpeed
{
	int _minWidth = 40;
	int _minHeight = 40;
	ElementDescription _elements
	[
		"SharedElements.rsc:buttonEnabledBorder",
		"speedText",
	]

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:toolBar";
	String _toolTipText = "SpeedTip";
}

TextDescription speedText
{
	Alignment _alignment = MidCenter;
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
}

