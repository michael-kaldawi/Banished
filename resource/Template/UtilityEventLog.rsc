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
	String _spriteName = "ToolEventLog";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ToolEventLog";
	String _toolTip = "ToolEventLogTip";

	int _group = 4;
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc";
	ElementController _controllers
	[
		{ ElementDescription _element = "Dialog/EventLog.rsc:notifybuttons"; String _insertAt = "userTitle0"; }
		{ ObjectType _type = EventLogUI; ElementDescription _element = "Dialog/EventLog.rsc:content"; String _insertAt = "userGroup0"; }
	]
}
