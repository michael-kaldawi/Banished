Dialog resource
{
	Flags _flags = PauseGame | Modal | FirstDraw;
	ElementDescription _rootElement = "main";

	ElementDescription _templates
	[
		"modLine"
		"searchResultGroup"
	]

	External _references
	[
		"ModDetails.rsc",
		"ModUpdate.rsc",
		"browser"
	]
}

GroupDescription main
{
	Alignment _alignment = MidCenter;
	ElementDescription _elements
	[
		"SharedElements.rsc:dialogBorder",
		"content"
	]
}

LayoutDescription content
{
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 8;
	int _bottomPad = 8;

	LayoutItem _elements
	[
		{
			String _name = "title";
			ElementDescription _element = "labelTitle";
			LayoutHorizontal _xLayout = LeftToLeft; 
			LayoutVertical _yLayout = TopToTop; int _yOffset = 4;
		}
		{
			String _name = "table";
			ElementDescription _element = "tabMod";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "title";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "title";
		}
		{
			String _name = "ok";
			ElementDescription _element = "SharedElements.rsc:buttonOk";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "table";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "table"; int _yOffset = 4;
		}
		{
			String _name = "close";
			ElementDescription _element = "SharedElements.rsc:buttonCancel";
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "ok"; int _xOffset = -4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "ok"; 
		}
		{
			String _name = "progress";
			ElementDescription _element = "groupProgress";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "table"; int _xOffset = -1;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "title"; int _yOffset = 0;
		}
	]
}

LabelDescription labelTitle 
{
	Alignment _alignment = MidCenter;

	int _bottomPad = 5;
	int _leftPad = 5;
	int _rightPad = 5;
	int _topPad = 5;

	Font _font = "Font\Font.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";

	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;

	String _text = "Mod";
	String _spriteName = "Mod";
}

TabDescription tabMod
{
	ElementDescription _outerBorderTop = "SharedElements.rsc:tabBorderTop";
	ElementDescription _outerBorderBottom = "SharedElements.rsc:tabBorderBottom";
	ElementDescription _innerBorder = "SharedElements.rsc:raisedBorder";

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _connectStart = "TabStart";
	String _connectMid = "TabMid";
	String _connectEnd = "TabEnd";

	int _elementPad = 4;

	Tab _tabs
	[
		{ 
			ElementDescription _button = "buttonMod";	
			ElementDescription _content = "modGroup";
		}
		{ 
			ElementDescription _button = "buttonBrowse";	
			ElementDescription _content = "groupBrowse";
		}
	]
}

GroupDescription groupBrowse
{
}

ButtonDescription buttonMod : "SharedElements.rsc:raisedButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "labelMod";
}

ButtonDescription buttonBrowse : "SharedElements.rsc:raisedButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "labelBrowse";
}

ButtonDescription buttonAdd : "SharedElements.rsc:raisedButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "labelAdd";
}

ButtonDescription buttonUpdate : "SharedElements.rsc:raisedButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "labelUpdate";
}

TextDescription labelMod
{
	Alignment _alignment = MidCenter;

	int _bottomPad = 5;
	int _leftPad = 5;
	int _rightPad = 5;
	int _topPad = 5;

	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _text = "ModInstalled";
}

TextDescription labelBrowse : "labelMod"
{
	String _text = "ModBrowse";
}

TextDescription labelAdd : "labelMod"
{
	String _text = "ModAdd";
}

TextDescription labelUpdate : "labelMod"
{
	String _text = "ModUpdate";
}

RibbonDescription modGroup
{
	//ElementDescription _border = "SharedElements.rsc:sunkenRaisedBorder";

	int _leftPad = 4;
	int _topPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;

	bool _vertical = true;

	int _cellPad = 4;	

	ElementDescription _elements
	[
		"headerLine"
		"tableList"
	]
}

ContainerDescription tableList
{
	int _width = 596;
	int _height = 350;
	int _scrollSpacing = 4;

	int _leftPad = 0;
	int _topPad = 0;
	int _rightPad = 0;
	int _bottomPad = 0;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "tableMods";
}

