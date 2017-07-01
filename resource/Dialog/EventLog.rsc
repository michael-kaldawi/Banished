LayoutDescription content
{
	int _leftPad = 0;
	int _rightPad = 0;
	int _topPad = 4;
	int _bottomPad = 0;

	LayoutItem _elements
	[
		{
			String _name = "display";
			ElementDescription _element = "display";
			LayoutHorizontal _xLayout = RightToRight;
			LayoutVertical _yLayout = TopToTop;
		}
		{
			String _name = "buttonPrevious";
			ElementDescription _element = "buttonPrevious";
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "display"; int _xOffset = -4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "display";  
		}
		{
			String _name = "buttonBottom";
			ElementDescription _element = "buttonBottom";
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "display"; int _xOffset = -4;
			LayoutVertical _yLayout = BottomToBottom; String _yAnchorTo = "display"; 
		}
		{
			ElementDescription _element = "buttonNext";
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "display"; int _xOffset = -4; 
			LayoutVertical _yLayout = BottomToTop; String _yAnchorTo = "buttonBottom"; int _yOffset = -4;
		}
	]
}

TableDescription display
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	int _width = 2;
	int _height = 6;

	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;
	bool _vertical = true;

	int _cellPad = 2;

	TableItem _items
	[
		{ int _x = 0; int _y = -1; ElementDescription _element = "buttonEvent"; }
		{ int _x = 1; int _y = -1; ElementDescription _element = "textEvent"; }
	]
}

ButtonDescription buttonEvent : "SharedElements.rsc:raisedButton"
{
	ElementDescription _content = "imageEvent";
}

ImageDescription imageEvent
{
	int _leftPad = 2;
	int _rightPad = 2;
	int _topPad = 2;
	int _bottomPad = 2;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "ArrowRightSmall";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "GotoEventTip";
}

TextDescription textEvent
{
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
	int _minWidth = 380;
}

ButtonDescription buttonPrevious : "SharedElements.rsc:borderButton"
{
	ElementDescription _content = "imagePrevious";
}

ButtonDescription buttonNext : "SharedElements.rsc:borderButton"
{
	ElementDescription _content = "imageNext";
}

ButtonDescription buttonBottom : "SharedElements.rsc:borderButton"
{
	ElementDescription _content = "imageBottom";
}

ImageDescription image
{
	int _topPad = 2;
	int _bottomPad = 2;
	int _rightPad = 2;
	int _leftPad = 2;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
}

ImageDescription imagePrevious : "image"
{
	String _spriteName = "ArrowUp";
}

ImageDescription imageNext : "image"
{
	String _spriteName = "ArrowDown";
}

ImageDescription imageBottom : "image"
{
	String _spriteName = "ArrowDownLine";
}

RibbonDescription notifybuttons
{
	int _cellPad = 2;
	ElementDescription _elements
	[
		"deathOldCheck"
		"deathCheck"
		"disasterCheck"
		"storageCheck"
		"townCheck"
	]
}

CheckDescription checkEventNotify : "StandardDialog.rsc:titleButton"
{
	Color _enabledColor = 0xFF2E2B28;
	Color _disabledColor = 0xFF2E2B28;
	Color _highlightedColor = 0xFF2E2B28;
	Color _pressedColor = 0xFF2E2B28;
	Color _color = 0xFF2E2B28;
}

CheckDescription deathOldCheck : "checkEventNotify"
{
	String _toolTipText = "EventNotifyDeathOldTip";
	ElementDescription _check = "imageDeathOld";
	ElementDescription _content = "imageDeathOld";
}

CheckDescription deathCheck : "checkEventNotify"
{
	String _toolTipText = "EventNotifyDeathTip";
	ElementDescription _check = "imageDeath";
	ElementDescription _content = "imageDeath";
}

CheckDescription disasterCheck : "checkEventNotify"
{
	String _toolTipText = "EventNotifyDisasterTip";
	ElementDescription _check = "imageDisaster";
	ElementDescription _content = "imageDisaster";
}

CheckDescription storageCheck : "checkEventNotify"
{
	String _toolTipText = "EventNotifyStorageTip";
	ElementDescription _check = "imageStorage";
	ElementDescription _content = "imageStorage";
}

CheckDescription townCheck : "checkEventNotify"
{
	String _toolTipText = "EventNotifyTownTip";
	ElementDescription _check = "imageTown";
	ElementDescription _content = "imageTown";
}

ImageDescription eventImage : "StandardDialog.rsc:titleImage" 
{
}

ImageDescription imageDeathOld : "eventImage" { String _spriteName = "EventDeathOld"; }
ImageDescription imageDeath : "eventImage" { String _spriteName = "EventDeath"; }
ImageDescription imageDisaster : "eventImage" { String _spriteName = "EventDisaster"; }
ImageDescription imageStorage : "eventImage" { String _spriteName = "EventStorage"; }
ImageDescription imageTown : "eventImage" { String _spriteName = "EventTown"; }