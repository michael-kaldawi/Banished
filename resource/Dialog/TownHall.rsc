TabDescription tabs
{
	ElementDescription _outerBorderTop = "SharedElements.rsc:tabBorderTop";
	ElementDescription _outerBorderBottom = "SharedElements.rsc:tabBorderBottom";
	ElementDescription _innerBorder = "SharedElements.rsc:raisedBorder";

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _connectStart = "TabStart";
	String _connectMid = "TabMid";
	String _connectEnd = "TabEnd";

	int _elementPad = 4;
	int _topPad = 4;
	Tab _tabs
	[
		{ 
			ElementDescription _button = "buttonOverview";
			ElementDescription _content = "overviewTab";
		}
		{ 
			ElementDescription _button = "buttonProduction";
			ElementDescription _content = "productionTab";
		}
		{ 
			ElementDescription _button = "buttonInventory";
			ElementDescription _content = "inventoryTab";
		}
		{ 
			ElementDescription _button = "buttonGraphs";	
			ElementDescription _content = "graphs";
		}
		{ 
			ElementDescription _button = "buttonNomad";	
			ElementDescription _content = "nomadTab";
		}
		{ 
			ElementDescription _button = "buttonAgri";	
			ElementDescription _content = "agriTab";
		}
	]
}

ButtonDescription buttonOverview : "StandardDialog.rsc:buttonTab" { ElementDescription _content = "labelOverview"; }
ButtonDescription buttonInventory : "StandardDialog.rsc:buttonTab" { ElementDescription _content = "labelInventory"; }
ButtonDescription buttonProduction : "StandardDialog.rsc:buttonTab" { ElementDescription _content = "labelProduction"; }
ButtonDescription buttonGraphs : "StandardDialog.rsc:buttonTab" { ElementDescription _content = "labelGraphs"; }
ButtonDescription buttonAgri : "StandardDialog.rsc:buttonTab" { ElementDescription _content = "labelAgri"; }
ButtonDescription buttonNomad : "StandardDialog.rsc:buttonTab" { ElementDescription _content = "labelNomad"; }

LabelDescription labelOverview : "StandardDialog.rsc:labelTab" { String _spriteName = "OverviewTab"; String _text = "Overview"; }
LabelDescription labelInventory : "StandardDialog.rsc:labelTab" { String _spriteName = "StorageTab"; String _text = "TownInventory"; }
LabelDescription labelProduction : "StandardDialog.rsc:labelTab" { String _spriteName = "ProductionTab"; String _text = "Production"; }
LabelDescription labelGraphs : "StandardDialog.rsc:labelTab" { String _spriteName = "GraphsTab"; String _text = "Graphs"; }
LabelDescription labelAgri : "StandardDialog.rsc:labelTab" { String _spriteName = "AgriTab"; String _text = "Agri"; }
LabelDescription labelNomad : "StandardDialog.rsc:labelTab" { String _spriteName = "NomadTab"; String _text = "Nomads"; }

// --------------------------------------------------
// common controls
// --------------------------------------------------

GroupDescription nomadTab
{
}

BorderDescription containerBorder : "SharedElements.rsc:raisedBorder"
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;
}

TextDescription containerHeader
{
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	Alignment _alignment = MidLeft;
	Font _font = "Font\FontMedium.rsc";
	int _leftPad = 8;
	int _bottomPad = 4;
	int _topPad = 4;
}

TextDescription tableHeaderText
{
	ElementDescription _border = "SharedElements.rsc:flatButtonHighlightBorder";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	Alignment _alignment = MidLeft;
	Font _font = "Font\FontSmall.rsc";
	int _leftPad = 2;
	int _topPad = 2;
	int _bottomPad = 0;
}

NumberDescription tableNumber
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	int _rightPad = 2;
	Alignment _alignment = MidRight;
	NumberType _numberType = Integer;
	Font _font = "Font\FontSmall.rsc";
}

TextDescription tableText
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";

	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	Alignment _alignment = MidLeft;
	Font _font = "Font\FontSmall.rsc";
	int _leftPad = 2;
	int _topPad = 2;
	int _bottomPad = 2;
}

TextDescription comboTitle
{
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	Alignment _alignment = MidLeft;
	Font _font = "Font\FontSmall.rsc";
	String _text = "Show";
	int _rightPad = 4;
}

TextDescription sortTitle
{
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	Alignment _alignment = MidLeft;
	Font _font = "Font\FontSmall.rsc";
	String _text = "Sort";
	int _rightPad = 4;
}

ComboDescription comboSelection : "SharedElements.rsc:textCombo"
{
	int _minWidth = 222;
	int _topPad = 4;
	int _bottomPad = 4;

	ElementDescription _content = "textComboLabel";
	ElementDescription _label = "comboListText";
}

