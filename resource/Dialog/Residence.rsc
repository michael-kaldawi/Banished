GroupDescription residence
{
	//int _topPad = 2;
	int _leftPad = 4;
	//int _rightPad = 2;
	//int _bottomPad = 2;
	
	Alignment _alignment = TopLeft;
	ElementDescription _elements
	[
		"residenceContainer"
	]
}

ContainerDescription residenceContainer
{
	//Flags _flags = ExtendWidth | ExtendHeight;

	int _width = 338;
	int _height = 108;
	int _scrollSpacing = 4;

	bool _allowShrinkHeight = true;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "residenceTable";
}

GroupDescription residenceLong : "residence"
{
	ElementDescription _elements
	[
		"residenceLongContainer"
	]
}

ContainerDescription residenceLongContainer : "residenceContainer"
{
	ElementDescription _content = "residenceLongTable";
}

TableDescription residenceTable
{
	int _width = 5;
	int _height = 8;
	int _cellPad = 2;
	
	TableItem _items
	[
		{ int _x = 0; int _y = -1; ElementDescription _element = "buttonGoto"; }
		{ int _x = 1; int _y = -1; ElementDescription _element = "textName"; }
		{ int _x = 2; int _y = -1; ElementDescription _element = "groupGender"; }
		{ int _x = 3; int _y = -1; ElementDescription _element = "textAge"; }
		{ int _x = 4; int _y = -1; ElementDescription _element = "textProfession"; }
	]
}

ButtonDescription buttonGoto : "SharedElements.rsc:raisedButton"
{
	int _minWidth = 20;
	int _minHeight = 20;
	ElementDescription _content = "imageGoto";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "CitizenGotoTip";
}

ImageDescription imageGoto
{
	Alignment _alignment = MidCenter;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "ArrowRight";
	int _width = 16;
	int _height = 16;
}

TableDescription residenceLongTable : "residenceTable"
{
	int _height = 40;
}

TextDescription textCommon
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";

	int _topPad = 2;
	int _bottomPad = 2;
	int _leftPad = 4;
	int _rightPad = 4;
	Alignment _alignment = MidLeft;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
}

TextDescription textName : "textCommon"
{
	int _minWidth = 114;
}

TextDescription textAge : "textCommon"
{
	int _minWidth = 30;
	Alignment _alignment = MidCenter;
}

TextDescription textProfession : "textCommon"
{
	int _minWidth = 124;
	StringTable _stringTable = "StringTable.rsc:professions";
}

GroupDescription groupGender
{
	int _minWidth = 20;
	int _minHeight = 20;
	ElementDescription _elements
	[
		"SharedElements.rsc:flatButtonEnabledBorder"
		"imageFemale"
		"imageMale"
	]
}

ImageDescription imageCommon
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	Alignment _alignment = MidCenter;
}

ImageDescription imageFemale : "imageCommon"
{
	String _spriteName = "GenderFemale";
}

ImageDescription imageMale : "imageCommon"
{
	String _spriteName = "GenderMale";
}

ButtonDescription buttonTabResidence : "StandardDialog.rsc:buttonTab"
{
	ElementDescription _content = "labelTabResidence";
}

LabelDescription labelTabResidence : "StandardDialog.rsc:labelTab"
{
	String _spriteName = "ResidenceTab";
	String _text = "Occupants";
}

ButtonDescription buttonTabCitizen : "StandardDialog.rsc:buttonTab"
{
	ElementDescription _content = "labelTabCitizen";
}

LabelDescription labelTabCitizen : "StandardDialog.rsc:labelTab"
{
	String _spriteName = "ResidenceTab";
	String _text = "Details";
}

