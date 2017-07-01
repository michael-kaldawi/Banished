ProgressDescription school : "SharedElements.rsc:progressBar"
{
	Alignment _alignment = TopRight;
	ElementDescription _text = "textCapacitySchool";

	int _topPad = 4;
	int _minWidth = 222;
}

TextDescription textCapacitySchool
{
	Alignment _alignment = MidLeft;

	int _topPad = 0;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "StudentCount";
	Color _color = 0xFF000000;
}

ProgressDescription doctor : "SharedElements.rsc:progressBar"
{
	Alignment _alignment = TopRight;
	ElementDescription _text = "textCapacityDoctor";

	int _topPad = 4;
	int _minWidth = 222;
}

TextDescription textCapacityDoctor
{
	Alignment _alignment = MidLeft;

	int _topPad = 0;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "PatientCount";
	Color _color = 0xFF000000;
}

ProgressDescription chapel : "SharedElements.rsc:progressBar"
{
	Alignment _alignment = TopRight;
	ElementDescription _text = "textCapacityChapel";

	int _topPad = 4;
	int _minWidth = 222;
}

TextDescription textCapacityChapel
{
	Alignment _alignment = MidLeft;

	int _topPad = 0;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "ChapelCount";
	Color _color = 0xFF000000;
}