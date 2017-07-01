Dialog resource
{
	Flags _flags = PauseGame | Modal | FirstDraw;
 
	ElementDescription _rootElement = "main";

	External _references
	[
		"StringTable.rsc:multiSample",
		"StringTable.rsc:textureFilter",
		"StringTable.rsc:shadowResolution",
		"StringTable.rsc:shadowDetail",
		"StringTable.rsc:autoSave",
		"Options.rsc:inputBind"
		"Options.rsc:inputBound"
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
			String _name = "tab";
			ElementDescription _element = "tabOptions";
			LayoutHorizontal _xLayout = LeftToLeft;
			LayoutVertical _yLayout = TopToTop;
		}
		{
			ElementDescription _element = "labelTitle";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "tab";
			LayoutVertical _yLayout = TopToTop; int _yOffset = 4;
		}
		{
			String _name = "ok";
			ElementDescription _element = "SharedElements.rsc:buttonOk";
			LayoutHorizontal _xLayout = RightToRight; String _xAnchorTo = "tab";
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "tab"; int _yOffset = 4;
		}
		{
			String _name = "apply";
			ElementDescription _element = "SharedElements.rsc:buttonApply";
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "ok"; int _xOffset = -4;
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "tab"; int _yOffset = 4;
		}
		{
			String _name = "cancel";
			ElementDescription _element = "SharedElements.rsc:buttonCancel";
			LayoutHorizontal _xLayout = RightToLeft; String _xAnchorTo = "apply"; int _xOffset = -4;
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "tab"; int _yOffset = 4;
		}
	]
}

TabDescription tabOptions
{
	ElementDescription _outerBorderTop = "SharedElements.rsc:tabBorderTop";
	ElementDescription _outerBorderBottom = "SharedElements.rsc:tabBorderBottom";
	ElementDescription _innerBorder = "SharedElements.rsc:raisedBorder";

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _connectStart = "TabStart";
	String _connectMid = "TabMid";
	String _connectEnd = "TabEnd";

	int _elementPad = 4;

	Tab _tabs
	[
		{ 
			ElementDescription _button = "buttonGame";	
			ElementDescription _content = "gameOptions";
		}
		{ 
			ElementDescription _button = "buttonGraphics";	
			ElementDescription _content = "graphicsOptions";
		}
		{ 
			ElementDescription _button = "buttonSound";	
			ElementDescription _content = "soundOptions";
		}
		{ 
			ElementDescription _button = "buttonInput";	
			ElementDescription _content = "inputOptions";
		}
	]
}

ButtonDescription buttonGraphics : "SharedElements.rsc:raisedButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "labelGraphics";
}

ButtonDescription buttonSound : "SharedElements.rsc:raisedButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "labelSound";
}

ButtonDescription buttonInput : "SharedElements.rsc:raisedButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "labelInput";
}

ButtonDescription buttonGame : "SharedElements.rsc:raisedButton"
{
	Alignment _alignment = MidCenter;
	ElementDescription _content = "labelGame";
}

LabelDescription labelOptions 
{
	Alignment _alignment = MidCenter;

	int _bottomPad = 5;
	int _leftPad = 5;
	int _rightPad = 5;
	int _topPad = 5;

	int _minWidth = 40;
	int _minHeight = 40;

	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";

	int _spacing = 2;
	LabelPosition _labelPosition = TextBottom;
	Alignment _textAlignment = MidCenter;
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
	LabelPosition _labelPosition = TextLeft;
	Alignment _textAlignment = MidLeft;

	String _text = "Options";
	String _spriteName = "Options";
}

LabelDescription labelGraphics : "labelOptions"
{
	String _text = "Graphics";
	String _spriteName = "OptionsGraphics";
}

LabelDescription labelSound : "labelOptions"
{
	String _text = "Sound";
	String _spriteName = "OptionsSound";
}

LabelDescription labelInput : "labelOptions"
{
	String _text = "Input";
	String _spriteName = "OptionsInput";
}

LabelDescription labelGame : "labelOptions"
{
	String _text = "Game";
	String _spriteName = "OptionsGame";
}

RibbonDescription graphicsOptions
{
	bool _vertical = true;
	ElementDescription _elements
	[
		"graphicsOptionsLong",
		"graphicsOptionsShort",
	]
}

