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
	String _spriteName = "ClearMushroom";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ClearMushroom";
	String _toolTip = "ClearMushroomTip";

	String _statusStrings [	"CreateOk", "CreateTooSmall", "CreateTooBig", "CreateBlocked" ]

	int _group = 0;
}

CreateRemovalDescription createremoval
{
	// if true remove resources
	bool _removeResources = true;
	ComponentDescription _removeTypes
	[
		"Template/NaturalResourceMushroom.rsc"
	]
	ComponentDescription _remover = "Template/Clear.rsc";

	// if true remove roads
	bool _removeRoads = false;
}
