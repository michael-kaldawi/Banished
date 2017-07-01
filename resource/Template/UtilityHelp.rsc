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
	String _spriteName = "ToolHelp";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ToolHelp";
	String _toolTip = "ToolHelpTip";

	int _group = 4;
}

UIDescription ui
{
	// save buffer size
	int _settingsBufferSize = 512;

	Dialog _dialog = "Dialog/StandardDialog.rsc";
	ElementController _controllers
	[
		{ ObjectType _type = HelpUI; ElementDescription _element = "Dialog/Help.rsc:main"; String _insertAt = "userGroup0"; }
	]
}
