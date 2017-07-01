RibbonDescription content
{
	Alignment _alignment = MidCenter;
	int _cellPad = 4;
	int _topPad = 4;

	bool _vertical = true;
	ElementDescription _elements
	[
		"main",
		"buttonRibbon"
	]
}

RibbonDescription buttonRibbon
{
	Alignment _alignment = MidRight;
	bool _vertical = false;
	int _cellPad = 4;

	ElementDescription _elements
	[
		"nextButton"
		"quitButton"
	]
}

RibbonDescription main
{
	int _leftPad = 12;
	int _rightPad = 12;
	int _topPad = 8;
	int _bottomPad = 8;
	int _cellPad = 4;

	int _minWidth = 400;
	
	ElementDescription _border = "SharedElements.rsc:sunkenRaisedBorder";

	Alignment _alignment = MidCenter;

	bool _vertical = true;
	ElementDescription _elements
	[
		"preText",
		"imageTable",
		"postText",
	]
}

TextDescription preText
{
	Alignment _alignment = MidCenter;
	Justify _justify = Center;
	bool _wordWrap = true;
	int _wordWrapSize = 400;
	int _minWidth = 400;
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:common";
	String _text = "Ok";
}

TextDescription postText : "preText"
{
}

TableDescription imageTable
{
	Alignment _alignment = MidCenter;
	int _cellPad = 2;
	int _width = 5;
	int _height = 5;
}

ButtonDescription nextButton : "SharedElements.rsc:borderButton"
{
	Alignment _alignment = MidRight;
	ElementDescription _content = "buttonNextText";
}

TextDescription buttonNextText : "SharedElements.rsc:commonButtonText" 
{ 
	String _text = "Next"; 
}

ButtonDescription quitButton : "SharedElements.rsc:borderButton"
{
	Alignment _alignment = MidRight;
	ElementDescription _content = "buttonquitText";
}

TextDescription buttonquitText : "SharedElements.rsc:commonButtonText" 
{ 
	String _text = "Quit"; 
}