LabelDescription textComboLabel : "SharedElements.rsc:textComboLabel"
{
	Font _font = "Font\FontSmall.rsc";
	LabelPosition _labelPosition = TextLeft;
}

LabelDescription comboListText : "SharedElements.rsc:comboListText"
{
	Font _font = "Font\FontSmall.rsc";
	int _spacing = 4;
}

// --------------------------------------------------
// tabs controls
// --------------------------------------------------

RibbonDescription inventoryTab
{
	Alignment _alignment = TopLeft;
	bool _vertical = true;
	ElementDescription _elements [ "inventoryTitleGroup", "inventoryGroup" ]
}

GroupDescription inventoryTitleGroup
{
	ElementDescription _elements [ "inventoryTitle", "inventoryCombos" ]
}

RibbonDescription inventoryCombos
{
	Alignment _alignment = MidRight;
	bool _vertical = false;
	ElementDescription _elements [ "sortSelection", "inventorySelection" ]
}

RibbonDescription inventorySelection
{
	int _rightPad = 4;
	bool _vertical = false;
	ElementDescription _elements [ "comboTitle", "inventoryCombo" ]
}

RibbonDescription sortSelection
{
	int _rightPad = 4;
	Alignment _alignment = MidRight;
	bool _vertical = false;
	ElementDescription _elements [ "sortTitle", "sortCombo" ]
}

ComboDescription inventoryCombo : "comboSelection" { int _minWidth = 150; }
ComboDescription sortCombo : "comboSelection" { int _minWidth = 150; StringTable _initialData = "StringTable.rsc:inventorySort"; }

TextDescription inventoryTitle : "containerHeader" { String _text = "Inventory"; }

GroupDescription inventoryGroup
{
	int _leftPad = 4;
	int _bottomPad = 4;
	int _rightPad = 4;
	ElementDescription _elements [ "containerBorder", "inventoryRibbon"	]
}

RibbonDescription inventoryRibbon
{
	ElemenetDescription _border = "containerBorder";
	bool _vertical = true;
	ElementDescription _elements [ inventoryHeader, "inventory" ]
}

ContainerDescription inventory
{
	int _topPad = 2;
	int _leftPad = 8;
	int _bottomPad = 8;
	int _rightPad = 8;

	int _width = -1;
	int _height = 242;
	int _scrollSpacing = 4;

	bool _allowShrinkHeight = true;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "inventoryTable";
}

TableDescription inventoryHeader
{
	int _width = 9;
	int _height = 1;
	int _cellPad = 2;

	int _topPad = 8;
	int _leftPad = 8;
	int _rightPad = 4;

	TableItem _items
	[
		{ int _x = 0; int _y = -1; ElementDescription _element = "storageHeader"; }
		{ int _x = 1; int _y = -1; ElementDescription _element = "storageCountHeader"; }
		{ int _x = 2; int _y = -1; ElementDescription _element = "padNone"; }
		{ int _x = 3; int _y = -1; ElementDescription _element = "storageHeader"; }
		{ int _x = 4; int _y = -1; ElementDescription _element = "storageCountHeader"; }
		{ int _x = 5; int _y = -1; ElementDescription _element = "padNone"; }
		{ int _x = 6; int _y = -1; ElementDescription _element = "storageHeader"; }
		{ int _x = 7; int _y = -1; ElementDescription _element = "storageCountHeader"; }
		{ int _x = 8; int _y = -1; ElementDescription _element = "padNone"; }

	]
}

GroupDescription padNone 
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _text = "White";
	Color _color = 0x00000000;
	int _minWidth = 1;
	 }

ImageDescription pad0 
{ 
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _text = "White";
	Color _color = 0x00000000;
	int _minWidth = 2;
}

TableDescription inventoryTable
{
	int _width = 3;
	int _height = 1;
	int _cellPad = 2;

	TableItem _items
	[
		{ int _x = -1; int _y = -1; ElementDescription _element = "storageRibbon"; }
	]
}

RibbonDescription storageRibbon
{
	int _cellPad = 2;
	int _rightPad = 3;
	ElementDescription _elements
	[
		"storageItem"
		"storageCount"
		
	]
}

TextDescription storageHeader : "tableHeaderText" { String _text = "InventoryItem"; int _minWidth = 94; }
TextDescription storageCountHeader : "tableHeaderText" { String _text = "InventoryStored"; int _minWidth = 47; }

LabelDescription storageItem
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";

	int _leftPad = 2;

	Alignment _alignment = MidLeft;

	int _minWidth = 96;
	Font _font = "Font\FontSmall.rsc";
	int _imageWidth = 20;
	int _imageHeight = 20;
	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;
}

