RibbonDescription resource
{
	bool _vertical = false;
	int _cellPad = 4;
	int _topPad = 4;
	ElementDescription _elements
	[
		"editCapture",
		"buttonCapture"
		"captureBox"
	]
}

EditDescription editCapture
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	Font _font = "Font\FontSmall.rsc";
	int _maxLength = 50;
	int _minWidth = 350;
	int _topPad = 2;
	int _bottomPad = 2;
	int _leftPad = 4;
}

ButtonDescription buttonCapture : "SharedElements.rsc:borderButton"
{
	ElementDescription _content = "textCapture";
}

TextDescription textCapture
{
	Alignment _alignment = TopLeft;

	int _topPad = 2;
	int _bottomPad = 2;
	int _leftPad = 8;
	int _rightPad = 8;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _text = "ToolCapture";
}

CaptureBoxDescription captureBox
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheetLine.rsc";
	String _spriteName = "White";
}