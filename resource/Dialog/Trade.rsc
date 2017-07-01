LayoutDescription trade
{
	LayoutItem _elements
	[
		{
			String _name = "tradeTabs";
			ElementDescription _element = "tradeTabs";
			LayoutHorizontal _xLayout = LeftToLeft; 
			LayoutVertical _yLayout = TopToTop;
		}
		{
			ElementDescription _element = "groupWork";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "tradeTabs"; int _xOffset = -2;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "tradeTabs"; int _yOffset = 4;
		}
	]
}

TabDescription tradeTabs
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
			ElementDescription _button = "buttonInventory";
			ElementDescription _content = "inventoryTab";
		}
		{ 
			ElementDescription _button = "buttonTrades";
			ElementDescription _content = "tradeTab";
		}
		{ 
			ElementDescription _button = "buttonPurchase";
			ElementDescription _content = "purchaseTab";
		}
		{ 
			ElementDescription _button = "buttonOrder";
			ElementDescription _content = "orderTab";
		}
	]
}

ButtonDescription buttonInventory : "StandardDialog.rsc:buttonTab" { ElementDescription _content = "labelInventory"; }
ButtonDescription buttonPurchase : "StandardDialog.rsc:buttonTab" { ElementDescription _content = "labelPurchase"; }
ButtonDescription buttonTrades : "StandardDialog.rsc:buttonTab" { ElementDescription _content = "labelTrades"; }
ButtonDescription buttonOrder : "StandardDialog.rsc:buttonTab" { ElementDescription _content = "labelOrder"; }

LabelDescription labelInventory : "StandardDialog.rsc:labelTab" { String _spriteName = "StorageTab"; String _text = "Inventory"; }
LabelDescription labelPurchase : "StandardDialog.rsc:labelTab" { String _spriteName = "PurchaseTab"; String _text = "Purchase"; }
LabelDescription labelTrades : "StandardDialog.rsc:labelTab" { String _spriteName = "TradeTab"; String _text = "Trade"; }
LabelDescription labelOrder : "StandardDialog.rsc:labelTab" { String _spriteName = "OrderTab"; String _text = "Order"; }

LayoutDescription inventoryTab
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
	LayoutItem _elements
	[
		{
			String _name = "sellname";
			ElementDescription _element = "textInventory"; 
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "list";
			LayoutVertical _yLayout = BottomToTop; String _yAnchorTo = "list"; int _yOffset = -4;
		}
		{
			String _name = "storage";
			ElementDescription _element = "groupStorage";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "list";
			LayoutVertical _yLayout = BottomToTop; String _yAnchorTo = "list"; int _yOffset = -4;
		}
		{
			String _name = "list";
			ElementDescription _element = "ribbonStorage";
			LayoutHorizontal _xLayout = LeftToLeft; 
			LayoutVertical _yLayout = TopToTop;
		}
		{
			String _name = "sortcombo";
			ElementDescription _element = "TownHall.rsc:sortSelection";
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "storage"; int _xOffset = -8;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "sellname"; int _yOffset = -3;
		}
	]
}

RibbonDescription ribbonStorage
{
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 8;
	int _bottomPad = 8;
	bool _vertical = true;

	ElementDescription _border = "containerBorder";

	ElementDescription _elements
	[
		"tableStorageHeader"
		"containerStorage"
	]
}

ContainerDescription containerStorage
{
	int _width = -1;
	int _height = 218;
	int _scrollSpacing = 4;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "tableStorage";
}

TextDescription headerStoreCount : "headerText" { String _text = "TradeCount"; int _minWidth = 44; }
TextDescription headerStoreItem : "headerText" { String _text = "TradeItem"; int _minWidth = 135; }

NumberDescription numberItemStored : "numberItem"
{
	int _minWidth = 46;
	String _toolTipText = "TradeStoredTip";
}

LabelDescription labelStoreItem : "labelItem"
{
	int _minWidth = 137;
}