TableDescription graphicsOptionsLong
{
	int _leftPad = 6;
	int _topPad = 4;
	int _rightPad = 2;
	int _bottomPad = 0;

	int _width = 2;
	int _height = 2;

	TableItem _items
	[
		{ int _x = 0; int _y = 0; ElementDescription _element = "textRenderer"; }
		{ int _x = 0; int _y = 1; ElementDescription _element = "textAdapter"; }

		{ int _x = 1; int _y = 0; ElementDescription _element = "comboRenderer"; }
		{ int _x = 1; int _y = 1; ElementDescription _element = "comboAdapter"; }
	]
}


TableDescription graphicsOptionsShort
{
	int _leftPad = 6;
	int _topPad = 0;
	int _rightPad = 2;
	int _bottomPad = 4;

	int _width = 2;
	int _height = 9;

	TableItem _items
	[
		{ int _x = 0; int _y = 0; ElementDescription _element = "textResolution"; }
		{ int _x = 0; int _y = 1; ElementDescription _element = "textRefresh"; }
		{ int _x = 0; int _y = 2; ElementDescription _element = "textVSync"; }
		{ int _x = 0; int _y = 3; ElementDescription _element = "textFullscreen"; }
		{ int _x = 0; int _y = 4; ElementDescription _element = "textAntialias"; }
		{ int _x = 0; int _y = 5; ElementDescription _element = "textFilter"; }
		{ int _x = 0; int _y = 6; ElementDescription _element = "textShadowResolution"; }
		{ int _x = 0; int _y = 7; ElementDescription _element = "textShadowQuality"; }
		{ int _x = 0; int _y = 8; ElementDescription _element = "textReflectionQuality"; }

		{ int _x = 1; int _y = 0; ElementDescription _element = "comboResolution"; }
		{ int _x = 1; int _y = 1; ElementDescription _element = "comboRefresh"; }
		{ int _x = 1; int _y = 2; ElementDescription _element = "checkVSync"; }
		{ int _x = 1; int _y = 3; ElementDescription _element = "checkFullscreen"; }
		{ int _x = 1; int _y = 4; ElementDescription _element = "comboAntialias"; }
		{ int _x = 1; int _y = 5; ElementDescription _element = "comboFilter"; }
		{ int _x = 1; int _y = 6; ElementDescription _element = "comboShadowResolution"; }
		{ int _x = 1; int _y = 7; ElementDescription _element = "comboShadowQuality"; }		
		{ int _x = 1; int _y = 8; ElementDescription _element = "comboReflectionQuality"; }		
	]
}

TextDescription textGraphicsOption
{
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	int _minWidth = 215;
	Color _color = 0xFFC0C0C0;
}

ComboDescription comboGraphics : "SharedElements.rsc:textCombo"
{
	int _minWidth = 190;
	int _bottomPad = 3;
}

TextDescription textGraphicsOptionLong
{
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	int _minWidth = 110;
	Color _color = 0xFFC0C0C0;
}

ComboDescription comboGraphicsLong : "SharedElements.rsc:textCombo"
{
	int _minWidth = 295;
	int _bottomPad = 3;
}

CheckDescription checkGraphics : "SharedElements.rsc:checkSimple"
{
	int _bottomPad = 3;
}

TextDescription textRenderer : "textGraphicsOptionLong" {	String _text = "Renderer"; }
TextDescription textAdapter : "textGraphicsOptionLong" {	String _text = "Adapter"; }
TextDescription textResolution : "textGraphicsOption" {	String _text = "Resolution"; }
TextDescription textRefresh : "textGraphicsOption" {	String _text = "Refresh"; }
TextDescription textVSync : "textGraphicsOption" {	String _text = "VSync"; }
TextDescription textFullscreen : "textGraphicsOption" {	String _text = "Fullscreen"; }
TextDescription textAntialias : "textGraphicsOption" {	String _text = "Antialiasing"; }
TextDescription textFilter : "textGraphicsOption" {	String _text = "TextureFilter"; }
TextDescription textShadowResolution : "textGraphicsOption" {	String _text = "ShadowResolution"; }
TextDescription textShadowQuality : "textGraphicsOption" {	String _text = "ShadowQuality"; }
TextDescription textReflectionQuality : "textGraphicsOption" {	String _text = "ReflectionQuality"; }

