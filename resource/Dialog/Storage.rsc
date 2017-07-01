ProgressDescription capacityFull : "SharedElements.rsc:progressBar"
{
	Alignment _alignment = TopRight;
	ElementDescription _text = "textCapacity";
}

ProgressDescription capacity : "SharedElements.rsc:progressBar"
{
	Alignment _alignment = TopRight;
	int _leftPad = 84;
	int _topPad = 10;
	int _rightPad = 4;

	ElementDescription _text = "textCapacity";
}

ProgressDescription capacityShort : "SharedElements.rsc:progressBar"
{
	Alignment _alignment = TopRight;
	int _leftPad = 84;
	int _topPad = 10;
	int _rightPad = 70;

	ElementDescription _text = "textCapacity";
}

TextDescription textCapacity
{
	Alignment _alignment = MidLeft;

	int _topPad = 0;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "PercentFull";
	Color _color = 0xFF000000;
}

GroupDescription storage
{
	bool _vertical = true;
	ElementDescription _elements 
	[
		"storageContainer"
		"storageUserArea"
	]
}

GroupDescription storageUserArea
{
}

ContainerDescription storageContainer
{
	int _topPad = 4;
	int _leftPad = 4;
	int _bottomPad = 4;
	int _rightPad = 4;

	int _width = -1;
	int _height = 130;
	int _scrollSpacing = 4;

	bool _allowShrinkHeight = true;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "storageTable";
}

ContainerDescription storageShort : "storageContainer"
{
	int _height = 108;
}

ContainerDescription storageShorter : "storageContainer"
{
	int _height = 86;
}

ContainerDescription storageShortest : "storageContainer"
{
	int _height = 64;
}


ContainerDescription storageTiny : "storageContainer"
{
	int _topPad = 4;
	int _leftPad = 0;
	int _bottomPad = 0;
	int _rightPad = 0;
	ElementDescription _verticalScroll = "";
	Alignment _alignment = TopLeft;
	int _height = 21;
	int _width = 214;
}

ContainerDescription storageTiny4 : "storageContainer"
{
	int _topPad = 4;
	int _leftPad = 0;
	int _bottomPad = 0;
	int _rightPad = 0;
	ElementDescription _content = "storageTable2";
	ElementDescription _verticalScroll = "";
	Alignment _alignment = TopLeft;
	int _height = 42;
	int _width = 214;
}

TableDescription storageTable
{
	int _width = 3;
	int _height = 10;
	int _cellPad = 2;

	TableItem _items
	[
		{ int _x = -1; int _y = -1; ElementDescription _element = "storageItem"; }
	]
}

TableDescription storageTable2
{
	int _width = 2;
	int _height = 10;
	int _cellPad = 2;

	TableItem _items
	[
		{ int _x = -1; int _y = -1; ElementDescription _element = "storageItem"; }
	]
}

TableDescription storageTableSmall
{
	int _width = 2;
	int _height = 4;
	int _cellPad = 2;

	TableItem _items
	[
		{ int _x = -1; int _y = -1; ElementDescription _element = "storageItem"; }
	]
}

RibbonDescription storageItem
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	int _minWidth = 104;
	int _minHeight = 20;
	bool _vertical = false;
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

	int _minWidth = 74;
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
	int _minWidth = 32;

	Font _font = "Font\FontSmall.rsc";
}

ButtonDescription buttonTabStorage : "StandardDialog.rsc:buttonTab"
{
	ElementDescription _content = "labelTabStorage";
}

LabelDescription labelTabStorage : "StandardDialog.rsc:labelTab"
{
	String _spriteName = "StorageTab";
	String _text = "Inventory";
}