NumberDescription storageCount
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";

	int _rightPad = 2;

	Alignment _alignment = MidRight;
	NumberType _numberType = Integer;
	int _minWidth = 49;

	Font _font = "Font\FontSmall.rsc";
}


LayoutDescription graphs
{
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 4;
	int _bottomPad = 4;
	LayoutItem _elements
	[
		{
			String _name = "graph";
			ElementDescription _element = "graphData";
			LayoutHorizontal _xLayout = LeftToLeft; int _xOffset = 24;
			LayoutVertical _yLayout = TopToTop;
		}
		{
			ElementDescription _element = "number0";
			LayoutHorizontal _xLayout = RightToLeft; int _xOffset = -6; String _xAnchorTo = "graph";
			LayoutVertical _yLayout = TopToTop; int _yOffset = -6; String _yAnchorTo = "graph";
		}
		{
			ElementDescription _element = "number1";
			LayoutHorizontal _xLayout = RightToLeft; int _xOffset = -6; String _xAnchorTo = "graph";
			LayoutVertical _yLayout = TopToTop; int _yOffset = 44; String _yAnchorTo = "graph";
		}
		{
			ElementDescription _element = "number2";
			LayoutHorizontal _xLayout = RightToLeft; int _xOffset = -6; String _xAnchorTo = "graph";
			LayoutVertical _yLayout = TopToTop; int _yOffset = 94; String _yAnchorTo = "graph";
		}
		{
			ElementDescription _element = "number3";
			LayoutHorizontal _xLayout = RightToLeft; int _xOffset = -6; String _xAnchorTo = "graph";
			LayoutVertical _yLayout = TopToTop; int _yOffset = 144; String _yAnchorTo = "graph";
		}
		{
			ElementDescription _element = "number4";
			LayoutHorizontal _xLayout = RightToLeft; int _xOffset = -6; String _xAnchorTo = "graph";
			LayoutVertical _yLayout = TopToTop; int _yOffset = 194; String _yAnchorTo = "graph";
		}
		{
			ElementDescription _element = "textXMin";
			LayoutHorizontal _xLayout = LeftToLeft; int _xOffset = 0; String _xAnchorTo = "graph";
			LayoutVertical _yLayout = TopToBottom; int _yOffset = 4; String _yAnchorTo = "graph";
		}
		{
			ElementDescription _element = "textXMax";
			LayoutHorizontal _xLayout = RightToRight; int _xOffset = 0; String _xAnchorTo = "graph";
			LayoutVertical _yLayout = TopToBottom; int _yOffset = 4; String _yAnchorTo = "graph";
		}
		{
			ElementDescription _element = "ribbonKey";
			LayoutHorizontal _xLayout = LeftToLeft; int _xOffset = 0; String _xAnchorTo = "graph";
			LayoutVertical _yLayout = TopToBottom; int _yOffset = 20; String _yAnchorTo = "graph";
		}
		{
			String _name = "timeRange";
			ElementDescription _element = "textTimeRange";
			LayoutHorizontal _xLayout = LeftToLeft; int _xOffset = -32; String _xAnchorTo = "graph";
			LayoutVertical _yLayout = TopToBottom; int _yOffset = 46; String _yAnchorTo = "graph";
		}
		{
			String _name = "timeCombo";
			ElementDescription _element = "timeCombo";
			LayoutHorizontal _xLayout = LeftToRight; int _xOffset = 4; String _xAnchorTo = "timeRange";
			LayoutVertical _yLayout = TopToTop; int _yOffset = -2; String _yAnchorTo = "timeRange";
		}

		{
			ElementDescription _element = "textGraph";
			LayoutHorizontal _xLayout = RightToLeft; int _xOffset = -4; String _xAnchorTo = "graphCombo";
			LayoutVertical _yLayout = TopToTop; int _yOffset = 0; String _yAnchorTo = "timeRange";
		}
		{
			String _name = "graphCombo";
			ElementDescription _element = "graphCombo";
			LayoutHorizontal _xLayout = RightToRight; int _xOffset = 0; String _xAnchorTo = "graph";
			LayoutVertical _yLayout = TopToTop; int _yOffset = 0; String _yAnchorTo = "timeCombo";
		}
	]
}

TextDescription textXMin
{
	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:graphTypes";
	String _text = "Type0";
}

TextDescription textXMax
{
	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:graphYears";
	String _text = "Now";
}

TextDescription textTimeRange
{
	Font _font = "Font/FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "TimeRange";
}

TextDescription textGraph
{
	Font _font = "Font/FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "Graph";
}

ComboDescription timeCombo : "SharedElements.rsc:textCombo"
{
	int _minWidth = 120;
}

