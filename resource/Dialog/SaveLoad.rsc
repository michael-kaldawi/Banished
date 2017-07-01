Dialog resource
{
	Flags _flags = PauseGame | Modal | FirstDraw;
 
	ElementDescription _rootElement = "main";

	ElementDescription _templates
	[
		"icon"
	]

	External _references
	[
		"Material\UI\UIMaterialNoBlend.rsc"

		"confirmDelete"
		"confirmLoad"
		"confirmSave"

		"modsMissing"
		"modsOutOfDate"
		"modsVersion"
		"modsChanged"
	]
}

GroupDescription main
{
	Alignment _alignment = MidCenter;
	ElementDescription _elements
	[
		"SharedElements.rsc:dialogBorder",
		"content"
	]
}

LayoutDescription content
{
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 8;
	int _bottomPad = 8;

	LayoutItem _elements
	[
		{
			String _name = "root";
			ElementDescription _element = "mainGroup";
			LayoutHorizontal _xLayout = LeftToLeft;
			LayoutVertical _yLayout = TopToTop;
		}
		{
			ElementDescription _element = "groupLabelTitle";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "root";
			LayoutVertical _yLayout = BottomToTop; String _yAnchorTo = "root"; int _yOffset = -8;
		}
		{
			String _name = "save";
			ElementDescription _element = "buttonSave";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "root";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "root"; int _yOffset = 4;
			bool _computeHiddenSize = true;
		}
		{
			String _name = "load";
			ElementDescription _element = "buttonLoad";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "root";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "root"; int _yOffset = 4;
			bool _computeHiddenSize = true;
		}
		{
			String _name = "cancel";
			ElementDescription _element = "SharedElements.rsc:buttonCancel";
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "save"; int _xOffset = -4;
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "root"; int _yOffset = 4;
		}
		{
			String _name = "delete";
			ElementDescription _element = "buttonDelete";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "root";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "root"; int _yOffset = 4;
		}
	]
}

ButtonDescription buttonSave : "SharedElements.rsc:borderButton" { ElementDescription _content = "buttonTextSave"; }
TextDescription buttonTextSave : "SharedElements.rsc:commonButtonText" 
{ 
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "SaveGame"; 
}

ButtonDescription buttonDelete : "SharedElements.rsc:borderButton" { ElementDescription _content = "buttonTextDelete"; }
TextDescription buttonTextDelete : "SharedElements.rsc:commonButtonText" 
{ 
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "DeleteGame"; 
}

ButtonDescription buttonLoad : "SharedElements.rsc:borderButton" { ElementDescription _content = "buttonTextLoad"; }
TextDescription buttonTextLoad : "SharedElements.rsc:commonButtonText" 
{ 
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "LoadGame"; 
}

GroupDescription groupLabelTitle
{
	ElementDescription _elements
	[
		"labelSave",
		"labelLoad"
	]
}

LabelDescription labelTitle
{
	Alignment _alignment = MidCenter;

	int _bottomPad = 5;
	int _leftPad = 5;
	int _rightPad = 5;
	int _topPad = 5;

	Font _font = "Font\Font.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";

	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;
}

LabelDescription labelSave : "labelTitle"
{
	String _text = "SaveGame";
	String _spriteName = "SaveGame";
}

LabelDescription labelLoad : "labelTitle"
{
	String _text = "LoadGame";
	String _spriteName = "LoadGame";
}

GroupDescription mainGroup
{
	int _minWidth = 572;
	int _minHeight = 360;

	ElementDescription _elements
	[
		"SharedElements.rsc:sunkenBorder",
		"SharedElements.rsc:raisedBorderPad"
		"mainPage",
	]
}

PageDescription mainPage
{
	int _activePage = 0;
	ElementDescription _elements
	[
		"groupBusy",
		"groupSelect"
	]
}

RibbonDescription groupBusy
{
	int _leftPad = 8;
	int _topPad = 8;
	int _rightPad = 8;
	int _bottomPad = 8;

	Alignment _alignment = MidCenter;
	bool _vertical = true;
	ElementDescription _elements
	[
		"Loading.rsc:imageGroup",
		"busyTextGroup",
	]
}

ImageDescription imageBusy
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "LoadingCircle";	
}

GroupDescription busyTextGroup
{
	ElementDescription _elements
	[
		"textLoading",
		"textSaving",
		"textPleaseWait",
	]
}

TextDescription textBusy
{
	Alignment _alignment = MidCenter;

	Font _font = "Font\Font.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
}

TextDescription textLoading : "textBusy"
{
	String _text = "Loading";
}

TextDescription textSaving : "textBusy"
{
	String _text = "Saving";
}

TextDescription textPleaseWait : "textBusy"
{
	String _text = "Wait";
}

ContainerDescription groupSelect
{
	int _leftPad = 8;
	int _topPad = 8;
	int _rightPad = 8;
	int _bottomPad = 8;

	int _width = 556;
	int _height = 344;
	int _scrollSpacing = 4;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "tableSaveList";	
}

TableDescription tableSaveList
{
	int _width = 1;
	int _height = 1;
}

RibbonDescription icon
{
	int _bottomPad = 8;
	bool _vertical = true;
	ElementDescription _elements
	[
		"iconGroup",
		"labelSaveDate",
		"labelSaveName",
	]
}