TableDescription tableStorageHeader
{
	int _width = 7;
	int _height = 1;
	int _cellPad = 2;
	int _leftPad = 0;
	int _bottomPad = 2;
	
	TableItem _items
	[
		{ int _x = 0; int _y = -1; ElementDescription _element = "headerStoreItem"; }
		{ int _x = 1; int _y = -1; ElementDescription _element = "headerSellDesired"; }
		{ int _x = 2; int _y = -1; ElementDescription _element = "headerStoreCount"; }

		{ int _x = 3; int _y = -1; ElementDescription _element = "inventoryPad"; }
		
		{ int _x = 4; int _y = -1; ElementDescription _element = "headerStoreItem"; }
		{ int _x = 5; int _y = -1; ElementDescription _element = "headerSellDesired"; }
		{ int _x = 6; int _y = -1; ElementDescription _element = "headerStoreCount"; }
	]
}


TableDescription tableStorage
{
	int _width = 2;
	int _height = 1;
	int _cellPad = 2;
	int _leftPad = 0;

	TableItem _items
	[
		{ int _x = -1; int _y = -1; ElementDescription _element = "ribbonStorageRow"; }

	]
}

RibbonDescription ribbonStorageRow
{
	bool _vertical = false;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"labelStoreItem"
		"spinnerItemDesired"
		"numberItemStored"
	]
}

GroupDescription inventoryPad
{
	int _minWidth = 0;
}

LayoutDescription tradeTab
{
	int _leftPad = 4;
	int _rightPad = 4;
	LayoutItem _elements
	[
		{
			String _name = "buyname"; 
			ElementDescription _element = "textName"; 
			LayoutHorizontal _xLayout = LeftToLeft; 
			LayoutVertical _yLayout = TopToTop; 
		}
		{
			String _name = "sellinv";
			ElementDescription _element = "ribbonSellGroup";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "buyinv"; int _xOffset = 6;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "buyinv";
		}
		{
			String _name = "buyinv";
			ElementDescription _element = "ribbonBuyGroup";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "buyname"; 
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "buyname"; 
		}
		{
			String _name = "button";
			ElementDescription _element = "buttonTrade";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "buyinv"; 
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "buyinv"; int _yOffset = 4;
		}
		{
			String _name = "button2";
			ElementDescription _element = "buttonDismiss";
			LayoutHorizontal _xLayout = LeftORiht; String _xAnchorTo = "button"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "button"; 
		}
		{
			ElementDescription _element = "groupStatus";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "sellinv"; int _xOffset = 0;
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "sellinv"; int _yOffset = 10;
		}
	]
}

GroupDescription groupStorage
{
	int _minWidth = 201;
}

GroupDescription groupWork
{
}

TextDescription textTotal
{
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	Font _font = "Font/FontSmall.rsc";
	String _text = "Total";
}

TextDescription textTitle
{
	int _topPad = 2;
	int _bottomPad = 2;
	int _leftPad = 6;

	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	Font _font = "Font/FontMedium.rsc";
}

TextDescription textInventory : "textTitle"
{
	String _text = "Inventory";
}

TextDescription textName : "textTitle"
{
	String _text = "MerchantName";
}

TextDescription textAutobuy : "textTitle"
{
	String _text = "Autobuy";
}

BorderDescription containerBorder : "SharedElements.rsc:raisedBorder"
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;
}

RibbonDescription ribbonSellGroup
{
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 8;
	int _bottomPad = 8;

	ElementDescription _border = "containerBorder";
	bool _vertical = true;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"headerSell"
		"ribbonSell"
		"ribbonSellTotal"
	]
}

RibbonDescription headerSell
{
	bool _vertical = false;
	int _cellPad = 2;

	ElementDescription _elements
	[
		// "headerSellDesired",
		"headerSellCount",
		"headerSellItem",
		"headerSellCost",
		"headerSellTrade"
	]
}

TextDescription headerText
{
	ElementDescription _border = "SharedElements.rsc:flatButtonHighlightBorder";
	Alignment _alignment = MidLeft;
	int _leftPad = 2;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
}

TextDescription headerSellDesired : "headerText" { String _text = "TradeDesired"; int _minWidth = 44; }

TextDescription headerSellCount : "headerText" { String _text = "TradeCount"; int _minWidth = 35; }
TextDescription headerSellItem : "headerText" { String _text = "TradeItem"; int _minWidth = 94; }
TextDescription headerSellCost : "headerText" { String _text = "TradeValue"; int _minWidth = 30; }
TextDescription headerSellTrade : "headerText" { String _text = "Trade"; int _minWidth = 44; }

