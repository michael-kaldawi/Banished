RibbonDescription crop
{
	int _topPad = 4;
	int _cellPad = 4;

	Flags _flags = ExpandWidth;

	bool _vertical = false;
	ElementDescription _elements
	[
		"yield"
	]
}

RibbonDescription cropQuality
{
	int _leftPad = 2;
	int _topPad = 4;
	int _cellPad = 4;

	Flags _flags = ExpandWidth;

	bool _vertical = false;
	ElementDescription _elements
	[
		"textSoil",
		"soilStatus",
	]
}

RibbonDescription soilStatus : "ImageStatusStar.rsc:status"
{
}

ProgressDescription yield : "SharedElements.rsc:progressBar"
{
	int _minWidth = 267;
	ElementDescription _text = "textYield";
}

TextDescription textSoil
{
	Alignment _alignment = MidLeft;

	int _topPad = 2;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "SoilQuality";
}

TextDescription textYield
{
	Alignment _alignment = MidLeft;

	int _topPad = 0;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "PercentYield";
	Color _color = 0xFF000000;
}