RibbonDescription tableMods
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";

	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
	int _topPad = 4;
	int _cellPad = 4;

	int _minHeight = 350;
	int _minWidth = 580;
	Alignment _alignment = TopLeft;

	bool _vertical = true;
	ElementDescription _elements
	[
	]
}

BorderDescription borderLine : "SharedElements.rsc:flatButtonEnabledBorder"
{
	Color _color = 0x00FFFFFF;
}

LayoutDescription modLine
{
	ElementDescription _border = "borderLine";
	int _leftPad = 1;
	int _topPad = 1;
	int _bottomPad = 1;

	LayoutItem _elements
	[
		{
			String _name = "icon";
			ElementDescription _element = "imageIcon";
			LayoutHorizontal _xLayout = LeftToLeft; 
			LayoutVertical _yLayout = TopToTop; 
		}
		{
			ElementDescription _element = "imageConflict";
			LayoutHorizontal _xLayout = RightToRight;  String _xAnchorTo = "icon";
			LayoutVertical _yLayout = BottomToBottom; String _yAnchorTo = "icon";
		}
		{
			String _name = "title";
			ElementDescription _element = "textModName";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "icon"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "icon"; 
		}
		{
			String _name = "author";
			ElementDescription _element = "textModAuthor";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "version";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "version";
		}
		{
			String _name = "version";
			ElementDescription _element = "textModVersion";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "title"; 
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "title"; 
		}
		{
			String _name = "desc";
			ElementDescription _element = "textModDescription";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "title"; int _xOffset = 200;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "title"; 
		}
		{
			String _name = "loaded";
			ElementDescription _element = "textLoaded";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "buttonLoaded"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "buttonLoaded"; 
		}
		{
			String _name = "buttonLoaded";
			ElementDescription _element = "checkLoaded";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "desc"; int _xOffset = 230;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "desc"; 
		}
		{
			String _name = "details";
			ElementDescription _element = "buttonDetails";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "buttonLoaded"; 
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "buttonLoaded"; int _yOffset = 4;
		}
		{
			String _name = "top";
			ElementDescription _element = "buttonTop";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "details"; int _xOffset = 2;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "details"; 
		}
		{
			String _name = "up";
			ElementDescription _element = "buttonUp";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "top"; 
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "top"; 
		}
		{
			String _name = "down";
			ElementDescription _element = "buttonDown";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "up"; 
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "up"; 
		}
	]
}

ImageDescription imageIcon
{
	ElementDescription _border = "SharedElements.rsc:raisedBorder";

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "White";
	Color _color = 0xFFFFFFFF;	
	int _width = 48;
	int _height = 48;
}

ImageDescription imageConflict
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "EventIcon13";
	int _width = 24;
	int _height = 24;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:mainMenu";
	String _toolTipText = "ModConflict";

}

/*
RibbonDescription modLine
{
	bool _vertical = false;
	ElementDescription _border = "borderLine";

	ElementDescription _elements
	[
		"textModName"
		"textModAuthor"
		"textModVersion",
		"groupLoaded",
		"buttonTop",
		"buttonUp",
		"buttonDown",
	]
}
*/
RibbonDescription headerLine
{
	bool _vertical = false;
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";

	int _leftPad = 4;
	int _topPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;

	ElementDescription _elements
	[
		"textName",
		"textDesc",
		"textOrder",
	]
}

TextDescription textHeader
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	Font _font = "Font\FontMedium.rsc";
	Alignment _alignment = MidCenter;
}

TextDescription textName : "textHeader" { String _text = "ModName"; int _minWidth = 200; int _leftPad = 52; }
TextDescription textDesc : "textHeader" { String _text = "ModDescription"; int _minWidth = 250;}
TextDescription textVersion : "textHeader" { String _text = "ModVersion"; int _minWidth = 74; }
TextDescription textLoaded : "textHeader" { String _text = "ModLoaded"; int _minWidth = 48; }
TextDescription textOrder : "textHeader" { String _text = "ModOrder"; int _minWidth = 64; }

RibbonDescription groupNameAuthor
{
	bool _vertical = true;
	ElementDescription _elements
	[
		"textModName"
		"textModAuthor"
	]
}

