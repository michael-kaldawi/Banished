Dialog resource
{
	ElementDescription _rootElement = "main";

	int _drawLevel = 2;
}

GroupDescription main
{
	Alignment _alignment = TopLeft;
	ElementDescription _elements
	[
		"SharedElements.rsc:toolTipBorder",
		textToolTip,
	]
}

TextDescription textToolTip
{
	int _leftPad = 3;
	int _rightPad = 3;
	int _bottomPad = 3;
	int _topPad = 3;

	Alignment _alignment = MidLeft;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	bool _wordWrap = true;
	int _wordWrapSize = 180;
}