RibbonDescription ribbonSell
{
	bool _vertical = true;
	int _cellPad = 4;
	ElementDescription _elements
	[
		"containerSell",
		// "ribbonSellTotal",
	]
}

RibbonDescription ribbonSellTotal
{
	int _rightPad = 16;
	int _bottomPad = 0;
	int _cellPad = 4;
	Alignment _alignment = MidRight;
	bool _vertical = false;
	ElementDescription _elements
	[
		"textTotal"
		"numberSellTotal"
	]
}

ContainerDescription containerSell
{
	int _width = -1;
	int _height = 174;
	int _scrollSpacing = 4;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "tableSell";
}

TableDescription tableSell
{
	int _width = 1;
	int _height = 1;
	int _cellPad = 2;

	TableItem _items
	[
		{ int _x = -1; int _y = -1; ElementDescription _element = "ribbonSellRow"; }
	]
}

RibbonDescription ribbonSellRow
{
	bool _vertical = false;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"numberItemStoredLarge"
		"labelItem"
		"numberItemSellValue"
		"spinnerItemCount"
	]
}

RibbonDescription ribbonBuyGroup
{
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 8;
	int _bottomPad = 8;

	ElementDescription _border = "containerBorder";

	bool _vertical = true;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"headerBuy"
		"ribbonBuy"
		"ribbonBuyTotal"
	]
}

RibbonDescription headerBuy
{
	bool _vertical = false;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"headerBuyCount",
		"headerBuyItem",
		"headerBuyCost",
		"headerBuyTrade"
	]
}

TextDescription headerBuyCount : "headerText" { String _text = "TradeCount"; int _minWidth = 35; }
TextDescription headerBuyItem : "headerText" { String _text = "TradeItem"; int _minWidth = 94; }
TextDescription headerBuyCost : "headerText" { String _text = "TradeCost"; int _minWidth = 30; }
TextDescription headerBuyTrade : "headerText" { String _text = "Trade"; int _minWidth = 46; }

RibbonDescription ribbonBuy
{
	bool _vertical = true;
	int _cellPad = 4;
	ElementDescription _elements
	[
		"containerBuy",
		//"ribbonBuyTotal",
	]
}

RibbonDescription ribbonBuyTotal
{
	int _rightPad = 16;
	int _bottomPad = 0;
	int _cellPad = 4;
	Alignment _alignment = MidRight;
	bool _vertical = false;
	ElementDescription _elements
	[
		"textTotal"
		"numberBuyTotal"
	]
}


ContainerDescription containerBuy
{
	int _width = -1;
	int _height = 174;
	int _scrollSpacing = 4;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "tableBuy";
}

TableDescription tableBuy
{
	int _width = 1;
	int _height = 1;
	int _cellPad = 2;
	int _minWidth = 212;

	TableItem _items
	[
		{ int _x = -1; int _y = -1; ElementDescription _element = "ribbonBuyRow"; }
	]
}

RibbonDescription ribbonBuyRow
{
	bool _vertical = false;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"numberItemStoredLarge"
		"labelItem"
		"numberItemBuyValue"
		"spinnerItemCount"
	]
}

LabelDescription labelItem
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";

	Alignment _alignment = MidLeft;

	int _leftPad = 2;
	int _minWidth = 96;

	Font _font = "Font\FontSmall.rsc";

	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidCenter;
}

NumberDescription numberItem
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";

	int _minWidth = 32;
	int _rightPad = 4;

	Alignment _alignment = MidRight;

	Font _font = "Font\FontSmall.rsc";
	NumberType _numberType = Integer;
	int _ivalue = 0;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
}

NumberDescription numberItemStoredLarge : "numberItemStored"
{
	int _minWidth = 37;
}

NumberDescription numberItemSellValue : "numberItem"
{
	int _minWidth = 32;
	int _leftPad = 2;
	Alignment _alignment = MidLeft;
	String _toolTipText = "TradeSellValueTip";
}

NumberDescription numberItemBuyValue : "numberItem"
{
	int _minWidth = 32;
	int _leftPad = 2;
	Alignment _alignment = MidLeft;
	String _toolTipText = "TradeBuyValueTip";
}

