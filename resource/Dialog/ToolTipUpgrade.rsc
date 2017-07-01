Dialog resource
{
	ElementDescription _rootElement = "main";
	
	int _drawLevel = 2;
	
	ElementController _controllers
	[
		{	ObjectType _type = BuildRequirementUI;	}
	]
}

GroupDescription main
{
	Alignment _alignment = TopLeft;
	ElementDescription _elements
	[
		"SharedElements.rsc:toolTipBorder",
		"content",
	]
}

LayoutDescription content
{
	int _leftPad = 3;
	int _rightPad = 3;
	int _topPad = 3;
	int _bottomPad = 3;

	LayoutItem _elements
	[
		{
			String _name = "image";
			ElementDescription _element = "ToolTipToolBar.rsc:imageIcon";
			LayoutHorizontal _xLayout = LeftToLeft;
			LayoutVertical _yLayout = TopToTop;
		}
		{
			String _name = "title";
			ElementDescription _element = "ToolTipToolBar.rsc:textTitle";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "image"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "image"; int _yOffset = 0;
		}
		{
			String _name = "build0";
			ElementDescription _element = "ToolTipToolBar.rsc:labelBuild0";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "tip"; int _xOffset = 0;
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "tip"; int _yOffset = 0;
		}
		{
			String _name = "build1";
			ElementDescription _element = "ToolTipToolBar.rsc:labelBuild1";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "build0"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "build0"; 
		}
		{
			String _name = "build2";
			ElementDescription _element = "ToolTipToolBar.rsc:labelBuild2";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "build1"; int _xOffset = 4;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "build1"; 
		}
		{
			String _name = "buildmulti";
			ElementDescription _element = "ToolTipToolBar.rsc:labelBuildMulti";
			LayoutHorizontal _xLayout = LeftToRight; String _xAnchorTo = "build2"; int _xOffset = 3;
			LayoutVertical _yLayout = TopToTop; String _yAnchorTo = "build2"; int _yOffset = 3;
		}
		{
			String _name = "tip";
			ElementDescription _element = "ToolTipToolBar.rsc:textToolTip";
			LayoutHorizontal _xLayout = LeftToLeft; String _xAnchorTo = "image"; 
			LayoutVertical _yLayout = TopToBottom; String _yAnchorTo = "image"; int _yOffset = 4;
		}
	]
}