GroupDescription iconGroup
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
	int _topPad = 4;

	ElementDescription _elements
	[
		"imageSaveIcon",
		"borderSave",
		"selectSave",
		"imageCorrupt",
	]
}

ImageDescription imageCorrupt
{
	Alignment _alignment = MidCenter;
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "SaveLoadCorrupt";
}

ImageDescription imageSaveIcon
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "SaveLoadEmpty";
}

TextDescription labelSaveName
{
	Alignment _alignment = MidCenter;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
}

TextDescription labelSaveDate
{
	Alignment _alignment = MidCenter;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";
}

BorderDescription borderSave
{
	int _leftPad = -3;
	int _rightPad = -3;
	int _bottomPad = -3;
	int _topPad = -3;

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "SaveUpperLeft";
	String _upperCenter = "SaveUpperCenter";
	String _upperRight = "SaveUpperRight";
	String _midLeft = "SaveMidLeft";
	String _midCenter = "SaveMidCenter";
	String _midRight = "SaveMidRight";
	String _lowerLeft = "SaveLowerLeft";
	String _lowerCenter = "SaveLowerCenter";
	String _lowerRight = "SaveLowerRight";
}

BorderDescription selectSave
{
	int _leftPad = -3;
	int _rightPad = -3;
	int _bottomPad = -3;
	int _topPad = -3;

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "SaveHUpperLeft";
	String _upperCenter = "SaveHUpperCenter";
	String _upperRight = "SaveHUpperRight";
	String _midLeft = "SaveHMidLeft";
	String _midCenter = "SaveHMidCenter";
	String _midRight = "SaveHMidRight";
	String _lowerLeft = "SaveHLowerLeft";
	String _lowerCenter = "SaveHLowerCenter";
	String _lowerRight = "SaveHLowerRight";
}

Dialog confirmDelete : "MessageBox.rsc"
{
	ElementDescription _rootElement = "MessageBox.rsc:main";
	ElementOverride _override
	[
		{ String _name = "text";		ElementDescription _element = "textConfirmDelete";	}
		{ String _name = "buttonOk";		}	// hide ok
		{ String _name = "buttonCancel";	}	// hide cancel
		
	]
}

Dialog confirmLoad : "MessageBox.rsc"
{
	ElementDescription _rootElement = "MessageBox.rsc:main";
	ElementOverride _override
	[
		{ String _name = "text";		ElementDescription _element = "textConfirmLoad";	}
		{ String _name = "buttonOk";		}	// hide ok
		{ String _name = "buttonCancel";	}	// hide cancel
		
	]
}

Dialog confirmSave : "MessageBox.rsc"
{
	ElementDescription _rootElement = "MessageBox.rsc:main";
	ElementOverride _override
	[
		{ String _name = "text";		ElementDescription _element = "textConfirmSave";	}
		{ String _name = "buttonOk";		}	// hide ok
		{ String _name = "buttonCancel";	}	// hide cancel
		
	]
}

TextDescription textConfirmDelete : "MessageBox.rsc:text"
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ConfirmDelete";
}

TextDescription textConfirmSave : "MessageBox.rsc:text"
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ConfirmSave";
}

TextDescription textConfirmLoad : "MessageBox.rsc:text"
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ConfirmLoad";
}

Dialog modsMissing : "MessageBox.rsc"
{
	ElementDescription _rootElement = "MessageBox.rsc:main";
	ElementOverride _override
	[
		{ String _name = "text";		ElementDescription _element = "textModsMissing";	}
		{ String _name = "buttonOk";		}	// hide ok
		{ String _name = "buttonCancel";	}	// hide cancel
		
	]
}

Dialog modsOutOfDate : "MessageBox.rsc"
{
	ElementDescription _rootElement = "MessageBox.rsc:main";
	ElementOverride _override
	[
		{ String _name = "text";		ElementDescription _element = "textModsOutOfDate";	}
		{ String _name = "buttonOk";		}	// hide ok
		{ String _name = "buttonCancel";	}	// hide cancel
		
	]
}
	
Dialog modsVersion : "MessageBox.rsc"
{
	ElementDescription _rootElement = "MessageBox.rsc:main";
	ElementOverride _override
	[
		{ String _name = "text";		ElementDescription _element = "textModsVersion";	}
		{ String _name = "buttonOk";		}	// hide ok
		{ String _name = "buttonCancel";	}	// hide cancel
		
	]
}

Dialog modsChanged : "MessageBox.rsc"
{
	ElementDescription _rootElement = "MessageBox.rsc:main";
	ElementOverride _override
	[
		{ String _name = "text";		ElementDescription _element = "textModsChanged";	}
		{ String _name = "buttonOk";		}	// hide ok
		{ String _name = "buttonCancel";	}	// hide cancel
		
	]
}
		
TextDescription textModsMissing : "MessageBox.rsc:text"
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModMissing";
}

TextDescription textModsOutOfDate : "MessageBox.rsc:text"
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModOutOfDate";
}

TextDescription textModsVersion : "MessageBox.rsc:text"
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModDifferentVersion";
}

TextDescription textModsChanged : "MessageBox.rsc:text"
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "ModChanged";
}
