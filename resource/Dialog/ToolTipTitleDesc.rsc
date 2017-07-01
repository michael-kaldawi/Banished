Dialog resource
{
	ElementDescription _rootElement = "main";

	int _drawLevel = 2;

	ElementController _controllers
	[
		{
			ObjectType _type = TitleDescToolTipUI;
		}
	]
}

GroupDescription main
{
	Alignment _alignment = TopLeft;
	ElementDescription _elements
	[
		"SharedElements.rsc:toolTipBorder",
		toolTipGroup,
	]
}

RibbonDescription toolTipGroup
{
	bool _vertical = true;

	ElementDescription _elements
	[
		"textTitle",
		"textDesc",
	]
}

TextDescription textTitle 
{
	int _leftPad = 3;
	int _rightPad = 3;
	int _bottomPad = 3;
	int _topPad = 3;

	Alignment _alignment = MidLeft;
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	bool _wordWrap = true;
	int _wordWrapSize = 240;
}

TextDescription textDesc 
{
	int _leftPad = 3;
	int _rightPad = 3;
	int _bottomPad = 3;
	int _topPad = 3;

	Alignment _alignment = MidLeft;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	Color _color = 0xFFC0C0C0;
	bool _wordWrap = true;
	int _wordWrapSize = 240;
}
