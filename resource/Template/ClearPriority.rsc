// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fourth;
	
	// declare types that will be used
	Description _descriptions
	[
		"toolbar",
		"createremoval",
	]
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "ClearPriority";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ClearPriority";
	String _toolTip = "ClearPriorityTip";

	String _statusStrings [	"CreateOk", "CreateTooSmall", "CreateTooBig", "CreateBlocked" ]

	int _group = 1;
}

CreateRemovalDescription createremoval
{
	// if true remove resources
	ComponentDescription _remover = "Template/Clear.rsc";

	// increase priority of removal
	bool _increasePriority = true;
}