CheckDescription checkVSync : "checkGraphics" { }
CheckDescription checkFullscreen : "checkGraphics" { }
ComboDescription comboRenderer : "comboGraphicsLong" { }
ComboDescription comboAdapter : "comboGraphicsLong" { }
ComboDescription comboRefresh : "comboGraphics" { }
ComboDescription comboResolution : "comboGraphics" { }
ComboDescription comboAntialias : "comboGraphics" { }
ComboDescription comboFilter : "comboGraphics" { }
ComboDescription comboShadowResolution : "comboGraphics" { StringTable _initialData = "StringTable.rsc:shadowResolution"; }
ComboDescription comboShadowQuality : "comboGraphics" { StringTable _initialData = "StringTable.rsc:shadowDetail"; }
ComboDescription comboReflectionQuality : "comboGraphics" { StringTable _initialData = "StringTable.rsc:reflectionQuality"; }

ContainerDescription inputOptions
{
	Flags _flags = ExtendWidth;
	Alignment _alignment = TopLeft;

	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;

	int _width = 405;
	int _height = 318;
	int _scrollSpacing = 4;

	bool _allowShrinkHeight = true;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "inputRibbon";
}

RibbonDescription inputRibbon
{
	int _cellPad = 2;
	bool _vertical = true;
	ElementDescription _elements
	[
		"inputParams"
		"inputList"
	]
}

TableDescription inputParams
{
	int _leftPad = 1;
	int _topPad = 1;
	int _rightPad = 1;

	int _width = 2;
	int _height = 2;

	TableItem _items
	[
		{ int _x = 0; int _y = 0; ElementDescription _element = "textSoftwareMouse"; }
		{ int _x = 1; int _y = 0; ElementDescription _element = "checkSoftwareMouse"; }

		{ int _x = 0; int _y = 1; ElementDescription _element = "textMouseClip"; }
		{ int _x = 1; int _y = 1; ElementDescription _element = "checkMouseClip"; }
	]
}

TextDescription textSoftwareMouse : "textGraphicsOption" {	String _text = "SoftwareMouse";  int _minWidth = 188; }
TextDescription textMouseClip : "textGameOption" { String _text = "GameMouseClip";  int _minWidth = 188; }
CheckDescription checkSoftwareMouse : "checkGraphics" { }


TableDescription inputList
{
	int _leftPad = 1;
	int _rightPad = 1;
	int _bottomPad = 1;

	int _width = 3;
	int _height = 45;

	TableItem _items
	[
		{ int _x = 0; int _y = -1; ElementDescription _element = "textInputNameGroup"; }
		{ int _x = 1; int _y = -1; ElementDescription _element = "buttonInputPrimary"; }
		{ int _x = 2; int _y = -1; ElementDescription _element = "buttonInputSecondary"; }
	]
}

GroupDescription textInputNameGroup
{
	int _rightPad = 3;
	int _bottomPad = 3;
	ElementDescription _elements
	[
		"SharedElements.rsc:flatButtonDisabledBorder",
		"textInputName"
	]
}

TextDescription textInputName
{
	int _minWidth = 180;
	int _bottomPad = 1;
	int _topPad = 1;
	int _leftPad = 4;
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:gameKeys";
	String _text = "Cancel";
	Color _color = 0xFFC0C0C0;
}

TextDescription textInputKey
{
	int _minWidth = 94;
	int _bottomPad = 4;
	int _topPad = 4;
	int _leftPad = 6;

	Alignment _alignment = MidCenter;
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:keyNames";
	String _text = "Keyboard0";
}


ButtonDescription buttonInputPrimary : "SharedElements.rsc:borderButton"
{
	ElementDescription _content = "textInputKey";
	int _bottomPad = 3;
	int _rightPad = 3;
}

ButtonDescription buttonInputSecondary : "SharedElements.rsc:borderButton"
{
	ElementDescription _content = "textInputKey";
	int _bottomPad = 3;
	int _rightPad = 3;
}

Dialog inputBind : "MessageBox.rsc"
{
	ElementDescription _rootElement = "MessageBox.rsc:main";
	ElementOverride _override
	[
		{ String _name = "text";		ElementDescription _element = "inputBindText";	}
		{ String _name = "buttonYes";	ElementDescription _element = "buttonYes";	}
		{ String _name = "buttonNo";	}	// hide no
		{ String _name = "buttonOk";	}	// hide ok
		
	]
}

