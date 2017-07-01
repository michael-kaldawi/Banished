Dialog menu : "MessageBox.rsc"
{
	ElementDescription _rootElement = "MessageBox.rsc:main";
	ElementOverride _override
	[
		{ String _name = "text";		ElementDescription _element = "textReloadMenu";	}
		{ String _name = "buttonOk";		}	// hide ok
		{ String _name = "buttonCancel";	}	// hide cancel
		
	]
}

Dialog game : "MessageBox.rsc"
{
	ElementDescription _rootElement = "MessageBox.rsc:main";
	ElementOverride _override
	[
		{ String _name = "text";		ElementDescription _element = "textReloadGame";	}
		{ String _name = "buttonOk";		}	// hide ok
		{ String _name = "buttonCancel";	}	// hide cancel
		
	]
}

TextDescription textReloadMenu : "MessageBox.rsc:text"
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ReloadMenu";
}

TextDescription textReloadGame : "MessageBox.rsc:text"
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ReloadGame";
}