TextDescription textModName 
{ 
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	Font _font = "Font\FontMedium.rsc";
}

TextDescription textModAuthor
{
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	Font _font = "Font\FontSmall.rsc";
}

TextDescription textModVersion
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModVersion";
	Font _font = "Font\FontSmall.rsc";
	Alignment _alignment = MidCenter;
}

TextDescription textModDescription
{
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	Font _font = "Font\FontSmall.rsc";
	Alignment _alignment = MidCenter;
	bool _wordWrap = true;
	int _wordWrapSize = 192;
}

GroupDescription groupLoaded 
{
	int _minWidth = 48;
	ElementDescription _elements
	[
		"checkLoaded"
	]
}

CheckDescription checkLoaded : "SharedElements.rsc:raisedButton"
{
	ElementDescription _check = "checkLoadedChecked";
	ElementDescription _content = "checkLoadedUnchecked";

	Alignment _alignment = MidCenter;

	Color _enabledColor = 0xFF2E2B28;
	Color _disabledColor = 0xFF2E2B28;
	Color _highlightedColor = 0xFF2E2B28;
	Color _pressedColor = 0xFF2E2B28;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:mainMenu";
	String _toolTipText = "ModLoadedTip";
}

ImageDescription checkLoadedChecked
{
	int _topPad = 1;
	int _leftPad = 1;
	int _rightPad = 1;
	int _bottomPad = 1;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "SimpleCheck";	
}

ImageDescription checkLoadedUnchecked : "checkLoadedChecked"
{
	Color _color = 0xFF2E2B28;
}

ImageDescription imageLocked
{
	int _minWidth = 64;	
	Alignment _alignment = MidCenter;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "Lock";
}

ButtonDescription buttonTop : "SharedElements.rsc:raisedButton"
{
	ElementDescription _content = "textTop";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:mainMenu";
	String _toolTipText = "ModTopTip";
}

ButtonDescription buttonUp : "SharedElements.rsc:raisedButton"
{
	ElementDescription _content = "imageUp";
	int _leftPad = 2;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:mainMenu";
	String _toolTipText = "ModUpTip";
}

ButtonDescription buttonDown : "SharedElements.rsc:raisedButton"
{
	ElementDescription _content = "imageDown";
	int _leftPad = 2;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:mainMenu";
	String _toolTipText = "ModDownTip";
}

ButtonDescription buttonDetails : "SharedElements.rsc:raisedButton"
{
	ElementDescription _content = "textDetails";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:mainMenu";
	String _toolTipText = "ModDetailsTip";
}

TextDescription textTop
{ 
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModTop";
	Font _font = "Font\FontSmall.rsc";

	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 1;
	int _bottomPad = 2;
}

TextDescription textDetails
{ 
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModDetails";
	Font _font = "Font\FontSmall.rsc";

	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 1;
	int _bottomPad = 2;
}

TextDescription textUpload
{ 
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModUpload";
	Font _font = "Font\FontSmall.rsc";

	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 1;
	int _bottomPad = 2;
}


ImageDescription imageUp
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "ArrowUp";
	int _bottomPad = 1;
}

ImageDescription imageDown
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "ArrowDown";
	int _bottomPad = 1;
}

