CheckDescription checkProduction : "StandardDialog.rsc:checkPin"
{
	String _toolTipText = "ProductionTip";

	ElementDescription _check = "imageProduction";
	ElementDescription _content = "imageProduction";
}
ImageDescription imageProduction : "StandardDialog.rsc:titleImage" { String _spriteName = "ProductionTab"; }

RibbonDescription production
{
	bool _vertical = false;	
	int _cellPad = 4;
	int _topPad = 4;
	ElementDescription _elements
	[
		"thisYear"
		"previousYear"
	]
}

RibbonDescription production3 : "production"
{
	ElementDescription _elements
	[
		"thisYear3"
		"previousYear3"
	]
}

RibbonDescription production4  : "production"
{
	ElementDescription _elements
	[
		"thisYear4"
		"previousYear4"
	]
}

RibbonDescription previousYear
{
	ElementDescription _border = "SharedElements.rsc:sunkenRaisedBorder";
	bool _vertical = true;
	int _cellPad = 2;
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 8;
	int _bottomPad = 8;
	
	ElementDescription _elements
	[
		"textPrevYear"
		"storageItem"
		"storageItem"
	]
}

RibbonDescription previousYear3 : "previousYear"
{
	ElementDescription _elements
	[
		"textPrevYear"
		"storageItem"
		"storageItem"
		"storageItem"
	]
}

RibbonDescription previousYear4 : "previousYear"
{
	ElementDescription _elements
	[
		"textPrevYear"
		"storageItem"
		"storageItem"
		"storageItem"
		"storageItem"
	]
}

RibbonDescription thisYear : "previousYear"
{
	ElementDescription _elements
	[
		"textThisYear"
		"storageItem"
		"storageItem"
	]
}

RibbonDescription thisYear3 : "previousYear"
{
	ElementDescription _elements
	[
		"textThisYear"
		"storageItem"
		"storageItem"
		"storageItem"
	]
}

RibbonDescription thisYear4 : "previousYear"
{
	ElementDescription _elements
	[
		"textThisYear"
		"storageItem"
		"storageItem"
		"storageItem"
		"storageItem"
	]
}

RibbonDescription storageItem
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	bool _vertical = false;
	int _minWidth = 130;
	ElementDescription _elements
	[
		"labelStorage"
		"numberCount"
	]
}

LabelDescription labelStorage
{
	int _leftPad = 2;

	Alignment _alignment = MidLeft;

	int _minWidth = 90;
	Font _font = "Font\FontSmall.rsc";
	int _imageWidth = 20;
	int _imageHeight = 20;
	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;
}

NumberDescription numberCount
{
	int _rightPad = 2;

	Alignment _alignment = MidRight;
	NumberType _numberType = Integer;
	int _minWidth = 40;

	Font _font = "Font\FontSmall.rsc";
}

TextDescription textThisYear
{
	Alignment _alignment = MidLeft;
	int _topPad = 2;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "ThisYear";
}

TextDescription textPrevYear : "textThisYear"
{
	String _text = "PrevYear";
}