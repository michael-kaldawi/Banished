// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = None;
	
	// declare types that will be used
	Description _descriptions
	[
		"createpath", 
		"toolbar",
	]
}

CreatePathDescription createpath
{
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "ToolPath";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ToolPath";
	String _toolTip = "ToolPathTip";

	int _group = 4;
}
