Dialog resource
{
	SpriteSheet _backgroundSpriteSheet = "Sprite/Background/MainMenu.rsc";
	String _backgroundSpriteName = "Background";
	Color _backgroundColor = 0xFFFFFFFF;

	Flags _flags = PauseGame | Modal | FirstDraw;

	ElementDescription _rootElement = "main";

	External _references
	[
		"Options.rsc",
		"SaveLoad.rsc",
		"NewGame.rsc",
		"Achievement.rsc",
		"Scenario.rsc",
		"Tutorial.rsc",
		"Goal.rsc",
		"Evaluation.rsc",
		"Mod.rsc",
		"BuildId.rsc",
		"Reload.rsc:game",
		"Reload.rsc:menu"
	]
}

GroupDescription main
{
	Alignment _alignment = MidCenter;
	ElementDescription _elements
	[
		"content"
	]
}

BorderDescription border : "SharedElements.rsc:dialogBorder"
{
	Color _color = 0x60000000;
}

GroupDescription content
{
	int _leftPad = 0;
	int _rightPad = 0;
	int _topPad = 0;
	int _bottomPad = 0;
	Alignment _alignment = MidCenter;
	ElementDescription _elements
	[
		"border"
		"buttonList",
		
	]
}

RibbonDescription buttonList
{
	int _leftPad = 8;
	int _topPad = 8;
	int _bottomPad = 8;
	int _rightPad = 8;

	Alignment _alignment = MidCenter;
	bool _vertical = true;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"buttonNew",
		"buttonLoad",
		"buttonTutorial",
		"buttonAchievement",
		"buttonOptions",
		"buttonMod",
		"buttonQuit",
	]
}

TextDescription textTitle
{
	Alignment _alignment = MidCenter;

	Font _font = "Font\FontLarge.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "Title";
	bool _dropShadow = true;
}

LabelDescription labelMainMenu
{
	Alignment _alignment = MidLeft;

	int _bottomPad = 6;
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 6;

	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";

	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;
}

ButtonDescription buttonMainMenu : "SharedElements.rsc:floatingButton"
{
	ElementDescription _border = "border";
	Alignment _alignment = MidCenter;
	int _topPad = 2;
	int _leftPad = 2;
	int _rightPad = 2;
	int _bottomPad = 2;
	int _minWidth = 160;
	int _minHeight = 16;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:mainMenu";
}

ButtonDescription buttonResume : "buttonMainMenu"
{
	ElementDescription _content = "labelResume";
	String _toolTipText = "ResumeGameTip";
}

ButtonDescription buttonNew : "buttonMainMenu"
{
	ElementDescription _content = "labelNewGame";
	String _toolTipText = "NewGameTip";
}

ButtonDescription buttonLoad : "buttonMainMenu"
{
	ElementDescription _content = "labelLoadGame";
	String _toolTipText = "LoadGameTip";
}

ButtonDescription buttonSave : "buttonMainMenu"
{
	ElementDescription _content = "labelSaveGame";
	String _toolTipText = "SaveGameTip";
}

ButtonDescription buttonOptions : "buttonMainMenu"
{
	ElementDescription _content = "labelOptions";
	String _toolTipText = "OptionsTip";
}

ButtonDescription buttonMenu : "buttonMainMenu"
{
	ElementDescription _content = "labelMenu";
	String _toolTipText = "ReturnMenuTip";
}

ButtonDescription buttonQuit : "buttonMainMenu"
{
	ElementDescription _content = "labelQuit";
	String _toolTipText = "QuitGameTip";
}

ButtonDescription buttonAchievement : "buttonMainMenu"
{
	ElementDescription _content = "labelAchievement";
	String _toolTipText = "AchievementTip";
}

ButtonDescription buttonMod : "buttonMainMenu"
{
	ElementDescription _content = "labelMod";
	String _toolTipText = "ModTip";
}

ButtonDescription buttonGoal : "buttonMainMenu"
{
	ElementDescription _content = "labelGoal";
	String _toolTipText = "GoalTip";
}

ButtonDescription buttonMap : "buttonMainMenu"
{
	ElementDescription _content = "labelMap";
	String _toolTipText = "MapTip";
}

ButtonDescription buttonTutorial : "buttonMainMenu"
{
	ElementDescription _content = "labelTutorial";
	String _toolTipText = "TutorialTip";
}

LabelDescription labelResume : "labelMainMenu"
{
	String _text = "ResumeGame";
	String _spriteName = "ResumeGame";
}

LabelDescription labelNewGame : "labelMainMenu"
{
	String _text = "NewGame";
	String _spriteName = "NewGame";
}

LabelDescription labelLoadGame : "labelMainMenu"
{
	String _text = "LoadGame";
	String _spriteName = "LoadGame";
}
LabelDescription labelSaveGame : "labelMainMenu"
{
	String _text = "SaveGame";
	String _spriteName = "SaveGame";
}

LabelDescription labelOptions : "labelMainMenu"
{
	String _text = "Options";
	String _spriteName = "Options";
}

LabelDescription labelMenu : "labelMainMenu"
{
	String _text = "ReturnMenu";
	String _spriteName = "ReturnMenu";
}

LabelDescription labelQuit : "labelMainMenu"
{
	String _text = "QuitGame";
	String _spriteName = "QuitGame";
}

LabelDescription labelAchievement : "labelMainMenu"
{
	String _text = "Achievement";
	String _spriteName = "Achievement";
}

LabelDescription labelMod : "labelMainMenu"
{
	String _text = "Mod";
	String _spriteName = "Mod";
}

LabelDescription labelGoal : "labelMainMenu"
{
	String _text = "Goal";
	String _spriteName = "Goal";
}

LabelDescription labelMap : "labelMainMenu"
{
	String _text = "Map";
	String _spriteName = "Map";
}

LabelDescription labelTutorial : "labelMainMenu"
{
	String _text = "Tutorial";
	String _spriteName = "Tutorial";
}


