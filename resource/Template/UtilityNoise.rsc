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
	String _spriteName = "ToolNoise";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ToolNoise";
	String _toolTip = "ToolNoiseTip";

	int _group = -1;
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc";
	ElementController _controllers
	[
		{ ObjectType _type = NoiseUI; ElementDescription _element = "Dialog/Noise.rsc:content"; String _insertAt = "userGroup0"; }
	]
}
