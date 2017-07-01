RibbonDescription resource
{
	Alignment _alignment = MidRight;
	int _topPad = 4;
	bool vertical = false;
	int _cellPad = 6;
	ElementDescription _elements
	[
		"textProduct",
		"comboProduct",
	]
}

TextDescription textProduct
{
	Alignment _alignment = MidRight;
	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "Product";
	int _leftPad = 4;
}

ComboDescription comboProduct : "SharedElements.rsc:textCombo"
{
	int _minWidth = 222;

	ElementDescription _content = "textComboLabel";
	ElementDescription _label = "comboListText";


	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "ProductTip";
}

LabelDescription textComboLabel : "SharedElements.rsc:textComboLabel"
{
	Font _font = "Font\FontSmall.rsc";
	LabelPosition _labelPosition = TextRight;
}

LabelDescription comboListText : "SharedElements.rsc:comboListText"
{
	Font _font = "Font\FontSmall.rsc";
	int _spacing = 4;
}

ProgressDescription progressRemaining : "SharedElements.rsc:progressBar"
{
	int _topPad = 4;
	Alignment _alignment = TopLeft;
	ElementDescription _text = "textProgress";
}

TextDescription textProgress
{
	Alignment _alignment = MidLeft;

	int _topPad = 0;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "PercentRemaining";
	Color _color = 0xFF000000;
}
