Dialog resource
{
	ElementDescription _rootElement = "content";

	External _references
	[
		"EventPopup.rsc",
	]
}

GroupDescription content
{
	Alignment _alignment = BottomRight;
	int _rightPad = 0;
	ElementDescription _elements
	[
		"ribbonNotify"
	]
}

GroupDescription ribbonNotify
{
	ElementDescription _elements
	[
		"SharedElements.rsc:dialogBorder",
		"SharedElements.rsc:sunkenBorderPad6"
		"notifyContent",
	]
}

RibbonDescription notifyContent
{
	int _leftPad = 9;
	int _rightPad = 9;
	int _topPad = 9;
	int _bottomPad = 9;

	Alignment _alignment = MidCenter;
	bool _vertical = false;
	int _cellPad = 4;
	ElementDescription _elements
	[
		"groupNotify",
		"groupNotify",
		"groupNotify",
		"groupNotify",
		"groupNotify",
		"groupNotify",
	]
}

GroupDescription groupNotify
{
	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:general";
	String _toolTipText = "Parameter";

	ElementDescription _elements
	[
		"notifyImage",
		"notifyButton"
	]
}

ButtonDescription notifyButton : "SharedElements.rsc:raisedButton"
{
	ElementDescription _content = "notifyButtonImage";
}

ImageDescription notifyButtonImage
{
	int _leftPad = 2;
	int _rightPad = 2;
	int _topPad = 2;
	int _bottomPad = 2;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "EventIcon0";
}

ImageDescription notifyImage
{
	ElementDescription _border = "SharedElements.rsc:buttonEnabledBorder";
	int _leftPad = 2;
	int _rightPad = 2;
	int _topPad = 2;
	int _bottomPad = 2;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "EventIcon0";
}
