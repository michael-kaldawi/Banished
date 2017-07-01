RibbonDescription destroy
{
	int _cellPad = 4;
	bool _vertical = false;

	ElementDescription _elements
	[
		"buttonReclaim",
		"buttonRebuild",
		"buttonDestroy",
		"destroyInfo"
	]
}

RibbonDescription destroyInfo
{
	int _cellPad = 4;
	int _topPad = 4;
	bool _vertical = true;
	Alignment _alignment = TopLeft;

	ElementDescription _elements
	[
		"textRemove"
		"textUpgrade"
		"textFixing"
		"textDamage"
		"progressRemove",
		"progressDestruct",
	]
}

ButtonDescription buttonReclaim : "Dialog/Work.rsc:enableWorkButton"
{
	ElementDescription _content = "labelReclaim";	
	String _toolTipText = "DestroyReclaimTip";
}

ButtonDescription buttonRebuild : "Dialog/Work.rsc:enableWorkButton"
{
	ElementDescription _content = "labelRebuild";	
	String _toolTipText = "DestroyRebuildTip";
}

ButtonDescription buttonDestroy : "Dialog/Work.rsc:enableWorkButton"
{
	ElementDescription _content = "labelDestroy";	
	String _toolTipText = "DestroyDestroyTip";
}

LabelDescription labelReclaim : "Dialog/Work.rsc:labelEnableWork" { String _spriteName = "DestroyReclaim"; String _text = "DestroyReclaim";  }
LabelDescription labelRebuild : "Dialog/Work.rsc:labelEnableWork" { String _spriteName = "DestroyReclaim"; String _text = "DestroyRebuild";  }
LabelDescription labelDestroy : "Dialog/Work.rsc:labelEnableWork" { String _spriteName = "ToolbarRemove"; String _text = "DestroyDestroy";  }

ProgressDescription progressRemove : "SharedElements.rsc:progressBar"
{
	int _topPad = 4;
	int _minWidth = 250;
	Alignment _alignment = TopRight;
	ElementDescription _text = "textRemoval";
}

ProgressDescription progressDestruct : "progressRemove"
{
	ElementDescription _text = "textDestroy";
}

TextDescription textRemoval
{
	Alignment _alignment = MidLeft;

	int _topPad = 0;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "PercentRemove";
	Color _color = 0xFF000000;
}

TextDescription textDestroy
{
	Alignment _alignment = MidLeft;

	int _topPad = 0;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "PercentDestroy";
	Color _color = 0xFF000000;
}


TextDescription textRemove
{
	Alignment _alignment = MidLeft;

	int _topPad = 0;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "DestroyRemove";
	Color _color = 0xFFFFFFFF;
}

TextDescription textUpgrade : "textRemove"
{
	String _text = "DestroyUpgrade";
}

TextDescription textDamage : "textRemove"
{
	String _text = "DestroyDamage";
}

TextDescription textFixing : "textRemove"
{
	String _text = "DestroyFixing";
}
