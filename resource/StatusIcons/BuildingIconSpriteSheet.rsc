SpriteSheet resource
{
	String _materialName = "StatusIcons/BuildingIconSpriteSheetMaterial.rsc";
	String _imageName = "Build/BuildingIconSpriteSheet.png";
	int _imageWidth = 256;
	int _imageHeight = 128;
	bool _padForFiltering = true;
		
	Sprite _sprites
	[ 
		{	String _name = "BuildPaused";				String _source = "StatusIcons/Sprite/BuildingPause.png";	}
		{	String _name = "WorkDisabled";				String _source = "StatusIcons/Sprite/BuildingWorkStopped.png";	}
		{	String _name = "LimitProduction";			String _source = "StatusIcons/Sprite/BuildingLimit.png";	}
		{	String _name = "WorkUnavailable";			String _source = "StatusIcons/Sprite/BuildingNoWork.png";	}
		{	String _name = "WorkersUnavailable";		String _source = "StatusIcons/Sprite/BuildingNoWorkers.png";	}
		{	String _name = "BuildDestroy";				String _source = "StatusIcons/Sprite/BuildingDestroy.png";	}
		{	String _name = "BuildingNoFood";			String _source = "StatusIcons/Sprite/CitizenFood.png"; 	}
		{	String _name = "BuildingNoFuel";			String _source = "StatusIcons/Sprite/CitizenCold.png";	}


		{	String _name = "BuildPausedSmall";			String _source = "StatusIcons/Sprite/Small/BuildingPause.png";	}
		{	String _name = "WorkDisabledSmall";			String _source = "StatusIcons/Sprite/Small/BuildingWorkStopped.png";	}
		{	String _name = "LimitProductionSmall";		String _source = "StatusIcons/Sprite/Small/BuildingLimit.png";	}
		{	String _name = "WorkUnavailableSmall";		String _source = "StatusIcons/Sprite/Small/BuildingNoWork.png";	}
		{	String _name = "WorkersUnavailableSmall";	String _source = "StatusIcons/Sprite/Small/BuildingNoWorkers.png";	}
		{	String _name = "BuildDestroySmall";			String _source = "StatusIcons/Sprite/Small/BuildingDestroy.png";	}
		{	String _name = "BuildingNoFoodSmall";		String _source = "StatusIcons/Sprite/Small/CitizenFood.png"; 	}
		{	String _name = "BuildingNoFuelSmall";		String _source = "StatusIcons/Sprite/Small/CitizenCold.png";	}
	]
}