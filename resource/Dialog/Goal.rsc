Dialog resource
{
	Flags _flags = PauseGame | Modal | FirstDraw;
	ElementDescription _rootElement = "main";

	ElementDescription _templates
	[
		"groupGoal"
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
			String _name = "scenario";
			ElementDescription _element = "textScenario";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "table";
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "title"; 
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
	]
}

TextDescription textScenario
{
	Alignment _alignment = MidCenter;

	int _bottomPad = 5;
	int _leftPad = 5;
	int _rightPad = 5;
	int _topPad = 5;

	Font _font = "Font\Font.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";

	String _text = "ScenarioParam";
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

	String _text = "Goal";
	String _spriteName = "Goal";
}

ContainerDescription tableGroup
{
	ElementDescription _border = "SharedElements.rsc:sunkenRaisedBorder";

	int _leftPad = 8;
	int _topPad = 8;
	int _rightPad = 8;
	int _bottomPad = 8;

	int _width = 500;
	int _height = 200;
	int _scrollSpacing = 4;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "tableGoal";
}

TableDescription tableGoal
{
	Alignment _alignment = TopLeft;
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;

	int _width = 1;
	int _height = 50;
	
	int _cellPad = 4;	

	int _minHeight = 200;
	int _minWidth = 484;

	TableItem _items
	[
	]
}

RibbonDescription groupGoal
{
	bool _vertical = false;
	int _cellPad = 4;
	ElementDescription _elements
	[
		"groupImage",
		"textGoal",
	]
}

GroupDescription groupImage
{
	ElementDescription _elements
	[
		"imageNone",
		"imageComplete",
		"imageFail",
	]
}

TextDescription textGoal
{
	Font _font = "Font\FontSmall.rsc";
	bool _wordWrap = true;
	int _wordWrapSize = 454;
	int _minWidth = 454;
}

ImageDescription imageIcon 
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
}

ImageDescription imageNone : "imageIcon"
{
	String _spriteName = "White";
	Color _color = 0x00FFFFFF;
	int _width = 16;
	int _height = 16;
}

ImageDescription imageComplete : "imageIcon"
{
	String _spriteName = "GoalSuccess";
}

ImageDescription imageFail : "imageIcon"
{
	String _spriteName = "GoalFail";
}