ComboDescription graphCombo : "SharedElements.rsc:textCombo"
{
	int _minWidth = 120;
}

NumberDescription number0
{
	Font _font = "Font/FontSmall.rsc";
	NumberType _numberType = Integer;
	int _minWidth = 24;
	Alignment _alignment = MidRight;
	int _ivalue = 1000;
}

NumberDescription number1 : "number0" { int _ivalue = 750; }
NumberDescription number2 : "number0" { int _ivalue = 500; }
NumberDescription number3 : "number0" { int _ivalue = 250; }
NumberDescription number4 : "number0" { int _ivalue = 0;}

GraphDescription graphData
{
	Alignment _alignment = TopLeft;

	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";

	int _width = 444;
	int _height = 228;
	int _tickSize = 4;
	Color _color = 0xFF808080;

	SpriteSheet _lineSpriteSheet = "SpriteSheetLine.rsc";
	String _lineSpriteName = "White";
}

RibbonDescription ribbonKey
{
	bool _vertical = false;
	int _cellPad = 4;

	ElementDescription _elements
	[
		"labelGroup0"
		"labelGroup1"
		"labelGroup2"
		"labelGroup3"
	]
}

GroupDescription labelGroup0
{
	int _minWidth = 108;
	ElementDescription _elements
	[
		"SharedElements.rsc:sunkenBorder"
		"label0"
	]
}

GroupDescription labelGroup1
{
	int _minWidth = 108;
	ElementDescription _elements
	[
		"SharedElements.rsc:sunkenBorder"
		"label1"
	]
}

GroupDescription labelGroup2
{
	int _minWidth = 108;
	ElementDescription _elements
	[
		"SharedElements.rsc:sunkenBorder"
		"label2"
	]
}

GroupDescription labelGroup3
{
	int _minWidth = 108;
	ElementDescription _elements
	[
		"SharedElements.rsc:sunkenBorder"
		"label3"
	]
}

LabelDescription label0
{
	int _leftPad = 4;
	int _rightPad = 2;
	int _topPad = 2;
	int _bottomPad = 2;

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "White";
	int _imageWidth = 12;
	int _imageHeight = 12;

	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:graphKeys";
	String _text = "Record0";

	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;
}

LabelDescription label1 : "label0" { String _text = "Record1"; }
LabelDescription label2 : "label0" { String _text = "Record2"; }
LabelDescription label3 : "label0" { String _text = "Record3"; }

RibbonDescription productionTab
{
	Alignment _alignment = TopLeft;
	bool _vertical = true;

	ElementDescription _elements [ "productionTitleGroup", "productionGroup" ]
}

GroupDescription productionTitleGroup
{
	ElementDescription _elements [ "productionTitle", "productionSelection" ]
}

RibbonDescription productionSelection
{
	int _rightPad = 4;
	Alignment _alignment = MidRight;
	bool _vertical = false;
	ElementDescription _elements [ "comboTitle", "productionCombo" ]
}

ComboDescription productionCombo : "comboSelection" { }

TextDescription productionTitle : "containerHeader"
{
	String _text = "Production";
}

GroupDescription productionGroup
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
	ElementDescription _elements [ "containerBorder", "productionRibbon" ]
}

RibbonDescription productionRibbon
{
	Alignment _alignment = TopLeft;
	bool _vertical = true;
	int _cellPad = 2;
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 8;
	int _bottomPad = 8;

	ElementDescription _elements [ "limitsHeader", "limits" ]
}

TableDescription limitsHeader
{
	int _width = 7;
	int _height = 1;
	int _cellPad = 2;

	int _topPad = 2;

	TableItem _items
	[
		{ int _x = 0; int _y = -1; ElementDescription _element = "limitItemHeader"; }
		{ int _x = 1; int _y = -1; ElementDescription _element = "limitLimitHeader"; }
		{ int _x = 2; int _y = -1; ElementDescription _element = "limitCurrentHeader"; }
		{ int _x = 3; int _y = -1; ElementDescription _element = "limitUsedHeader"; }
		{ int _x = 4; int _y = -1; ElementDescription _element = "limitProducedHeader"; }
		{ int _x = 5; int _y = -1; ElementDescription _element = "limitPrevUsedHeader"; }
		{ int _x = 6; int _y = -1; ElementDescription _element = "limitPrevProducedHeader"; }
	]
}

