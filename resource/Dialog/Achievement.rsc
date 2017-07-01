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
			String _name = "complete";
			ElementDescription _element = "textComplete";
			LayoutHorizontal _xLayout = RightToRight;  String _xAnchorTo = "table"; 
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "title"; 
		}
		{
			String _name = "table";
			ElementDescription _element = "tableGroup";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "title";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "title";
		}
		{
			String _name = "close";
			ElementDescription _element = "SharedElements.rsc:buttonOk";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "table";
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

	String _text = "Achievement";
	String _spriteName = "Achievement";
}

TextDescription textComplete
{
	int _bottomPad = 5;
	int _leftPad = 5;
	int _rightPad = 5;
	int _topPad = 7;

	Font _font = "Font\FontMedium.rsc";

	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "PercentComplete";
}

ContainerDescription tableGroup
{
	ElementDescription _border = "SharedElements.rsc:sunkenRaisedBorder";

	int _leftPad = 8;
	int _topPad = 8;
	int _rightPad = 8;
	int _bottomPad = 8;

	int _width = 434;
	int _height = 338;
	int _scrollSpacing = 4;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "tableAchievement";
}

TableDescription tableAchievement
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
	int _topPad = 4;
	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;

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
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "image"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "image";
		}
		{
			String _name = "desc";
			ElementDescription _element = "textDescription";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "title";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "title"; int _yOffset = 4;
		}
	]
}

TextDescription textDescription
{
	Font _font = "Font\FontSmall.rsc";
	bool _wordWrap = true;
	int _wordWrapSize = 350;
	int _minWidth = 350;
}

TextDescription textTitle
{
	Font _font = "Font\FontMedium.rsc";
}

GroupDescription imageGroup
{
	ElementDescription _elements
	[
		"imageIcon"
		"imageStar"
	]
}

ImageDescription imageIcon
{
	ElementDescription _border = "SharedElements.rsc:raisedBorder";
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;
}

ImageDescription imageStar
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "Achievement";

	Alignment _alignment = TopRight;
	int _topPad = 2;
	int _rightPad = 2;

	Color _color = 0xFFfdd428;
}