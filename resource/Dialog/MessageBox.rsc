Dialog resource
{
	ElementDescription _rootElement = "main";
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
	Alignment _alignment = MidCenter;

	bool _vertical = true;
	ElementDescription _elements
	[
		"text",
		"buttonList",
	]
}

TextDescription text
{
	Alignment _alignment = MidCenter;
	bool _wordWrap = true;
	int _wordWrapSize = 400;
	int _bottomPad = 8;

	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:common";
	String _text = "Ok";
}

RibbonDescription buttonList
{
	bool _vertical = false;
	
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