SpinnerDescription spinnerItem : "SharedElements.rsc:spinnerSmall"
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	int _increment = 20;
}

SpinnerDescription spinnerItemDesired : "spinnerItem"
{
	String _toolTipText = "DesiredTradeTip";
}

SpinnerDescription spinnerItemCount : "spinnerItem"
{
	String _toolTipText = "TradeCountTip";
}

NumberDescription numberSellTotal : "numberItem"
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	Alignment _alignment = MidLeft;
	int _minWidth = 46;
	int _leftPad = 2;
	int _rightPad = 2;
	int _topPad = 2;
	int _bottomPad = 2;
}

NumberDescription numberBuyTotal : "numberSellTotal"
{
}

ButtonDescription buttonTrade : "SharedElements.rsc:borderButton"
{ 
	ElementDescription _content = "textTradeButton"; 
	int _bottomPad = 4;
}

TextDescription textTradeButton 
{ 
	int _leftPad = 16;
	int _rightPad = 16;
	int _topPad = 4;
	int _bottomPad = 4;
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	Font _font = "Font/FontMedium.rsc";
	String _text = "Trade";
}

ButtonDescription buttonDismiss : "SharedElements.rsc:borderButton"
{ 
	ElementDescription _content = "textTradeDismiss"; 
	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "DismissTip";
}

TextDescription textTradeDismiss
{ 
	int _leftPad = 10;
	int _rightPad = 10;
	int _topPad = 4;
	int _bottomPad = 4;
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	Font _font = "Font/FontMedium.rsc";
	String _text = "Dismiss";
}

GroupDescription groupStatus
{
	ElementDescription _elements
	[
		"textNotEnough",
		"textTooMuch",
		"textNoStorage"
	]
}

TextDescription textStatus
{
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	Font _font = "Font/FontSmall.rsc";
}

TextDescription textTooMuch : "textStatus"
{
	String _text = "TradeTooMuch";
}

TextDescription textNotEnough : "textStatus"
{
	String _text = "TradeNotEnough";
}

TextDescription textNoStorage : "textStatus"
{
	String _text = "TradeNoStorage";
}

GroupDescription purchaseTab
{
	ElementDescription _elements 
	[
		"purchaseLayout"
	]
}

LayoutDescription purchaseLayout
{
	int _topPad = 4;
	int _leftPad = 4;
	int _rightPad = 4;
	LayoutItem _elements
	[
		{
			String _name = "autobuy"; 
			ElementDescription _element = "textAutobuy"; 
			LayoutHorizontal _xLayout = LeftToLeft; 
			LayoutVertical _yLayout = TopToTop; 
		}
		{
			ElementDescription _element = "comboPurchase"; 
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "autobuy"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "autobuy"; int _yOffset = -1;
		}
		{
			String _name = "purchase";
			ElementDescription _element = "ribbonPurchase";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "autobuy"; 
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "autobuy"; int _yOffset = 6;
		}
	]
}

ComboDescription comboPurchase : "SharedElements.rsc:textCombo"
{
	int _minWidth = 220;
	StringTable _initialData = "StringTable.rsc:purchaseTypes";
}

RibbonDescription ribbonPurchase
{
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 8;
	int _bottomPad = 8;

	ElementDescription _border = "containerBorder";
	bool _vertical = true;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"headerPurchase"
		"containerPurchase"
	]
}

ContainerDescription containerPurchase
{
	int _width = -1;
	int _height = 212;
	int _scrollSpacing = 4;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "tablePurchase";
}


RibbonDescription headerPurchase
{
	bool _vertical = false;
	int _cellPad = 2;

	ElementDescription _elements
	[
		"headerPurchasePad",
		"headerPurchaseItem",
		"headerPurchaseCount",
	]
}

GroupDescription headerPurchasePad
{
	int _minWidth = 12;
}

TextDescription headerPurchaseItem : "headerText" { String _text = "TradeItem"; int _minWidth = 410; }
TextDescription headerPurchaseCount : "headerText" { String _text = "TradeCount"; int _minWidth = 44; }

