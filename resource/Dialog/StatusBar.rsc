LayoutDescription content
{
	int _topPad = 2;
	LayoutItem _elements
	[
		{
			String _name = "season";
			ElementDescription _element = "groupSeason";
			LayoutHorizontal _xLayout = LeftToLeft; 
			LayoutVertical _yLayout = TopToTop; 
		}
		{
			String _name = "adult";
			ElementDescription _element = "groupPopulation";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "season"; int _xOffset = 1;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "season"; 
		}
		{
			String _name = "weather";
			ElementDescription _element = "groupWeather";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "happy"; int _xOffset = 1;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "happy";
		}

		{
			String _name = "stats";
			ElementDescription _element = "tableStats";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "season"; 
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "season"; int _yOffset = 1;
		}
		{
			String _name = "health";
			ElementDescription _element = "groupHealth";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "season"; 
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "stats"; int _yOffset = 1;
		}
		{
			String _name = "happy";
			ElementDescription _element = "groupHappy";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "health"; int _xOffset = 1;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "health";
		}
		/*
		{
			String _name = "statlast";
			ElementDescription _element = "groupAlcohol";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "happy"; int _xOffset = 1;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "happy"; 
		}
		*/
	]
}

TableDescription tableStats
{
	int _width = 3;
	int _height = 4;
	int _cellPad = 1;

	TableItem _items
	[
		{ int _x = 0; int _y = 0; ElementDescription _element = "groupWood"; }
		{ int _x = 1; int _y = 0; ElementDescription _element = "groupStone"; }
		{ int _x = 2; int _y = 0; ElementDescription _element = "groupIron"; }
		{ int _x = 0; int _y = 1; ElementDescription _element = "groupFireWood"; }
		{ int _x = 1; int _y = 1; ElementDescription _element = "groupCoal"; }
		{ int _x = 2; int _y = 1; ElementDescription _element = "groupTools"; }
		{ int _x = 0; int _y = 2; ElementDescription _element = "groupFood"; }
		{ int _x = 1; int _y = 2; ElementDescription _element = "groupHerbs"; }
		{ int _x = 2; int _y = 2; ElementDescription _element = "groupClothes"; }
		{ int _x = 0; int _y = 3; ElementDescription _element = "groupAlcohol"; }
		{ int _x = 1; int _y = 3; ElementDescription _element = "groupTextile"; }
		{ int _x = 2; int _y = 3; ElementDescription _element = "groupUnused"; }

	]
}

BorderDescription border2 : "SharedElements.rsc:raisedBorder"
{
}

BorderDescription border : "SharedElements.rsc:sunkenBorder"
{
	//ElementDescription _border = "border2";
	int _topPad = 1;
	int _bottomPad = 1;
	int _rightPad = 1;
	int _leftPad = 1;
}

RibbonDescription groupCommon
{
	ElementDescription _border = "border";
	Flags _flags = ExpandWidth;
	bool _vertical = false;
	int _minWidth = 94;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
}

RibbonDescription groupStatusCommon 
{
	bool _vertical = false;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
}

ImageDescription imageCommon
{
	int _leftPad = 4;
	int _topPad = 2;
	int _bottomPad = 2;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
}

ImageDescription imageStatus
{
	SpriteSheet _spriteSheet = "StatusIcons/CitizenIconSpriteSheet.rsc";
	int _width = 20;
	int _height = 20;
	int _topPad = 1;
	int _bottomPad = 1;
}

NumberDescription numberCommon
{
	int _rightPad = 8;
	int _leftPad = 0;
	Alignment _alignment = MidRight;
	Font _font = "Font\FontSmall.rsc";
	NumberType _numberType = Integer;
	int _ivalue = 0;
}

TextDescription textSeason
{
	Alignment _alignment = MidLeft;
	int _rightPad = 4;
	int _leftPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:seasons";
	String _text = "Month0";
	int _minWidth = 80;
}

TextDescription textPopulation
{
	Alignment _alignment = MidRight;
	int _rightPad = 4;
	int _leftPad = 2;
	int _topPad = 4;
	int _bottomPad = 4;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:gameDialogs";
	String _text = "Population";
}

TextDescription statusCount
{
	Alignment _alignment = MidRight;
	Color _color = 0xFFEEE618;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "CountParameter";
	bool _dropShadow = true;
}

