
GroupDescription content
{
	ElementDescription _elements 
	[
		"professionTable"
	]
}

// this table will expand automatically... could put parent object(content) in a Container with scroll bar
// to reduce the size of the dialog. _width controls how many columns are used.
TableDescription professionTable
{
	int _width = 2;
	int _height = 1;
	int _cellPad = 2;
	int _topPad = 4;

	TableItem _items
	[
		{ int _x = -1; int _y = -1; ElementDescription _element = "professionRow"; }
	]
}

RibbonDescription professionRow
{
	bool _vertical = false;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"labelProfession"
		"spinnerCount"
		"ofText"
		"numberAvailable"
		"buttonGoto"
	]
}

ButtonDescription buttonGoto : "SharedElements.rsc:raisedButton"
{
	//int _minWidth = 16;
	int _minHeight = 20;
	ElementDescription _content = "imageGoto";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "ProfessionGotoTip";
}

ImageDescription imageGoto
{
	Alignment _alignment = MidCenter;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "ArrowRightThin";
	//int _width = 16;
	//int _height = 16;
	int _leftPad = 2;
	int _rightPad = 2;
}

TextDescription ofText
{
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "CountTotal";
}

NumberDescription numberAvailable
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	int _minWidth = 28;

	int _leftPad = 2;
	int _rightPad = 2;
	Font _font = "Font\FontSmall.rsc";
	NumberType _numberType = Integer;
	int _ivalue = 0;
	Color _color = 0xFFC0C0C0;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "ProfessionJobsTip";
}

LabelDescription labelProfession
{
	Alignment _alignment = MidLeft;

	int _minWidth = 96;

	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:professions";
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:professions";
	String _toolTipText = "Profession0Tip";

	String _text = "Profession0";
	String _spriteName = "Profession0";

	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;
}

LabelDescription labelProfessionPad : "labelProfession"
{
	int _leftPad = 8;
}

SpinnerDescription spinnerCount : "SharedElements.rsc:spinnerSmall"
{
}
