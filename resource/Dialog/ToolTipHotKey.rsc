Dialog resource
{
	ElementDescription _rootElement = "main";

	int _drawLevel = 2;

	ElementController _controllers
	[
		{
			ObjectType _type = HotKeyToolTipUI;
		}
	]
}

GroupDescription main
{
	Alignment _alignment = TopLeft;
	ElementDescription _elements
	[
		"SharedElements.rsc:toolTipBorder",
		textToolTip,
	]
}

TextDescription textToolTip : "ToolTip.rsc:textToolTip"
{
	StringTable _stringTable = "StringTable.rsc:toolBar";
	String _text = "TipAndHotKey";
}
