Dialog resource
{
	Flags _flags = Modal | FirstDraw;

	ElementDescription _rootElement = "main";
}

GroupDescription main
{
	Alignment _alignment = TopLeft;
	Flags _flags = FullHeight | FullWidth;
	ElementDescription _elements
	[
		"content"
	]
}

RibbonDescription content
{
	Alignment _alignment = BottomCenter;
	bool _vertical = true;
	int _bottomPad = 32;
	int _cellPad = 4;

	ElementDescription _elements
	[
		"textGroup"
		"buttonClose"
	]
}

ButtonDescription buttonClose : "SharedElements.rsc:floatingButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "textClose";
}

TextDescription textClose
{
	int _leftPad = 12;
	int _rightPad = 12;
	int _topPad = 6;
	int _bottomPad = 6;

	Font _font = "Font/FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "FollowCitizenEnd";
}

BorderDescription fadedDarkBorder : "SharedElements.rsc:darkBorder"
{
	Color _color = 0x80FFFFFF;
}

RibbonDescription textGroup
{
	Alignment _alignment = MidCenter;
	ElementDescription _border = "SharedElements.rsc:darkBorder";

	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 2;
	int _bottomPad = 2;

	bool _vertical = false;
	int _cellPad = 2;

	ElementDescription _elements
	[
		"textFollow"
		"textAction"
	]
}

TextDescription textFollow
{
	bool _dropShadow = true;
	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "FollowCitizenInfo";
}

TextDescription textAction
{
	bool _dropShadow = true;
	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:citizenActions";
	String _text = "MaxAction";
}