TextDescription limitItemHeader : "tableHeaderText" {	String _text = "InventoryItem"; int _minWidth = 80; }
TextDescription limitLimitHeader : "tableHeaderText" { String _text = "Limit"; int _minWidth = 44; }
TextDescription limitCurrentHeader : "tableHeaderText" {	String _text = "ProductionCurrent"; int _minWidth = 52; }
TextDescription limitUsedHeader : "tableHeaderText" {	String _text = "ProductionUsed"; int _minWidth = 52; }
TextDescription limitProducedHeader : "tableHeaderText" {	String _text = "ProductionProduced"; int _minWidth = 52; }
TextDescription limitPrevUsedHeader : "tableHeaderText" { String _text = "PreviousUsed";  int _minWidth = 78; }
TextDescription limitPrevProducedHeader : "tableHeaderText" { String _text = "PreviousProduced";  int _minWidth = 85; }

TableDescription limits
{

	int _width = 6;
	int _height = 11;
	int _cellPad = 2;

	TableItem _items
	[
		{ int _x = 0; int _y = 0; ElementDescription _element = "limit0"; }
		{ int _x = 0; int _y = 1; ElementDescription _element = "limit1"; }
		{ int _x = 0; int _y = 2; ElementDescription _element = "limit2"; }
		{ int _x = 0; int _y = 3; ElementDescription _element = "limit3"; }
		{ int _x = 0; int _y = 4; ElementDescription _element = "limit4"; }
		{ int _x = 0; int _y = 5; ElementDescription _element = "limit5"; }
		{ int _x = 0; int _y = 6; ElementDescription _element = "limit6"; }
		{ int _x = 0; int _y = 7; ElementDescription _element = "limit7"; }
		{ int _x = 0; int _y = 8; ElementDescription _element = "limit8"; }
		{ int _x = 0; int _y = 9; ElementDescription _element = "limit9"; }
		{ int _x = 0; int _y = 10; ElementDescription _element = "limit10"; }

		{ int _x = 1; int _y = -1; ElementDescription _element = "productionCountCurrent"; }
		{ int _x = 2; int _y = -1; ElementDescription _element = "productionCountUsed"; }
		{ int _x = 3; int _y = -1; ElementDescription _element = "productionCountProduced"; }
		{ int _x = 4; int _y = -1; ElementDescription _element = "productionCountLastUsed"; }
		{ int _x = 5; int _y = -1; ElementDescription _element = "productionCountLastProduced"; }
	]
}

NumberDescription productionCountCurrent : "tableNumber" { int _minWidth = 54; }
NumberDescription productionCountUsed : "tableNumber" { int _minWidth = 54; }
NumberDescription productionCountProduced : "tableNumber" { int _minWidth = 54; }
NumberDescription productionCountLastUsed : "tableNumber" { int _minWidth = 80; }
NumberDescription productionCountLastProduced : "tableNumber" { int _minWidth = 87; }

GroupDescription limit0 { }
GroupDescription limit1 { }
GroupDescription limit2 { }
GroupDescription limit3 { }
GroupDescription limit4 { }
GroupDescription limit5 { }
GroupDescription limit6 { }
GroupDescription limit7 { }
GroupDescription limit8 { }
GroupDescription limit9 { }
GroupDescription limit10 { }

ResourceLimitUIConfig resourceLimitConfigLog { ResourceLimit _resourceLimit = Log; }
ResourceLimitUIConfig resourceLimitConfigStone { ResourceLimit _resourceLimit = Stone; }
ResourceLimitUIConfig resourceLimitConfigIron { ResourceLimit _resourceLimit = Iron; }
ResourceLimitUIConfig resourceLimitConfigHerbs { ResourceLimit _resourceLimit = Herbs; }
ResourceLimitUIConfig resourceLimitConfigTools { ResourceLimit _resourceLimit = Tools; }
ResourceLimitUIConfig resourceLimitConfigFuel { ResourceLimit _resourceLimit = Fuel; }
ResourceLimitUIConfig resourceLimitConfigFood { ResourceLimit _resourceLimit = Food; }
ResourceLimitUIConfig resourceLimitConfigClothing { ResourceLimit _resourceLimit = Clothing; }
ResourceLimitUIConfig resourceLimitConfigAlcohol { ResourceLimit _resourceLimit = Alcohol; }
ResourceLimitUIConfig resourceLimitConfigCoal { ResourceLimit _resourceLimit = Coal; }
ResourceLimitUIConfig resourceLimitConfigTextile { ResourceLimit _resourceLimit = Textile; }

RibbonDescription resourceLimit
{
	Alignment _alignment = TopLeft;
	bool vertical = false;
	int _cellPad = 2;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
}

LabelDescription labelLimit
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	Alignment _alignment = MidLeft;

	Font _font = "Font\FontSmall.rsc";
	int _minWidth = 72; 
	int _imageWidth = 20;
	int _imageHeight = 20;
	int _spacing = 4;
	int _leftPad = 2;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;

	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
}

SpinnerDescription editLimit : "SharedElements.rsc:spinnerSmall6"
{
	int _increment = 100;
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
}

