// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = None;
	
	// declare types that will be used
	Description _descriptions
	[
		"ui", 
		"toolbar",
	]
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "ToolStatusBar";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ToolStatusBar";
	String _toolTip = "ToolStatusBarTip";

	int _group = 4;
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc:resourceUserTitle";
	ElementController _controllers
	[
		{ ElementDescription _element = "Dialog/StatusBar.rsc:groupEffects"; String _insertAt = "userTitle0"; }
		{ ObjectType _type = StatusBarUI; ElementDescription _element = "Dialog/StatusBar.rsc:content"; String _insertAt = "userGroup0"; }
	]
}
