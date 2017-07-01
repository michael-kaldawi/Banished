Dialog resource
{
	ElementDescription _rootElement = "main";

	int _drawLevel = 2;

	ElementController _controllers
	[
		{	ObjectType _type = HotKeyToolTipUI;	}
		{	ObjectType _type = BuildRequirementUI;	}
	]
}

GroupDescription main
{
	Alignment _alignment = TopLeft;
	ElementDescription _elements
	[
		"SharedElements.rsc:toolTipBorder",
		"content",
	]
}

LayoutDescription content
{
	int _leftPad = 3;
	int _rightPad = 3;
	int _topPad = 3;
	int _bottomPad = 3;

	LayoutItem _elements
	[
		{
			String _name = "image";
			ElementDescription _element = "imageIcon";
			LayoutHorizontal _xLayout = LeftToLeft;
			LayoutVertical _yLayout = TopToTop;
		}
		{
			String _name = "title";
			ElementDescription _element = "textTitle";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "image"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "image"; int _yOffset = 0;
		}
		{
			String _name = "hotkey";
			ElementDescription _element = "textHotKey";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "title"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "title"; int _yOffset = 0;
		}
		{
			String _name = "build0";
			ElementDescription _element = "labelBuild0";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "tip"; int _xOffset = 0;
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "tip"; int _yOffset = 0;
		}
		{
			String _name = "build1";
			ElementDescription _element = "labelBuild1";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "build0"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "build0"; 
		}
		{
			String _name = "build2";
			ElementDescription _element = "labelBuild2";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "build1"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "build1"; 
		}
		{
			String _name = "buildmulti";
			ElementDescription _element = "labelBuildMulti";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "build2"; int _xOffset = 3;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "build2"; int _yOffset = 3;
		}
		{
			String _name = "tip";
			ElementDescription _element = "textToolTip";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "image"; 
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "image"; int _yOffset = 4;
		}
	]
}

ImageDescription imageIcon
{
	int _leftPad = 1;
	int _rightPad = 1;
	int _topPad = 1;
	int _bottomPad = 1;

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	int _width = 16;
	int _height = 16;
}

TextDescription textToolTip : "ToolTip.rsc:textToolTip"
{
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	int _wordWrapSize = 200;
	int _minWidth = 200;
}

TextDescription textTitle
{
	Alignment _alignment = MidLeft;
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:toolbar";
	String _text = "Unknown";
}

TextDescription textHotKey
{
	Alignment _alignment = MidLeft;
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:toolbar";
	String _text = "HotKey";
}

TextDescription labelBuildMulti
{
	Alignment _alignment = MidLeft;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:toolbar";
	String _text = "PerUnit";
}

LabelDescription labelBuild
{
	Alignment _alignment = MidCenter;

	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "CountParameter";
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";

	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;
}

LabelDescription labelBuild0 : "labelBuild" { }
LabelDescription labelBuild1 : "labelBuild" { }
LabelDescription labelBuild2 : "labelBuild" { }