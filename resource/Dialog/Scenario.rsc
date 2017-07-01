Dialog resource
{
	Flags _flags = PauseGame | Modal | FirstDraw;
	ElementDescription _rootElement = "main";

	ElementDescription _templates
	[
		"groupAchievement"
	]

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
			String _name = "close";
			ElementDescription _element = "SharedElements.rsc:buttonCancel";
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "ok"; int _xOffset = -4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "ok"; 
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

	String _text = "Scenario";
	String _spriteName = "Scenario";
}

ContainerDescription tableGroup
{
	ElementDescription _border = "SharedElements.rsc:sunkenRaisedBorder";

	int _leftPad = 8;
	int _topPad = 8;
	int _rightPad = 8;
	int _bottomPad = 8;

	int _width = 556;
	int _height = 360;
	int _scrollSpacing = 4;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "tableScenario";
}

TableDescription tableScenario
{
	int _width = 1;
	int _height = 50;
	
	int _cellPad = 4;	

	TableItem _items
	[
	]
}

LayoutDescription groupAchievement
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";


	LayoutItem _elements
	[
		{
			String _name = "image";
			ElementDescription _element = "imageGroup";
			LayoutHorizontal _xLayout = LeftToLeft; 
			LayoutVertical _yLayout = TopToTop; 
		}
		{
			String _name = "title";
			ElementDescription _element = "textTitle";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "image"; int _xOffset = 0;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "image"; int _yOffset = 4;
		}
		{
			String _name = "desc";
			ElementDescription _element = "textDescription";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "title";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "title"; int _yOffset = 0;
		}
	]
}

TextDescription textDescription
{
	Font _font = "Font\FontSmall.rsc";
	bool _wordWrap = true;
	int _wordWrapSize = 354;
	int _minWidth = 354;
}

TextDescription textTitle
{
	Font _font = "Font\Font.rsc";
}

GroupDescription imageGroup
{
	int _topPad = 6;
	int _leftPad = 6;
	int _rightPad = 6;
	int _bottomPad = 6;

	ElementDescription _elements
	[
		"imageIcon",
		"SaveLoad.rsc:borderSave",
		"SaveLoad.rsc:selectSave",
	]
}

ImageDescription imageIcon
{
}