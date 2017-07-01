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
	String _spriteName = "ToolMap";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ToolMap";
	String _toolTip = "ToolMapTip";

	int _group = 4;
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc";
	ElementController _controllers
	[
		{ ObjectType _type = MapUI; ElementDescription _element = "Dialog/Map.rsc:content"; String _insertAt = "userGroup0"; }
	]
}