// --------------------------------------------------------------------------------
LayoutDescription browser
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;

	LayoutItem _elements
	[
		{
			String _name = "results";
			ElementDescription _element = "containerResult";
			LayoutHorizontal _xLayout = LeftToLeft; 
			LayoutVertical _yLayout = TopToTop; 
		}
		{
			String _name = "searchbutton";
			ElementDescription _element = "buttonSearch";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "results";
			LayoutVertical _yLayout = BottomToTop; String _yAnchorTo = "results"; int _yOffset = -4;
		}
		{
			String _name = "searchtext";
			ElementDescription _element = "textSearch";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "searchbutton"; int _xOffset = 4;
			LayoutVertical _yLayout = BottomToBottom; String _yAnchorTo = "searchbutton"; 
		}
		{
			String _name = "searchsort";
			ElementDescription _element = "comboSort";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "searchtext"; int _xOffset = 4;
			LayoutVertical _yLayout = BottomToBottom; String _yAnchorTo = "searchtext"; 
		}
		{
			String _name = "working";
			ElementDescription _element = "imageWorking";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "searchsort"; int _xOffset = 4;
			LayoutVertical _yLayout = BottomToBottom; String _yAnchorTo = "searchsort"; 
		}
		{
			String _name = "nextpage";
			ElementDescription _element = "buttonNextPage";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "results";
			LayoutVertical _yLayout = BottomToTop; String _yAnchorTo = "results";  int _yOffset = -4;
		}
		{
			String _name = "page";
			ElementDescription _element = "comboPage";
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "nextpage"; int _xOffset = -4;
			LayoutVertical _yLayout = BottomToBottom; String _yAnchorTo = "nextpage"; 
		}
		{
			String _name = "prevPage";
			ElementDescription _element = "buttonPrevPage";
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "page"; int _xOffset = -4;
			LayoutVertical _yLayout = BottomToBottom; String _yAnchorTo = "page"; 
		}
		{
			String _name = "pagetext";
			ElementDescription _element = "textPage";
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "prevPage"; int _xOffset = -4;
			LayoutVertical _yLayout = CenterToCenter; String _yAnchorTo = "prevPage"; 
		}
	]	
}

ContainerDescription containerResult
{
	int _width = 596;
	int _height = 348;
	int _scrollSpacing = 4;

	int _leftPad = 0;
	int _topPad = 0;
	int _rightPad = 0;
	int _bottomPad = 0;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "groupResult";
}


ImageDescription imageWorking
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "SmallLoadingCircle";	
	int _width = 24;
	int _height = 24;
}

GroupDescription groupResult
{
	ElementDescription _elements
	[
		"tableResult"
		"textResultError"
		"textResultNone"
	]
}

TextDescription textResultError
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModSearchError";
	Font _font = "Font\FontMedium.rsc";
	Alignment _alignment = MidCenter;
}

TextDescription textResultNone
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModSearchNone";
	Font _font = "Font\FontMedium.rsc";
	Alignment _alignment = MidCenter;
}


TableDescription tableResult
{
	Alignment _alignment = TopLeft;
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";

	int _width = 3;
	int _height = 1;

	int _minWidth = 580;
	int _minHeight = 348;

	int _cellPad = 4;

	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;

	TableItem _items
	[
	]
}

ButtonDescription buttonSearch : "SharedElements.rsc:borderButton"
{
	ElementDescription _content = "imageSearch";
}

ImageDescription imageSearch
{
	int _leftPad = 5;
	int _rightPad = 5;
	int _topPad = 5;
	int _bottomPad = 5;

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "Search";
}

EditDescription textSearch
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	int _leftPad = 3;
	int _topPad = 4;
	int _rightPad = 4;
	int _bottomPad = 3;
	Font _font = "Font\FontMedium.rsc";
	int _maxLength = 20;
	int _minWidth = 240;
	// String _allowableCharacters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz 1234567890";	
}

ComboDescription comboSort : "SharedElements.rsc:textCombo"
{
	int _minWidth = 140;
	StringTable _initialData = "StringTable.rsc:modBrowserSort";
}

ButtonDescription buttonNextPage : "SharedElements.rsc:borderButton"
{
	ElementDescription _content = "imageNextPage";
}

ImageDescription imageNextPage
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 5;
	int _bottomPad = 5;

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "ArrowRight";	
}

ButtonDescription buttonPrevPage : "SharedElements.rsc:borderButton"
{
	ElementDescription _content = "imagePrevPage";
}

ImageDescription imagePrevPage : "imageNextPage"
{
	String _spriteName = "ArrowLeft";	
}

TextDescription textOfN
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModOfN";
	Font _font = "Font\FontMedium.rsc";
	Alignment _alignment = TopCenter;
}

TextDescription textPage : "textOfN"
{
	String _text = "ModPage";
}

ComboDescription comboPage : "SharedElements.rsc:textCombo"
{
}

BorderDescription searchGroupBorder : "SharedElements.rsc:flatButtonEnabledBorder"
{
	Color _color = 0x60000000;
}

