RibbonDescription icons
{
	int _cellPad = 2;
	int _rightPad = 4;
	ElementDescription _elements
	[
		"imageStatusHome",
		"imageStatusFood",
		"imageStatusCold",
		"imageStatusJob",
		"imageStatusTool",
		"imageStatusDisease",
	]
}

ImageDescription imageIcon
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	int _width = 16;
	int _height = 16;
	int _topPad = 1;
	int _bottomPad = 1;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
}

ImageDescription imageStatus : "imageIcon"
{
	int _width = 20;
	int _height = 20;
	SpriteSheet _spriteSheet = "StatusIcons/CitizenIconSpriteSheet.rsc";
}

ImageDescription imageFemale : "imageIcon" { String _spriteName = "GenderFemale"; String _toolTipText = "FemaleTip"; }
ImageDescription imageMale : "imageIcon" { String _spriteName = "GenderMale"; String _toolTipText = "MaleTip"; }
ImageDescription imageStatusHome : "imageStatus" { String _spriteName = "CitizenHomeSmall"; String _toolTipText = "StatusHome2Tip"; }
ImageDescription imageStatusFood : "imageStatus" { String _spriteName = "CitizenFoodSmall"; String _toolTipText = "StatusFood2Tip"; }
ImageDescription imageStatusCold : "imageStatus" { String _spriteName = "CitizenColdSmall"; String _toolTipText = "StatusCold2Tip"; }
ImageDescription imageStatusJob : "imageStatus" { String _spriteName = "CitizenJobSmall"; String _toolTipText = "StatusJob2Tip"; }
ImageDescription imageStatusTool : "imageStatus" { String _spriteName = "CitizenToolSmall"; String _toolTipText = "StatusTool2Tip"; }
ImageDescription imageStatusDisease : "imageStatus" { String _spriteName = "CitizenDiseaseSmall"; String _toolTipText = "StatusDisease2Tip";}

RibbonDescription citizen
{
	int _cellPad = 2;
	bool _vertical = true;
	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
	ElementDescription _elements 
	[
		"citizenTable"
		"citizenStatus"
	]
}

RibbonDescription citizenStatus
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";

	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";

	//int _minWidth = 224;
	Alignment _alignment = MidLeft;

	bool _vertical = false;
	int _cellPad = 2;

	ElementDescription _elements
	[
		"textNameIs"
		"textAction"
	]
}

TextDescription textNameIs
{
	int _leftPad = 2;
	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "FollowCitizenInfoNameOnly";
	int _topPad = 3;
	Alignment _alignment = MidLeft;
	int _bottomPad = 3;
}

TextDescription textAction
{
	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:citizenActions";
	String _text = "MaxAction";
	Alignment _alignment = MidLeft;
	int _topPad = 3;
	int _bottomPad = 3;
}

TableDescription citizenTable
{
	Alignment _alignment = TopLeft;
	int _leftPad = 0;
	int _rightPad = 0;
	int _topPad = 4;
	int _bottomPad = 0;

	int _width = 4;
	int _height = 5;

	int _cellPad = 2;

	TableItem _items
	[
		{ int _x = 0; int _y = 0; ElementDescription _element = "textNameLabel"; }
		{ int _x = 1; int _y = 0; ElementDescription _element = "textName"; }

		{ int _x = 2; int _y = 0; ElementDescription _element = "textGenderLabel"; }
		{ int _x = 3; int _y = 0; ElementDescription _element = "groupGender"; }

		{ int _x = 0; int _y = 2; ElementDescription _element = "textAgeLabel"; }
		{ int _x = 1; int _y = 2; ElementDescription _element = "numberAge"; }

		{ int _x = 2; int _y = 2; ElementDescription _element = "textProfessionLabel"; }
		{ int _x = 3; int _y = 2; ElementDescription _element = "textProfession"; }

		{ int _x = 0; int _y = 3; ElementDescription _element = "textClothingLabel"; }
		{ int _x = 1; int _y = 3; ElementDescription _element = "textClothing"; }

		{ int _x = 2; int _y = 3; ElementDescription _element = "textEducatedLabel"; }
		{ int _x = 3; int _y = 3; ElementDescription _element = "groupEducated"; }

		{ int _x = 0; int _y = 4; ElementDescription _element = "textToolLabel"; }
		{ int _x = 1; int _y = 4; ElementDescription _element = "textTool"; }

		{ int _x = 0; int _y = 1; ElementDescription _element = "textHealthLabel"; }
		{ int _x = 1; int _y = 1; ElementDescription _element = "groupHearts"; }

		{ int _x = 2; int _y = 1; ElementDescription _element = "textHappyLabel"; }
		{ int _x = 3; int _y = 1; ElementDescription _element = "groupStars"; }

	]
}

