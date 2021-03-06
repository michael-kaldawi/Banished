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
	String _spriteName = "ClearBuildings";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ClearBuildings";
	String _toolTip = "ClearBuildingsTip";

	String _statusStrings [	"CreateOk", "CreateTooSmall", "CreateTooBig", "CreateBlocked" ]

	int _group = 0;
}

CreateRemovalDescription createremoval
{
	// if true remove resources
	ComponentDescription _remover = "Template/Clear.rsc";

	// if true remove roads
	bool _removeBuildings = true;
}