RibbonDescription groupHearts : "ImageStatusHeart.rsc:status"
{
	int _rightPad = 5;
	int _leftPad = 5;
	int _topPad = 3;
	int _bottomPad = 3;
	int _cellPad = 1;
}

RibbonDescription groupStars : "ImageStatusStar.rsc:status"
{
	int _rightPad = 5;
	int _leftPad = 5;
	int _topPad = 3;
	int _bottomPad = 3;
	int _cellPad = 1;
}


RibbonDescription groupWeather : "groupCommon" { ElementDescription _elements [ "groupWeatherIcons", "imageTemperature", "numberTemperature"] String _toolTipText = "WeatherTip"; int _minWidth = 96; int _topPad = 1; int _bottomPad = 1; }
RibbonDescription groupPopulation : "groupCommon" {	ElementDescription _elements [ "imageAdults", "imageChildren" "textPopulation" ] String _toolTipText = "PopulationTip";	int _minWidth = 139; }

RibbonDescription groupWood : "groupCommon" { ElementDescription _elements [ "imageWood", "numberWood" ]  String _toolTipText = "WoodTip"; }
RibbonDescription groupStone : "groupCommon" { ElementDescription _elements [ "imageStone", "numberStone" ] String _toolTipText = "StoneTip"; }
RibbonDescription groupIron : "groupCommon" { ElementDescription _elements [ "imageIron", "numberIron" ] String _toolTipText = "IronTip"; }
RibbonDescription groupFireWood : "groupCommon" { ElementDescription _elements [ "imageFireWood", "numberFireWood" ] String _toolTipText = "FirewoodTip"; }
RibbonDescription groupTools : "groupCommon" { ElementDescription _elements [ "imageTools", "numberTools" ] String _toolTipText = "ToolsTip"; }
RibbonDescription groupFood : "groupCommon" { ElementDescription _elements [ "imageFood", "numberFood" ]  String _toolTipText = "FoodTip"; }
RibbonDescription groupHerbs : "groupCommon" { ElementDescription _elements [ "imageHerbs", "numberHerbs" ] String _toolTipText = "HerbsTip"; }
RibbonDescription groupClothes : "groupCommon" { ElementDescription _elements [ "imageClothes", "numberClothes" ] String _toolTipText = "ClothesTip"; }
RibbonDescription groupAlcohol : "groupCommon" { ElementDescription _elements [ "imageAlcohol", "numberAlcohol" ]  String _toolTipText = "AlcoholTip"; int _topPad = 1; int _bottomPad = 1; }
RibbonDescription groupCoal : "groupCommon" { ElementDescription _elements [ "imageCoal", "numberCoal" ]  String _toolTipText = "CoalTip"; }
RibbonDescription groupTextile : "groupCommon" { ElementDescription _elements [ "imageTextile", "numberTextile" ]  String _toolTipText = "TextileTip"; }
RibbonDescription groupUnused : "groupCommon" { int _minWidth = 96; }


RibbonDescription groupSeason : "groupCommon" { ElementDescription _elements [ "textSeason", "numberYear" ]  String _toolTipText = "SeasonTip"; int _minWidth = 144; }
RibbonDescription groupHealth : "groupCommon" { ElementDescription _elements [ "groupHearts" ] String _toolTipText = "HealthTip"; }
RibbonDescription groupHappy : "groupCommon" { ElementDescription _elements [ "groupStars" ] String _toolTipText = "HappyTip"; }
RibbonDescription groupEffects 
{ 
	int _cellPad = 2;
	ElementDescription _elements [ "groupStatusHome", "groupStatusFood", "groupStatusCold", "groupStatusJob", "groupStatusTool", "groupStatusDisease" ] 
}

RibbonDescription groupStatusHome : "groupStatusCommon" { ElementDescription _elements [ "imageStatusHome", "numberStatusHome" ] String _toolTipText = "StatusHomeTip"; } 
RibbonDescription groupStatusFood : "groupStatusCommon" { ElementDescription _elements [ "imageStatusFood", "numberStatusFood" ] String _toolTipText = "StatusFoodTip"; } 
RibbonDescription groupStatusCold : "groupStatusCommon" { ElementDescription _elements [ "imageStatusCold", "numberStatusCold" ] String _toolTipText = "StatusColdTip"; } 
RibbonDescription groupStatusJob : "groupStatusCommon" { ElementDescription _elements [ "imageStatusJob", "numberStatusJob" ] String _toolTipText = "StatusJobTip"; } 
RibbonDescription groupStatusTool : "groupStatusCommon" { ElementDescription _elements [ "imageStatusTool", "numberStatusTool" ] String _toolTipText = "StatusToolTip"; } 
RibbonDescription groupStatusDisease : "groupStatusCommon" { ElementDescription _elements [ "imageStatusDisease", "numberStatusDisease" ] String _toolTipText = "StatusDiseaseTip"; } 