RibbonDescription groupHearts : "ImageStatusHeart.rsc:status" 
{ 
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	int _leftPad = 2;
	int _rightPad = 2;
}

RibbonDescription groupStars : "ImageStatusStar.rsc:status" 
{ 
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	int _leftPad = 2;
	int _rightPad = 2;
}

GroupDescription groupGender
{
	int _leftPad = 2;
	int _rightPad = 2;
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	ElementDescription _elements
	[
		"imageFemale"
		"imageMale"
	]
}

GroupDescription groupEducated
{
	ElementDescription _elements
	[
		"textEducatedYes"
		"textEducatedNo"
	]
}

TextDescription textLabel
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	int _leftPad = 2;
	int _rightPad = 2;
	int _topPad = 3;
	int _bottomPad = 3;
	int _minWidth = 66;
	Alignment _alignment = MidLeft;
}

TextDescription textName
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	int _leftPad = 2;
	int _rightPad = 2;
	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
}

TextDescription textClothing
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	int _leftPad = 2;
	int _rightPad = 2;
	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:clothing";
	String _text = "Clothing0";
}

TextDescription textTool
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	int _leftPad = 2;
	int _rightPad = 2;
	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:toolType";
	String _text = "Tool0";
}

TextDescription textProfession
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	int _leftPad = 2;
	int _rightPad = 2;
	int _minWidth = 104;
	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:professions";
	String _text = "Profession0";
}

TextDescription textEducatedYes
{
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	int _leftPad = 2;
	int _rightPad = 2;
	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:common";
	String _text = "Yes";
}

TextDescription textEducatedNo : "textEducatedYes"
{
	String _text = "No";
}

NumberDescription numberAge
{
	int _leftPad = 2;
	int _rightPad = 2;
	ElementDescription _border = "SharedElements.rsc:flatButtonEnabledBorder";
	Font _font = "Font/FontSmall.rsc";
	NumberType _numberType = Integer;
}

TextDescription textNameLabel : "textLabel" { String _text = "CitizenName"; }
TextDescription textAgeLabel : "textLabel" { String _text = "CitizenAge"; }
TextDescription textHealthLabel : "textLabel" { String _text = "CitizenHealth"; }
TextDescription textHappyLabel : "textLabel" { String _text = "CitizenHappy"; }
TextDescription textProfessionLabel : "textLabel" { String _text = "CitizenProfession"; }
TextDescription textHomeLabel : "textLabel" { String _text = "CitizenHome"; }
TextDescription textGenderLabel : "textLabel" { String _text = "CitizenGender"; }
TextDescription textEducatedLabel : "textLabel" { String _text = "CitizenEducated"; }
TextDescription textClothingLabel : "textLabel" { String _text = "CitizenClothing"; }
TextDescription textToolLabel : "textLabel" { String _text = "CitizenTool"; }


ButtonDescription buttonProfession : "SharedElements.rsc:raisedButton"
{
	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "GotoProfessionTip";
	ElementDescription _content = "labelButtonProfession";
}

ButtonDescription buttonHome : "buttonProfession"
{
	String _toolTipText = "GotoHomeTip";
	ElementDescription _content = "labelButtonHome";
}

ImageDescription labelButtonProfession
{
	int _leftPad = 2;
	int _rightPad = 2;
	int _topPad = 2;
	int _bottomPad = 2;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "GotoProfession";
}

ImageDescription labelButtonHome : "labelButtonProfession"
{
	String _spriteName = "GotoHome";
}

ButtonDescription buttonFollow : "SharedElements.rsc:borderButton"
{
	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "FollowCitizenTip";

	int _topPad = 4;
	int _rightPad = 2;
	Alignment _alignment = TopRight;
	
	ElementDescription _content = "textFollow";
}

TextDescription textFollow
{
	int _leftPad = 12;
	int _rightPad = 12;
	int _topPad = 6;
	int _bottomPad = 6;

	Font _font = "Font/FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "FollowCitizen";
}