RibbonDescription resourceLimitLog : "resourceLimit" { String _toolTipText = "LogLimitTip";	ElementDescription _elements [ "labelLimitLog", "editLimit" ] }
RibbonDescription resourceLimitStone : "resourceLimit" { String _toolTipText = "StoneLimitTip";	ElementDescription _elements [ "labelLimitStone", "editLimit" ] }
RibbonDescription resourceLimitIron : "resourceLimit" { String _toolTipText = "IronLimitTip";	ElementDescription _elements [ "labelLimitIron", "editLimit" ] }
RibbonDescription resourceLimitFuel : "resourceLimit" { String _toolTipText = "FuelLimitTip";	ElementDescription _elements [ "labelLimitFuel", "editLimit" ] }
RibbonDescription resourceLimitTool : "resourceLimit" { String _toolTipText = "ToolLimitTip";	ElementDescription _elements [ "labelLimitTool", "editLimit" ] }
RibbonDescription resourceLimitHerb : "resourceLimit" { String _toolTipText = "HerbLimitTip";	ElementDescription _elements [ "labelLimitHerb", "editLimit" ] }
RibbonDescription resourceLimitFood : "resourceLimit" { String _toolTipText = "FoodLimitTip";	ElementDescription _elements [ "labelLimitFood", "editLimit" ] }
RibbonDescription resourceLimitClothing : "resourceLimit" { String _toolTipText = "ClothesLimitTip";	ElementDescription _elements [ "labelLimitClothing", "editLimit" ] }
RibbonDescription resourceLimitAlcohol : "resourceLimit" { String _toolTipText = "AlcoholLimitTip";	ElementDescription _elements [ "labelLimitAlcohol", "editLimit" ] }
RibbonDescription resourceLimitCoal : "resourceLimit" { String _toolTipText = "CoalLimitTip";	ElementDescription _elements [ "labelLimitCoal", "editLimit" ] }
RibbonDescription resourceLimitTextile : "resourceLimit" { String _toolTipText = "TextileLimitTip";	ElementDescription _elements [ "labelLimitTextile", "editLimit" ] }

LabelDescription labelLimitLog : "labelLimit" {	String _text = "LogLimitShort"; String _spriteName = "Log"; }
LabelDescription labelLimitStone : "labelLimit" { String _text = "StoneLimitShort"; String _spriteName = "Stone"; }
LabelDescription labelLimitIron : "labelLimit" { String _text = "IronLimitShort"; String _spriteName = "Iron"; }
LabelDescription labelLimitFuel : "labelLimit" { String _text = "FuelLimitShort"; String _spriteName = "Firewood"; }
LabelDescription labelLimitTool : "labelLimit" { String _text = "ToolLimitShort"; String _spriteName = "Tool"; }
LabelDescription labelLimitHerb : "labelLimit" { String _text = "HerbLimitShort"; String _spriteName = "Mushroom"; }
LabelDescription labelLimitFood : "labelLimit" { String _text = "FoodLimitShort"; String _spriteName = "Potato"; }
LabelDescription labelLimitClothing : "labelLimit" { String _text = "ClothesLimitShort"; String _spriteName = "WinterCoat"; }
LabelDescription labelLimitAlcohol : "labelLimit" { String _text = "AlcoholLimitShort"; String _spriteName = "Ale"; }
LabelDescription labelLimitCoal : "labelLimit" { String _text = "CoalLimitShort"; String _spriteName = "Coal"; }
LabelDescription labelLimitTextile : "labelLimit" { String _text = "TextileLimitShort"; String _spriteName = "Leather"; }


RibbonDescription agriTab
{
	bool _vertical = true;
	int _topPad = 4;
	int _leftPad = 4;
	int _bottomPad = 4;
	int _rightPad = 4;
	Alignment _alignment = TopLeft;
	ElementDescription _elements
	[
		"textAgri"
		"agriContainer"
	]
}

ContainerDescription agriContainer
{
	int _width = -1;
	int _height = 282;
	int _scrollSpacing = 4;

	bool _allowShrinkHeight = false;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "agriTable";
}

TextDescription textAgri
{
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	Alignment _alignment = MidLeft;
	Font _font = "Font\FontMedium.rsc";
	String _text = "AgriDescription";
	int _leftPad = 4;
	int _bottomPad = 4;
}


TableDescription agriTable
{
	Alignment _alignment = TopLeft;
	int _width = 7;
	int _height = 1;
	int _cellPad = 6;

	TableItem _items
	[
		{ int _x = -1; int _y = -1; ElementDescription _element = "agriImage"; }
	]
}

