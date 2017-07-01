RibbonDescription icons
{
	Alignment _alignment = BottomRight;
	int _cellPad = 2;
	int _rightPad = 0;
	ElementDescription _elements
	[
		"imageStatusPaused",
		"imageStatusStopped",
		"imageStatusLimit",
		"imageStatusNoWork",
		"imageStatusNoWorkers",
		"imageStatusDestroy",
	]
}

ImageDescription imageStatus
{
	int _width = 20;
	int _height = 20;
	SpriteSheet _spriteSheet = "StatusIcons/BuildingIconSpriteSheet.rsc";

	int _topPad = 1;
	int _bottomPad = 1;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
}

ImageDescription imageStatusPaused : "imageStatus" { String _spriteName = "BuildPausedSmall"; String _toolTipText = "BuildingStatusPausedTip"; }
ImageDescription imageStatusStopped : "imageStatus" { String _spriteName = "WorkDisabledSmall"; String _toolTipText = "BuildingStatusDisabledTip"; }
ImageDescription imageStatusLimit : "imageStatus" { String _spriteName = "LimitProductionSmall"; String _toolTipText = "BuildingStatusLimitTip"; }
ImageDescription imageStatusNoWork : "imageStatus" { String _spriteName = "WorkUnavailableSmall"; String _toolTipText = "BuildingStatusNoWorkTip"; }
ImageDescription imageStatusNoWorkers : "imageStatus" { String _spriteName = "WorkersUnavailableSmall"; String _toolTipText = "BuildingStatusNoWorkersTip"; }
ImageDescription imageStatusDestroy : "imageStatus" { String _spriteName = "BuildDestroySmall"; String _toolTipText = "BuildingStatusDestroyTip"; }