GroupDescription groupWeatherIcons { ElementDescription _elements [ "imageSunny", "imagePartlySunny", "imageCloudy", "imageRain", "imageSnow" ] }

ImageDescription imageTemperature : "imageCommon" { String _spriteName = "TemperatureIcon"; }
ImageDescription imageAdults : "imageCommon" { String _spriteName = "AdultIcon"; }
ImageDescription imageChildren : "imageCommon" { String _spriteName = "ChildIcon"; }
ImageDescription imageWood : "imageCommon" { String _spriteName = "LogSmall"; }
ImageDescription imageStone : "imageCommon" { String _spriteName = "StoneSmall"; }
ImageDescription imageIron : "imageCommon" { String _spriteName = "IronSmall"; }
ImageDescription imageFireWood : "imageCommon" { String _spriteName = "FirewoodSmall"; }
ImageDescription imageTools : "imageCommon" { String _spriteName = "ToolSmall"; }
ImageDescription imageFood : "imageCommon" { String _spriteName = "PotatoSmall"; }


ImageDescription imageHerbs : "imageCommon" { String _spriteName = "HerbSmall"; }
ImageDescription imageClothes : "imageCommon" { String _spriteName = "WinterCoatSmall"; }
ImageDescription imageAlcohol : "imageCommon" { String _spriteName = "AleSmall"; }
ImageDescription imageCoal : "imageCommon" { String _spriteName = "CoalSmall"; }
ImageDescription imageTextile : "imageCommon" { String _spriteName = "LeatherSmall"; }

ImageDescription imageSunny : "imageCommon" { String _spriteName = "SunnyIcon"; }
ImageDescription imagePartlySunny : "imageCommon" { String _spriteName = "PartlySunnyIcon"; }
ImageDescription imageCloudy : "imageCommon" { String _spriteName = "CloudyIcon"; }
ImageDescription imageRain : "imageCommon" { String _spriteName = "RainIcon"; }
ImageDescription imageSnow : "imageCommon" { String _spriteName = "SnowIcon"; }

ImageDescription imageStatusHome : "imageStatus" { String _spriteName = "CitizenHomeSmall"; }
ImageDescription imageStatusFood : "imageStatus" { String _spriteName = "CitizenFoodSmall"; }
ImageDescription imageStatusCold : "imageStatus" { String _spriteName = "CitizenColdSmall"; }
ImageDescription imageStatusJob : "imageStatus" { String _spriteName = "CitizenJobSmall"; }
ImageDescription imageStatusTool : "imageStatus" { String _spriteName = "CitizenToolSmall"; }
ImageDescription imageStatusDisease : "imageStatus" { String _spriteName = "CitizenDiseaseSmall"; }

NumberDescription numberTemperature : "numberCommon" { }
NumberDescription numberWood : "numberCommon" { }
NumberDescription numberStone : "numberCommon" { }
NumberDescription numberIron : "numberCommon" { }
NumberDescription numberFireWood : "numberCommon" { }
NumberDescription numberTools : "numberCommon" { }
NumberDescription numberFood : "numberCommon" { }
NumberDescription numberYear : "numberCommon" { }
NumberDescription numberHerbs : "numberCommon" { }
NumberDescription numberClothes: "numberCommon" { }
NumberDescription numberAlcohol : "numberCommon" { }
NumberDescription numberCoal : "numberCommon" { }
NumberDescription numberTextile : "numberCommon" { }

TextDescription numberStatusHome : "statusCount" { }
TextDescription numberStatusFood : "statusCount" { }
TextDescription numberStatusCold : "statusCount" { }
TextDescription numberStatusJob : "statusCount" { }
TextDescription numberStatusTool : "statusCount" { }
TextDescription numberStatusDisease : "statusCount" { }