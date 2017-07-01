RibbonDescription resource
{
	Alignment _alignment = MidCenter;

	bool _vertical = true;
	int _cellPad = 8;
	ElementDescription _elements
	[
		"groupText"
		"ribbonButtons"
	]
}

GroupDescription groupText
{
	ElementDescription _elements
	[
		"textNone"
		"textNomad"
	]
}

TextDescription textNone
{
	Font _font = "Font/FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "NomadsNone";
	bool _wordWrap = true;
	int _wordWrapSize = 400;
}

TextDescription textNomad : "textNone"
{
	String _text = "NomadsRequest";
}

RibbonDescription ribbonButtons
{
	Alignment _alignment = MidCenter;
	bool _vertical = false;
	int _cellPad = 64;
	ElementDescription _elements
	[
		"buttonDeny",
		"buttonAllow"
	]
}

ButtonDescription buttonDeny : "Work.rsc:enableWorkButton"
{
	String _toolTipText = "DenyNomadTip";
	ElementDescription _content = "labelDeny";
}

LabelDescription labelDeny : "Work.rsc:labelEnableWork"
{
	String _text = "DenyNomad";
	String _spriteName = "DenyNomad";
}

ButtonDescription buttonAllow : "Work.rsc:enableWorkButton"
{
	String _toolTipText = "AllowNomadTip";
	ElementDescription _content = "labelAllow";
}

LabelDescription labelAllow : "Work.rsc:labelEnableWork"
{
	String _text = "AllowNomad";
	String _spriteName = "AllowNomad";
}