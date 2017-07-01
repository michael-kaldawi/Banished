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
	String _spriteName = "ToolLimit";
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "ToolLimit";
	String _toolTip = "ToolLimitTip";
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc";
	ElementController _controllers
	[
		{ 
			ElementDescription _element = "limitTable"; 
			String _insertAt = "userGroup0"; 
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitLog"; 
			String _insertAt = "limit0"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigLog";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitStone"; 
			String _insertAt = "limit1"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigStone";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitIron"; 
			String _insertAt = "limit2"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigIron";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitFuel"; 
			String _insertAt = "limit3"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigFuel";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitCoal"; 
			String _insertAt = "limit4"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigCoal";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitTool"; 
			String _insertAt = "limit5"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigTools";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitFood"; 
			String _insertAt = "limit6"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigFood";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitHerb"; 
			String _insertAt = "limit7"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigHerbs";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitClothing"; 
			String _insertAt = "limit8"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigClothing";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitAlcohol"; 
			String _insertAt = "limit9"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigAlcohol";	
		}
		{ 
			ObjectType _type = "ResourceLimitUI"; 
			ElementDescription _element = "Dialog/TownHall.rsc:resourceLimitTextile"; 
			String _insertAt = "limit10"; 
			DialogControllerConfig _config = "Dialog/TownHall.rsc:resourceLimitConfigTextile";	
		}

	]
}

TableDescription limitTable
{
	int _width = 2;
	int _height = 6;
	int _topPad = 4;

	int _cellPad = 2;

	TableItem _items
	[
		{ int _x = 0; int _y = 0; ElementDescription _element = "limit0"; }
		{ int _x = 0; int _y = 1; ElementDescription _element = "limit1"; }
		{ int _x = 0; int _y = 2; ElementDescription _element = "limit2"; }
		{ int _x = 0; int _y = 3; ElementDescription _element = "limit3"; }
		{ int _x = 0; int _y = 4; ElementDescription _element = "limit4"; }
		{ int _x = 0; int _y = 5; ElementDescription _element = "limit10"; }

		{ int _x = 1; int _y = 0; ElementDescription _element = "limit5"; }
		{ int _x = 1; int _y = 1; ElementDescription _element = "limit6"; }
		{ int _x = 1; int _y = 2; ElementDescription _element = "limit7"; }
		{ int _x = 1; int _y = 3; ElementDescription _element = "limit8"; }
		{ int _x = 1; int _y = 4; ElementDescription _element = "limit9"; }
		{ int _x = 1; int _y = 5; ElementDescription _element = "limit11"; }

	]
}

GroupDescription limit0 { }
GroupDescription limit1 { }
GroupDescription limit2 { }
GroupDescription limit3 { }
GroupDescription limit4 { }
GroupDescription limit5 { }
GroupDescription limit6 { }
GroupDescription limit7 { }
GroupDescription limit8 { }
GroupDescription limit9 { }
GroupDescription limit10 { }
GroupDescription limit11 { }