LabelDescription agriImage
{
	ElementDescription _border = "SharedElements.rsc:sunkenRaisedBorder";
	int _topPad = 4;
	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
	int _minWidth = 62;
	int _minHeight = 62;

	Alignment _alignment = MidCenter;

	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "CropFieldSelect";
	Color _color = 0xFF2E2B28;
	
	int _spacing = 2;
	LabelPosition _labelPosition = TextBottom;
	Alignment _textAlignment = MidCenter;
}

RibbonDescription overviewTab
{
	Alignment _alignment = TopLeft;
	bool _vertical = false;
	ElementDescription _elements [ "statOverview", "professionOverview"	]
}

RibbonDescription statOverview
{
	Alignment _alignment = TopLeft;
	bool _vertical = true;
	ElementDescription _elements [ "textStats",	"groupStatistics" ]
}

RibbonDescription professionOverview
{
	Alignment _alignment = TopLeft;
	bool _vertical = true;
	ElementDescription _elements [ "textProfessions", "groupProfessions" ]
}

TextDescription textStats : "containerHeader" {	String _text = "Stats"; }

TextDescription textProfessions : "containerHeader" { String _text = "Professions"; }

GroupDescription groupStatistics
{
	int _leftPad = 4;
	int _bottomPad = 4;
	ElementDescription _elements [ "containerBorder", "statisticsContainer"	]
}

GroupDescription groupProfessions
{
	int _leftPad = 4;
	int _bottomPad = 4;
	ElementDescription _elements [ "containerBorder", "professionRibbon" ]
}

RibbonDescription professionRibbon
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;
	int _cellPad = 2;
	bool _vertical = true;
	ElementDescription _elements [ "professionHeader", "professionsContainer" ]
}

ContainerDescription professionsContainer
{
	int _width = -1;
	int _height = 248;
	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
	int _scrollSpacing = 4;

	bool _allowShrinkHeight = false;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "tableProfessions";
}

TableDescription professionHeader
{
	int _width = 5;
	int _height = 1;
	int _cellPad = 2;

	int _topPad = 4;
	int _leftPad = 4;
	int _rightPad = 4;

	TableItem _items
	[
		{ int _x = 0; int _y = -1; ElementDescription _element = "professionJobHeader"; }
		{ int _x = 1; int _y = -1; ElementDescription _element = "professionWorkerHeader"; }
		{ int _x = 2; int _y = -1; ElementDescription _element = "professionAvailableHeader"; }
		{ int _x = 3; int _y = -1; ElementDescription _element = "professionCountHeader"; }
		{ int _x = 4; int _y = -1; ElementDescription _element = "professionGotoHeader"; }
	]
}

TextDescription professionJobHeader : "tableHeaderText" {	String _text = "Profession"; int _minWidth = 95; }
TextDescription professionWorkerHeader : "tableHeaderText" { String _text = "Workers"; int _minWidth = 48; }
TextDescription professionAvailableHeader : "tableHeaderText" {	String _text = "Jobs"; int _minWidth = 24; }
TextDescription professionCountHeader : "tableHeaderText" {	String _text = "Locations"; int _minWidth = 48; }
TextDescription professionGotoHeader : "tableHeaderText" {	String _text = "Goto"; int _minWidth = 25; }

TableDescription tableProfessions
{
	Alignment _alignment = TopLeft;
	int _width = 1;
	int _height = 1;
	int _cellPad = 2;

	TableItem _items
	[
		{ int _x = -1; int _y = -1; ElementDescription _element = "rowProfessions"; }
	]
}

RibbonDescription rowProfessions
{
	bool _vertical = false;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"labelProfession"
		"spinnerCount"
		"numberJobs"
		"numberLocations"
		"buttonGoto"
	]
}

NumberDescription numberJobs : "tableNumber" { int _minWidth = 26; }
SpinnerDescription spinnerCount : "SharedElements.rsc:spinnerSmall" { ElementDescription _edit = "spinnerEditSmall"; }
NumberEditDescription spinnerEditSmall : "SharedElements.rsc:spinnerEditSmall" { int _minWidth = 36; }
NumberDescription numberLocations : "tableNumber" {	int _minWidth = 50; }

ButtonDescription buttonGoto : "SharedElements.rsc:raisedButton"
{
	int _minWidth = 27;
	int _minHeight = 20;
	ElementDescription _content = "imageGoto";
}

ImageDescription imageGoto
{
	Alignment _alignment = MidCenter;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "ArrowRight";
	int _width = 16;
	int _height = 16;
}

LabelDescription labelProfession
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	Alignment _alignment = MidLeft;
	int _minWidth = 97;
	int _topPad = 1;
	int _bottomPad = 1;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:professions";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "Profession2";
	String _text = "Profession2";
	
	int _spacing = 2;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidCenter;
}