Dialog inputBound : "MessageBox.rsc"
{
	ElementDescription _rootElement = "MessageBox.rsc:main";
	ElementOverride _override
	[
		{ String _name = "text";			ElementDescription _element = "inputBoundText";	}
		{ String _name = "buttonCancel";	} // hide cancel
		{ String _name = "buttonOk";		} // hide ok
	]
}

TextDescription inputBindText : "MessageBox.rsc:text"
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "Bind";
}

TextDescription inputBoundText : "MessageBox.rsc:text"
{
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "AlreadyBound";
}

ButtonDescription buttonYes : "SharedElements.rsc:borderButton" { ElementDescription _content = "buttonUnbindText"; }
TextDescription buttonUnbindText : "SharedElements.rsc:commonButtonText" 
{ 
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	String _text = "Unbind"; 
}

TableDescription soundOptions
{
	int _leftPad = 6;
	int _topPad = 4;
	int _rightPad = 2;
	int _bottomPad = 4;

	Alignment _alignment = TopLeft;

	int _width = 2;
	int _height = 4;

	TableItem _items
	[
		{ int _x = 0; int _y = 0; ElementDescription _element = "textUIVolume"; }
		{ int _x = 0; int _y = 1; ElementDescription _element = "textMusicVolume"; }
		{ int _x = 0; int _y = 2; ElementDescription _element = "textEffectVolume"; }
		{ int _x = 0; int _y = 3; ElementDescription _element = "textAmbientVolume"; }

		{ int _x = 1; int _y = 0; ElementDescription _element = "sliderUI"; }
		{ int _x = 1; int _y = 1; ElementDescription _element = "sliderMusic"; }
		{ int _x = 1; int _y = 2; ElementDescription _element = "sliderEffect"; }
		{ int _x = 1; int _y = 3; ElementDescription _element = "sliderAmbient"; }
	]
}

SliderDescription VolumeSlider : "SharedElements.rsc:slider"
{
	int _bottomPad = 2;
	int _minWidth = 252;
	ElementDescription _number = "number";
}

NumberDescription number
{
	Alignment _alignment = TopLeft;

	int _topPad = 0;
	int _leftPad = 2;
	int _rightPad = 2;
	Font _font = "Font\FontSmall.rsc";
	NumberType _numberType = Integer;
	int _ivalue = 0;
}

TextDescription textAudioOption
{
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	int _minWidth = 150;
	Color _color = 0xFFC0C0C0;
}

TextDescription textUIVolume : "textAudioOption" { String _text = "VolumeUI"; }
TextDescription textMusicVolume : "textAudioOption" { String _text = "VolumeMusic"; }
TextDescription textEffectVolume : "textAudioOption" { String _text = "VolumeEffect"; }
TextDescription textAmbientVolume : "textAudioOption" { String _text = "VolumeAmbient"; }

SliderDescription sliderUI : "VolumeSlider" { }
SliderDescription sliderMusic : "VolumeSlider" { }
SliderDescription sliderEffect : "VolumeSlider" { }
SliderDescription sliderAmbient : "VolumeSlider" { }

ContainerDescription gameOptions
{
	Flags _flags = ExtendWidth;
	Alignment _alignment = TopLeft;

	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;

	int _width = 405;
	int _height = 318;
	int _scrollSpacing = 4;

	bool _allowShrinkHeight = false;

	ElementDescription _verticalScroll = "SharedElements.rsc:verticalScrollbar";
	ElementDescription _content = "gameOptionsTable";
}

