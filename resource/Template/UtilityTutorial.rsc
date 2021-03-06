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
	String _spriteName = "ToolTutorial";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ToolTutorial";
	String _toolTip = "ToolTutorialTip";
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc";
	ElementController _controllers
	[
		{ ObjectType _type = TutorialUI; ElementDescription _element = "Dialog/TutorialStep.rsc:content"; String _insertAt = "userGroup0"; }
	]
}
