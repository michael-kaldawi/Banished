GroupDescription orchard
{
	int _topPad = 4;
	ElementDescription _elements
	[
		"yield"
	]
}

ProgressDescription yield : "SharedElements.rsc:progressBar"
{
	ElementDescription _text = "textYield";
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
