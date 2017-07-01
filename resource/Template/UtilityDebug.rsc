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
	String _spriteName = "ToolDebug";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ToolDebug";
	String _toolTip = "ToolDebugTip";

	int _group = 4;
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc";
	ElementController _controllers
	[
		{ ObjectType _type = DebugUI; ElementDescription _element = "Dialog/Debug.rsc:debug"; String _insertAt = "userGroup0"; }
	]
}
