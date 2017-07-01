ButtonDescription upgradeButton : "SharedElements.rsc:borderButton"
{
	int _topPad = 4;
	int _rightPad = 2;
	Alignment _alignment = TopRight;
	ElementDescription _content = "imageUpgrade";

	Dialog _toolTipDialog = "ToolTipUpgrade.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:objects";
	String _toolTipText = "WoodHomeUpgradeTip";

}

ImageDescription imageUpgrade
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
	int _topPad = 4;

	int _width = 16;
	int _height = 16;
}
