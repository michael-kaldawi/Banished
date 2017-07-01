RibbonDescription build
{
	int _topPad = 4;
	bool _vertical = true;

	ElementDescription _elements
	[
		"storageTable"
		"progressRibbon"
	]
}

RibbonDescription progressRibbon
{
	bool _vertical = false;
	int _cellPad = 4;

	ElementDescription _elements
	[
		"progress"
		"buttonPause"
	]
}

RibbonDescription storageTable
{
	int _cellPad = 7;
	
	ElementDescription _elements 
	[
		"clearItem"
		"storageItem"
		"storageItem"
		"storageItem"
		"storageItem"
	]
}

RibbonDescription storageItem
{
	bool _vertical = true;
	int _cellPad = 7;
	ElementDescription _elements
	[
		"labelStorage"
		"textTotal"
	]
}

RibbonDescription clearItem
{
	bool _vertical = true;
	int _cellPad = 7;
	ElementDescription _elements
	[
		"labelClear"
		"textTotal"
	]
}

LabelDescription labelStorage
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";

	int _minWidth = 62;
	int _minHeight = 62;
	Alignment _alignment = MidCenter;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "Labor";
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "BuildArea";
	int _spacing = 2;
	LabelPosition _labelPosition = TextBottom;
	Alignment _textAlignment = MidCenter;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "LaborTip";
}

LabelDescription labelClear : "labelStorage"
{
	String _spriteName = "ClearArea";
	String _text = "ClearArea";
	String _toolTipText = "ClearAreaTip";
}

TextDescription textTotal
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";

	Alignment _alignment = MidCenter;
	NumberType _numberType = Integer;
	int _minWidth = 62;

	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "CountGathered";
}

ProgressDescription progress : "SharedElements.rsc:progressBar"
{
	int _topPad = 7;
	int _minWidth = 316;
	ElementDescription _text = "textCapacity";
}

TextDescription textCapacity
{
	Alignment _alignment = MidLeft;

	int _topPad = 0;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "PercentBuilt";
	Color _color = 0xFF000000;
}

CheckDescription buttonPause : "SharedElements.rsc:checkSimple"
{
    int _topPad = 7;
	ElementDescription _check = "imagePause";
	ElementDescription _content = "imagePlay";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "PauseBuildTip";
}

ImageDescription imagePause
{
	int _topPad = 5;
	int _leftPad = 5;
	int _rightPad = 5;
	int _bottomPad = 5;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "SmallPause";	
}

ImageDescription imagePlay : "imagePause"
{
	Color _color = 0xFF2E2B28;
}