TableDescription gameOptionsTable
{
	int _leftPad = 6;
	int _topPad = 4;
	int _rightPad = 2;
	int _bottomPad = 4;

	Alignment _alignment = TopLeft;

	int _width = 2;
	int _height = 11;

	TableItem _items
	[
		{ int _x = 0; int _y = 0; ElementDescription _element = "textEdgeScroll"; }
	//	{ int _x = 0; int _y = 1; ElementDescription _element = "textMouseClip"; }
		{ int _x = 0; int _y = 2; ElementDescription _element = "textAutoslow"; }
		{ int _x = 0; int _y = 3; ElementDescription _element = "textShowCelsius"; }
		{ int _x = 0; int _y = 4; ElementDescription _element = "textShowWeather"; }
		{ int _x = 0; int _y = 5; ElementDescription _element = "textStatusIconEnable"; }
		{ int _x = 0; int _y = 6; ElementDescription _element = "textAutopause"; }
		{ int _x = 0; int _y = 7; ElementDescription _element = "textAutosave"; }
		{ int _x = 0; int _y = 8; ElementDescription _element = "textStatusIconOpacity"; }
		{ int _x = 0; int _y = 9; ElementDescription _element = "textStatusIconScale"; }
		{ int _x = 0; int _y = 10; ElementDescription _element = "textUIScale"; }
		

		{ int _x = 1; int _y = 0; ElementDescription _element = "checkEdgeScroll"; }
	//	{ int _x = 1; int _y = 1; ElementDescription _element = "checkMouseClip"; }
		{ int _x = 1; int _y = 2; ElementDescription _element = "checkAutoslow"; }
		{ int _x = 1; int _y = 3; ElementDescription _element = "checkShowCelsius"; }
		{ int _x = 1; int _y = 4; ElementDescription _element = "checkShowWeather"; }
		{ int _x = 1; int _y = 5; ElementDescription _element = "checkStatusIcon"; }
		{ int _x = 1; int _y = 6; ElementDescription _element = "checkAutopause"; }
		{ int _x = 1; int _y = 7; ElementDescription _element = "comboAutosave"; }
		{ int _x = 1; int _y = 8; ElementDescription _element = "sliderStatusIcon"; }
		{ int _x = 1; int _y = 9; ElementDescription _element = "sliderStatusIconScale"; }
		{ int _x = 1; int _y = 10; ElementDescription _element = "sliderUIScale"; }
		
	]
}

TextDescription textGameOption
{
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:mainMenu";
	int _minWidth = 200;
	Color _color = 0xFFC0C0C0;
}

TextDescription textAutosave : "textGameOption" { String _text = "GameAutoSave"; }
TextDescription textUIScale : "textGameOption" { String _text = "GameUIScale"; }
TextDescription textStatusIconEnable : "textGameOption" { String _text = "GameStatusIconEnable"; }
TextDescription textStatusIconOpacity : "textGameOption" { String _text = "GameStatusIconOpacity"; }
TextDescription textStatusIconScale : "textGameOption" { String _text = "GameStatusIconScale"; }
TextDescription textEdgeScroll : "textGameOption" { String _text = "GameUseEdgeScroll"; }
TextDescription textShowCelsius : "textGameOption" { String _text = "GameShowCelsius"; }
TextDescription textShowWeather : "textGameOption" { String _text = "GameShowWeather"; }
TextDescription textAutoslow : "textGameOption" { String _text = "GameAutoslow"; }
TextDescription textAutopause : "textGameOption" { String _text = "GameAutopause"; }

SliderDescription sliderUIScale : "SharedElements.rsc:slider"
{
	int _bottomPad = 2;
	int _minWidth = 180;
	ElementDescription _number = "number";
}

ComboDescription comboAutosave : "SharedElements.rsc:textCombo"
{
	int _minWidth = 180;
	int _bottomPad = 3;
}

CheckDescription checkStatusIcon : "SharedElements.rsc:checkSimple"
{
	int _bottomPad = 2;
}

SliderDescription sliderStatusIcon : "SharedElements.rsc:slider"
{
	int _bottomPad = 2;
	int _minWidth = 180;
	ElementDescription _number = "number";
}

SliderDescription sliderStatusIconScale : "SharedElements.rsc:slider"
{
	int _bottomPad = 2;
	int _minWidth = 180;
	ElementDescription _number = "number";
}

CheckDescription checkEdgeScroll : "SharedElements.rsc:checkSimple"
{
	int _bottomPad = 2;
}

CheckDescription checkShowCelsius : "SharedElements.rsc:checkSimple"
{
	int _bottomPad = 2;
}

CheckDescription checkShowWeather : "SharedElements.rsc:checkSimple"
{
	int _bottomPad = 2;
}

CheckDescription checkAutoslow : "SharedElements.rsc:checkSimple"
{
	int _bottomPad = 2;
}

CheckDescription checkAutopause : "SharedElements.rsc:checkSimple"
{
	int _bottomPad = 2;
}

CheckDescription checkMouseClip : "SharedElements.rsc:checkSimple"
{
	int _bottomPad = 2;
}