LayoutDescription searchResultGroup
{
	Alignment _alignment = TopLeft;
	ElementDescription _border = "SharedElements.rsc:raisedBorder";

	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;

	LayoutItem _elements
	[
		{
			String _name = "image";
			ElementDescription _element = "groupModPreview";
			LayoutHorizontal _xLayout = LeftToLeft; 
			LayoutVertical _yLayout = TopToTop; 
		}
		{
			String _name = "title";
			ElementDescription _element = "textModTitle";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "image";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "image"; int _yOffset = 5;
		}
		{
			String _name = "buttonPlus";
			ElementDescription _element = "buttonSubscribe";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "image";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "image"; int _yOffset = 2;
		}
		{
			String _name = "buttonMinus";
			ElementDescription _element = "buttonUnsubscribe";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "image";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "image"; int _yOffset = 2;
		}
	]
}

GroupDescription groupModPreview
{
	Dialog _toolTipDialog = "ToolTipTitleDesc.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:mainMenu";
	String _toolTipText = "ModDefaultTip";

	ElementDescription _elements 
	[
		"imageModBackground",
		"imageModPreview"
	]
}

ImageDescription imageModBackground
{
	Alignment _alignment = MidCenter;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "White";
	Color _color = 0xFF2E2B28;
	int _width = 180;
	int _height = 180;
}

ImageDescription imageModPreview
{
	Alignment _alignment = MidCenter;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "LoadingCircle";
	int _width = 176;
	int _height = 176;
}

TextDescription textModTitle
{
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	Font _font = "Font\FontMedium.rsc";
	int _maxLength = 154;
}

ButtonDescription buttonSubscribe : "SharedElements.rsc:borderButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "imagePlus";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:mainMenu";
	String _toolTipText = "ModSubscribeTip";
}

ButtonDescription buttonUnsubscribe : "SharedElements.rsc:borderButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "imageMinus";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:mainMenu";
	String _toolTipText = "ModUnsubscribeTip";
}

ImageDescription imagePlus
{
	int _leftPad = 5;
	int _rightPad = 5;
	int _topPad = 5;
	int _bottomPad = 5;

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "Plus";	
}

ImageDescription imageMinus : "imagePlus"
{
	String _spriteName = "Minus";	
}

RibbonDescription groupProgress
{
	bool _vertical = false;
	int _cellPad = 4;

	ElementDescription _elements 
	[
		"ribbonProgress",
		"ribbonUpdateAvailable",
	]
}

RibbonDescription ribbonProgress
{
	int _topPad = 22;
	bool _vertical = true;
	int _cellPad = 4;

	ElementDescription _elements 
	[
		"textUpdate",
		"progressUpdate",
	]
}

RibbonDescription ribbonUpdateAvailable
{
	bool _vertical = false;
	int _cellPad = 4;

	ElementDescription _elements 
	[
		"textUpdateAvailable"
		"buttonUpdateReload",
	]
}

ButtonDescription buttonUpdateReload : "SharedElements.rsc:borderButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "groupImageUpdate";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:mainMenu";
	String _toolTipText = "ModUpdateReload";

}

GroupDescription groupImageUpdate
{
	ElementDescription _elements 
	[
		"imageUpdateCircle"
		"imageUpdateMod"
	]
}

ImageDescription imageUpdateCircle
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
	int _topPad = 4;

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "MediumLoadingCircle";
	int _width = 50;
	int _height = 50;
}

ImageDescription imageUpdateMod
{
	Alignment _alignment = MidCenter;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "Mod";
}

ProgressDescription progressUpdate : "SharedElements.rsc:progressBar"
{
	Alignment _alignment = TopRight;
	int _minWidth = 300;
	ElementDescription _text = "textProgress";
}

TextDescription textProgress
{
	Alignment _alignment = MidLeft;

	int _topPad = 0;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "PercentComplete";
	Color _color = 0xFF000000;
}

TextDescription textUpdate
{
	Alignment _alignment = MidLeft;

	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModUpdating";
	int _maxLength = 300;
}

TextDescription textUpdateAvailable
{
	Alignment _alignment = MidLeft;

	Font _font = "Font\Font.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModUpdateAvailable";
}