RibbonDescription pasture
{
	bool _vertical = true;
	ElementDescription _elements
	[
		//"textHerdSize",
		"slider"
	]
}

SliderDescription slider : "SharedElements.rsc:slider"
{
	int _minWidth = 256;
	ElementDescription _number = "number";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "HerdSizeTip";
}

TextDescription textHerdSize
{
	Alignment _alignment = MidCenter;

	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "HerdSize";
}

TextDescription number
{
	Alignment _alignment = TopLeft;

	int _topPad = 0;
	int _leftPad = 2;
	int _rightPad = 2;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "CountGathered";
}