Dialog resource
{
	Flags _flags = PauseGame | Modal | FirstDraw;
	ElementDescription _rootElement = "main";

	External _references
	[
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
			ElementDescription _element = "tableGroup";
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
			String _name = "cancel";
			ElementDescription _element = "SharedElements.rsc:buttonCancel";
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "ok"; int _xOffset = -4;
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "table"; int _yOffset = 4;
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

	String _text = "NewGame";
	String _spriteName = "NewGame";
}

RibbonDescription tableGroup
{
	ElementDescription _border = "SharedElements.rsc:sunkenRaisedBorder";

	bool _vertical = true;

	ElementDescription _elements 
	[
		"tableNew",
		"textDescription"
	]
}

TableDescription tableNew
{
	int _width = 2;
	int _height = 7;
	
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 8;
	int _bottomPad = 0;
	
	int _cellPad = 4;	

	TableItem _items
	[
		{ int _x = 0; int _y = 0; ElementDescription _element = "textName"; }
		{ int _x = 0; int _y = 1; ElementDescription _element = "textSeed"; }
		{ int _x = 0; int _y = 2; ElementDescription _element = "textTerrain"; }
		{ int _x = 0; int _y = 3; ElementDescription _element = "textTerrainSize"; }
		{ int _x = 0; int _y = 4; ElementDescription _element = "textClimate"; }
		{ int _x = 0; int _y = 5; ElementDescription _element = "textDisaster"; }
		{ int _x = 0; int _y = 6; ElementDescription _element = "textCondition"; }

		{ int _x = 1; int _y = 0; ElementDescription _element = "ribbonName"; }
		{ int _x = 1; int _y = 1; ElementDescription _element = "ribbonSeed"; }
		{ int _x = 1; int _y = 2; ElementDescription _element = "comboTerrain"; }
		{ int _x = 1; int _y = 3; ElementDescription _element = "comboTerrainSize"; }
		{ int _x = 1; int _y = 4; ElementDescription _element = "comboClimate"; }
		{ int _x = 1; int _y = 5; ElementDescription _element = "comboDisaster"; }
		{ int _x = 1; int _y = 6; ElementDescription _element = "comboCondition"; }
	]
}

TextDescription textDescription
{
	int _leftPad = 12;
	int _rightPad = 12;
	int _topPad = 12;
	int _bottomPad = 12;

	int _minHeight = 44;
	
	ElementDescription _border = "SharedElements.rsc:sunkenBorderPad8";

	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	Color _color = 0xFFC0C0C0;
	
	bool _wordWrap = true;
	int _wordWrapSize = 415;
}

TextDescription textNewGame
{
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	Color _color = 0xFFC0C0C0;
	int _minWidth = 150;
}

TextDescription textName : "textNewGame" { String _text = "TownName"; }
TextDescription textSeed : "textNewGame" { String _text = "TownSeed"; }
TextDescription textTerrain : "textNewGame" { String _text = "Terrain"; }
TextDescription textTerrainSize : "textNewGame" { String _text = "TerrainSize"; }
TextDescription textClimate : "textNewGame" { String _text = "Climate"; }
TextDescription textDisaster : "textNewGame" { String _text = "Disaster"; }
TextDescription textCondition : "textNewGame" { String _text = "StartCondition"; }

ComboDescription comboCondition : "SharedElements.rsc:textCombo"
{
	Alignment _alignment = MidLeft;
	int _minWidth = 160;
}

ComboDescription comboTerrain : "SharedElements.rsc:textCombo"
{
	Alignment _alignment = MidLeft;
	int _minWidth = 160;
}

ComboDescription comboTerrainSize : "SharedElements.rsc:textCombo"
{
	Alignment _alignment = MidLeft;
	int _minWidth = 160;

	StringTable _initialData = "StringTable.rsc:terrainSize";
}

ComboDescription comboClimate : "SharedElements.rsc:textCombo"
{
	Alignment _alignment = MidLeft;
	int _minWidth = 160;
}

ComboDescription comboDisaster : "SharedElements.rsc:textCombo"
{
	StringTable _initialData = "StringTable.rsc:disaster";
	Alignment _alignment = MidLeft;
	int _minWidth = 160;
}

RibbonDescription ribbonName
{
	bool _vertical = false;
	int _cellPad = 4;
	ElementDescription _elements
	[
		"editName",
		"buttonNewName"
	]
}

RibbonDescription ribbonSeed
{
	bool _vertical = false;
	int _cellPad = 4;
	ElementDescription _elements
	[
		"editSeed",
		"buttonNewSeed"
	]
}

EditDescription editName
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	int _leftPad = 2;
	int _topPad = 2;
	int _rightPad = 2;
	int _bottomPad = 2;
	Font _font = "Font\FontMedium.rsc";
	int _maxLength = 18;
	int _minWidth = 240;
	String _allowableCharacters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
}

NumberEditDescription editSeed
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	int _leftPad = 2;
	int _topPad = 2;
	int _rightPad = 2;
	int _bottomPad = 2;
	Font _font = "Font\FontMedium.rsc";
	int _maxLength = 9;
	int _minValue = 0;
	int _maxValue = 999999999;
	int _minWidth = 240;
	bool _allowNegative = false;
}

ButtonDescription buttonNewName : "SharedElements.rsc:borderButton"
{
	ElementDescription _content = "imageNewName";
	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:mainMenu";
	String _toolTipText = "NewNameTip";
}

ButtonDescription buttonNewSeed : "buttonNewName"
{
	String _toolTipText = "NewSeedTip";
}

ImageDescription imageNewName
{
	int _topPad = 4;
	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "NewGame";
}