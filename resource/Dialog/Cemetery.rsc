ProgressDescription cemetery : "SharedElements.rsc:progressBar"
{
	Alignment _alignment = TopRight;
	ElementDescription _text = "textCapacityCemetery";

	int _topPad = 4;
	int _minWidth = 222;
}

TextDescription textCapacityCemetery
{
	Alignment _alignment = MidLeft;

	int _topPad = 0;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "GraveCount";
	Color _color = 0xFF000000;
}
