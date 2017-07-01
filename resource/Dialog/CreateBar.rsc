Dialog resource
{
	ElementDescription _rootElement = "content";
	Flags _flags = NoMouseCapture;

	ElementController _controllers
	[
		{	ObjectType _type = BuildRequirementUI;	}
	]
}

LayoutDescription content
{
	Alignment _alignment = TopLeft;

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
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "image"; int _xOffset = 2;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "image"; 
		}
		{
			String _name = "build0";
			ElementDescription _element = "labelBuild0";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "title"; int _xOffset = 2;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "title"; 
		}
		{
			String _name = "build1";
			ElementDescription _element = "labelBuild1";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "build0"; int _xOffset = 2;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "build0"; 
		}
		{
			String _name = "build2";
			ElementDescription _element = "labelBuild2";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "build1"; int _xOffset = 2;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "build1"; 
		}
		{
			String _name = "size";
			ElementDescription _element = "textRibbon";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "title"; 
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "title"; int _yOffset = 2;
		}
	]
}

BorderDescription border : 	"SharedElements.rsc:toolTipBorder"
{
	Color _color = 0xC0FFFFFF;
}

ImageDescription imageIcon
{
	ElementDescription _border = "border";

	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
}

TextDescription textTitle
{
	ElementDescription _border = "border";
	int _leftPad = 4;
	int _rightPad = 4;
	int _minHeight = 22;

	Alignment _alignment = MidLeft;
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:toolbar";
	String _text = "Unknown";
}

RibbonDescription textRibbon
{
	bool _vertical = false;
	int _cellPad = 4;
	ElementDescription _elements
	[
		"textSize",
		"textStatus"
	]
}

LabelDescription labelBuild
{
	ElementDescription _border = "border";
	int _leftPad = 4;
	int _rightPad = 4;
	int _minHeight = 22;

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

TextDescription textSize
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 1;
	int _bottomPad = 1;

	ElementDescription _border = "border";
	Alignment _alignment = MidLeft;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
}

TextDescription textStatus
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 1;
	int _bottomPad = 1;

	ElementDescription _border = "border";
	Alignment _alignment = MidLeft;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
}