TableDescription tablePurchase
{
	int _width = 3;
	int _height = 14;
	int _cellPad = 2;

	TableItem _items
	[
		{ int _x = 0; int _y = -1; ElementDescription _element = "ribbonUpDown"; }
		{ int _x = 1; int _y = -1; ElementDescription _element = "labelItemType"; }
		{ int _x = 2; int _y = -1; ElementDescription _element = "spinnerPurchaseDesired"; }
	]
}

SpinnerDescription spinnerPurchaseDesired : "spinnerItemDesired"
{
	String _toolTipText = "PurchaseCountTip";
}

LabelDescription labelItemType
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	Alignment _alignment = MidLeft;
	int _leftPad = 2;
	int _minWidth = 412;

	Font _font = "Font\FontSmall.rsc";
	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidCenter;
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
}

RibbonDescription ribbonUpDown
{
	bool _vertical = true;
	ElementDescription _elements
	[
		"buttonMoveUp",
		"buttonMoveDown"
	]

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "PurchasePriorityTip";
}

ButtonDescription buttonMoveUp : "SharedElements.rsc:raisedButton"
{ 
	ElementDescription _content = "imageMoveUp"; 
}

ButtonDescription buttonMoveDown : "SharedElements.rsc:raisedButton"
{ 
	ElementDescription _content = "imageMoveDown"; 
}

ImageDescription imageMoveUp
{
	int _topPad = 1;
	int _bottomPad = 1;
	int _leftPad = 1;
	int _rightPad = 1;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "ArrowUpSmall";
}

ImageDescription imageMoveDown : "imageMoveUp"
{
	String _spriteName = "ArrowDownSmall";
}

GroupDescription orderTab
{
	ElementDescription _elements
	[
		"orderLayout"
	]
}

LayoutDescription orderLayout
{
	int _topPad = 4;
	int _leftPad = 4;
	int _rightPad = 4;
	LayoutItem _elements
	[
		{
			String _name = "order"; 
			ElementDescription _element = "textOrder"; 
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "combo"; int _xOffset = -4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "combo"; int _yOffset = 2;
		}
		{
			String _name = "combo"; 
			ElementDescription _element = "comboOrder"; 
			LayoutHorizontal _xLayout = LeftToLeft; 
			LayoutVertical _yLayout = TopToTop; 
		}
		{
			String _name = "table";
			ElementDescription _element = "ribbonOrder";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "combo"; 
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "combo"; int _yOffset = 2;
		}
	]
}

TextDescription textOrder : "textTitle"
{
	String _text = "MerchantOrderName";
}

ComboDescription comboOrder : "SharedElements.rsc:textCombo"
{
	int _minWidth = 180;
	StringTable _initialData = "StringTable.rsc:orderTypes";
}

RibbonDescription ribbonOrder
{
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 8;
	int _bottomPad = 8;

	ElementDescription _border = "containerBorder";
	bool _vertical = true;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"containerOrder"
	]
}

ContainerDescription containerOrder
{
	int _width = -1;
	int _height = 228;
	int _scrollSpacing = 4;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "tableOrder";
}

TableDescription tableOrder
{
	int _width = 4;
	int _height = 16;
	int _cellPad = 4;

	TableItem _items
	[
		{ int _x = -1; int _y = -1; ElementDescription _element = "checkOrderItem"; }
	]
}

CheckDescription checkOrderItem : "SharedElements.rsc:checkSimple"
{
	//Dialog _toolTipDialog = "ToolTip.rsc";
	//StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	//String _toolTipText = "EnableWorkTip";

	ElementDescription _content = "labelOrderItemUncheck";	
	ElementDescription _check = "labelOrderItem";	

	Color _enabledColor = 0xFF707070;
	Color _disabledColor = 0xFF707070;
	Color _highlightedColor = 0xFF707070;
	Color _pressedColor = 0xFF707070;
}

LabelDescription labelOrderItem
{
	int _topPad = 4;
	int _leftPad = 4;
	int _rightPad = 8;
	int _bottomPad = 4;
	int _minWidth = 115;
	int _minHeight = 42;

	Alignment _alignment = MidLeft;

	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";

	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	
	int _spacing = 2;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidCenter;

	String _spriteName = "Stone"; 
	String _text = "Stone"; 
}

LabelDescription labelOrderItemUncheck : "labelOrderItem" 
{ 
	Color _color = 0xFF707070;  
}