ContainerDescription statisticsContainer
{
	int _topPad = 8;
	int _leftPad = 8;
	int _bottomPad = 10;
	int _rightPad = 8;

	int _width = -1;
	int _height = 264;
	int _scrollSpacing = 4;

	bool _allowShrinkHeight = false;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "tableStats";
}

TableDescription tableStats
{
	Alignment _alignment = TopLeft;
	int _width = 2;
	int _height = 12;
	int _cellPad = 2;

	TableItem _items
	[
		{ int _x = 0; int _y = 0; ElementDescription _element = "labelYear"; }
		{ int _x = 0; int _y = 1; ElementDescription _element = "labelMonth"; }
		{ int _x = 0; int _y = 2; ElementDescription _element = "labelHomes"; }
		{ int _x = 0; int _y = 3; ElementDescription _element = "labelFamily"; }
		{ int _x = 0; int _y = 4; ElementDescription _element = "labelCitizens"; }
		{ int _x = 0; int _y = 5; ElementDescription _element = "labelAdults"; }
		{ int _x = 0; int _y = 6; ElementDescription _element = "labelStudents"; }
		{ int _x = 0; int _y = 7; ElementDescription _element = "labelChildren"; }
		{ int _x = 0; int _y = 8; ElementDescription _element = "labelClothed"; }
		{ int _x = 0; int _y = 9; ElementDescription _element = "labelEducated"; }
		{ int _x = 0; int _y = 10; ElementDescription _element = "labelHealth"; }
		{ int _x = 0; int _y = 11; ElementDescription _element = "labelHappiness"; }

		{ int _x = 1; int _y = 0; ElementDescription _element = "numberYear"; }
		{ int _x = 1; int _y = 1; ElementDescription _element = "textMonth"; }
		{ int _x = 1; int _y = 2; ElementDescription _element = "numberHomes"; }
		{ int _x = 1; int _y = 3; ElementDescription _element = "numberFamily"; }
		{ int _x = 1; int _y = 4; ElementDescription _element = "numberCitizens"; }
		{ int _x = 1; int _y = 5; ElementDescription _element = "numberAdults"; }
		{ int _x = 1; int _y = 6; ElementDescription _element = "numberStudents"; }
		{ int _x = 1; int _y = 7; ElementDescription _element = "numberChildren"; }
		{ int _x = 1; int _y = 8; ElementDescription _element = "percentClothed"; }
		{ int _x = 1; int _y = 9; ElementDescription _element = "percentEducated"; }
		{ int _x = 1; int _y = 10; ElementDescription _element = "groupHearts"; }
		{ int _x = 1; int _y = 11; ElementDescription _element = "groupStars"; }
	]
}

TextDescription labelYear : "tableText" { String _text = "Year"; int _minWidth = 70;}
TextDescription labelMonth : "tableText" { String _text = "Month"; }
TextDescription labelHomes : "tableText" { String _text = "Homes"; }
TextDescription labelCitizens : "tableText" { String _text = "Citizens";  }
TextDescription labelFamily : "tableText" { String _text = "Families";  }
TextDescription labelAdults : "tableText" { String _text = "Adults"; }
TextDescription labelStudents : "tableText" { String _text = "Students"; }
TextDescription labelChildren : "tableText" { String _text = "Children";  }
TextDescription labelClothed : "tableText" { String _text = "Clothed"; }
TextDescription labelEducated : "tableText" { String _text = "Educated"; }
TextDescription labelHealth : "tableText" { String _text = "Health"; }
TextDescription labelHappiness : "tableText" { String _text = "Happiness"; }

NumberDescription numberStat : "tableNumber" { int _minWidth = 42; Alignment _alignment = MidLeft; int _leftPad = 2; }

TextDescription textMonth : "tableText"
{
	int _minWidth = 42;
	StringTable _stringTable = "StringTable.rsc:seasons";
	String _text = "Month6";
	Alignment _alignment = MidLeft;
}

TextDescription percentClothed : "textMonth"
{
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Percent";
}

TextDescription percentEducated : "percentClothed" { }

NumberDescription numberYear : "numberStat" { }
NumberDescription numberHomes : "numberStat" { }
NumberDescription numberCitizens : "numberStat" { }
NumberDescription numberAdults : "numberStat" { }
NumberDescription numberStudents : "numberStat" { }
NumberDescription numberChildren : "numberStat" { }
NumberDescription numberFamily : "numberStat" { }

RibbonDescription groupHearts : "ImageStatusHeart.rsc:status" 
{ 
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	int _leftPad = 2;
	int _rightPad = 2;
}

RibbonDescription groupStars : "ImageStatusStar.rsc:status" 
{ 
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	int _leftPad = 2;
	int _rightPad = 2;
}
