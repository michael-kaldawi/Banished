Dialog resource
{
	SpriteSheet _backgroundSpriteSheet = "Sprite/Background/MainMenu.rsc";
	String _backgroundSpriteName = "Background";
	Color _backgroundColor = 0xFFFFFFFF;

	Flags _flags = PauseGame | Modal | FirstDraw;

	ElementDescription _rootElement = "content";

	External _references
	[
		"Options.rsc",
		"SaveLoad.rsc",
		"Achievement.rsc",
		"Goal.rsc",
		"MapParams.rsc",
		"Mod.rsc",
		"BuildId.rsc",
		"Reload.rsc:game",
		"Reload.rsc:menu"
	]
}

RibbonDescription content
{
	ElementDescription _border = "MainMenu.rsc:border";
	int _leftPad = 8;
	int _topPad = 8;
	int _bottomPad = 8;
	int _rightPad = 8;

	Alignment _alignment = MidCenter;
	bool _vertical = true;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"MainMenu.rsc:buttonResume",
		"MainMenu.rsc:buttonLoad",
		"MainMenu.rsc:buttonSave",
		"MainMenu.rsc:buttonOptions",
		"MainMenu.rsc:buttonAchievement",
		"MainMenu.rsc:buttonMod",
		"MainMenu.rsc:buttonMap",
		"MainMenu.rsc:buttonMenu",
		"MainMenu.rsc:buttonQuit",
	]
}
