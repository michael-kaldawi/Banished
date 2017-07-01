SpriteSheet resource
{
	String _materialName = "SpriteSheetMaterial.rsc";
	String _imageName = "Build/SpriteSheet.png";
	int _imageWidth = 1024;
	int _imageHeight = 1024;
	bool _padForFiltering = true;
	
	Sprite _sprites
	[ 
		// **** common and utility **** //
		{ String _name = "White";				String _source = "Sprite/Misc/White.png";						int _x = 0;		int _y = 0;		int _width = 1;		int _height = 1; }
		{ String _name = "Logo";				String _source = "Sprite/Misc/Logo.png"; }

		// **** buttons **** //
		{ String _name = "GoalFail";			String _source = "Sprite/ButtonIcons/GoalFail.png";		}
		{ String _name = "GoalSuccess";			String _source = "Sprite/ButtonIcons/GoalSuccess.png";	}

		{ String _name = "SmallPlay";			String _source = "Sprite/ButtonIcons/Play.png";			}
		{ String _name = "SmallPause";			String _source = "Sprite/ButtonIcons/Pause.png";		}

		{ String _name = "ArrowDown";			String _source = "Sprite/ButtonIcons/ArrowDown.png";	}
		{ String _name = "ArrowLeft";			String _source = "Sprite/ButtonIcons/ArrowLeft.png";	}
		{ String _name = "ArrowRight";			String _source = "Sprite/ButtonIcons/ArrowRight.png";	}
		{ String _name = "ArrowRightThin";		String _source = "Sprite/ButtonIcons/ArrowRight.png";	int _x = 4;		int _y = 0;		int _width = 8;		int _height = 16; }
		{ String _name = "ArrowUp";				String _source = "Sprite/ButtonIcons/ArrowUp.png";		}
		{ String _name = "ArrowDownLine";		String _source = "Sprite/ButtonIcons/ArrowDownLine.png";	}
		
		{ String _name = "ArrowDownSmall";		String _source = "Sprite/ButtonIcons/ArrowDownSmall.png";	}
		{ String _name = "ArrowLeftSmall";		String _source = "Sprite/ButtonIcons/ArrowLeftSmall.png";	}
		{ String _name = "ArrowRightSmall";		String _source = "Sprite/ButtonIcons/ArrowRightSmall.png";	}
		{ String _name = "ArrowUpSmall";		String _source = "Sprite/ButtonIcons/ArrowUpSmall.png";		}

		{ String _name = "Lock";				String _source = "Sprite/Misc/Lock.png";		}

		{ String _name = "Search";				String _source = "Sprite/Misc/Search.png";		}
		{ String _name = "Minus";				String _source = "Sprite/ButtonIcons/Minus.png";		}
		{ String _name = "Plus";				String _source = "Sprite/ButtonIcons/Plus.png";		}

		{ String _name = "SimpleCheck";			String _source = "Sprite/ButtonIcons/SimpleCheck.png";	}
		{ String _name = "ToolClose";			String _source = "Sprite/ButtonIcons/Close.png";		}
		{ String _name = "ToolPin";				String _source = "Sprite/ButtonIcons/ButtonPin.png";	}
		{ String _name = "ToolCenter";			String _source = "Sprite/ButtonIcons/ButtonCenter.png";	}

		{ String _name = "GenderFemale";		String _source = "Sprite/ButtonIcons/GenderFemale.png";	}
		{ String _name = "GenderMale";			String _source = "Sprite/ButtonIcons/GenderMale.png";	}

		{ String _name = "StorageTab";			String _source = "Sprite/ButtonIcons/StorageTab.png";	}
		{ String _name = "ResidenceTab";		String _source = "Sprite/ButtonIcons/ResidenceTab.png";	}
		{ String _name = "LimitsTab";			String _source = "Sprite/ButtonIcons/LimitsTab.png";	}
		{ String _name = "GraphsTab";			String _source = "Sprite/ButtonIcons/GraphsTab.png";	}
		{ String _name = "OverviewTab";			String _source = "Sprite/ButtonIcons/OverviewTab.png";	}
		{ String _name = "ProductionTab";		String _source = "Sprite/ButtonIcons/ProductionTab.png";	}
		{ String _name = "AgriTab";				String _source = "Sprite/ButtonIcons/AgriTab.png";	}
		{ String _name = "TradeTab";			String _source = "Sprite/ButtonIcons/TradeTab.png";	}
		{ String _name = "OrderTab";			String _source = "Sprite/ButtonIcons/OrderTab.png";	}
		{ String _name = "PurchaseTab";			String _source = "Sprite/ButtonIcons/PurchaseTab.png";	}
		{ String _name = "NomadTab";			String _source = "Sprite/ButtonIcons/NomadTab.png";	}

		// **** controls **** //
		{ String _name = "DialogUpperLeft";		String _source = "Sprite/Borders/Dialog.png";		int _x = 0;		int _y = 0;		int _width = 8;		int _height = 8;	 }
		{ String _name = "DialogUpperCenter";	String _source = "Sprite/Borders/Dialog.png";		int _x = 8;		int _y = 0;		int _width = 1;		int _height = 8;	 }
		{ String _name = "DialogUpperRight";	String _source = "Sprite/Borders/Dialog.png";		int _x = 12;	int _y = 0;		int _width = 8;		int _height = 8;	 }
		{ String _name = "DialogMidLeft";		String _source = "Sprite/Borders/Dialog.png";		int _x = 0;		int _y = 8;		int _width = 8;		int _height = 1;	 }
		{ String _name = "DialogMidCenter";		String _source = "Sprite/Borders/Dialog.png";		int _x = 8;		int _y = 8;		int _width = 8;		int _height = 1;	 }
		{ String _name = "DialogMidRight";		String _source = "Sprite/Borders/Dialog.png";		int _x = 12;	int _y = 8;		int _width = 8;		int _height = 1;	 }
		{ String _name = "DialogLowerLeft";		String _source = "Sprite/Borders/Dialog.png";		int _x = 0;		int _y = 13;	int _width = 8;		int _height = 8;	 }
		{ String _name = "DialogLowerCenter";	String _source = "Sprite/Borders/Dialog.png";		int _x = 8;		int _y = 13;	int _width = 1;		int _height = 8;	 }
		{ String _name = "DialogLowerRight";	String _source = "Sprite/Borders/Dialog.png";		int _x = 12;	int _y = 13;	int _width = 8;		int _height = 8;	 }

		{ String _name = "ToolTipUpperLeft";	String _source = "Sprite/Borders/ToolTip.png";		int _x = 0;		int _y = 0;		int _width = 3;		int _height = 3;	 }
		{ String _name = "ToolTipUpperCenter";	String _source = "Sprite/Borders/ToolTip.png";		int _x = 3;		int _y = 0;		int _width = 2;		int _height = 3;	 }
		{ String _name = "ToolTipUpperRight";	String _source = "Sprite/Borders/ToolTip.png";		int _x = 5;		int _y = 0;		int _width = 3;		int _height = 3;	 }
		{ String _name = "ToolTipMidLeft";		String _source = "Sprite/Borders/ToolTip.png";		int _x = 0;		int _y = 3;		int _width = 3;		int _height = 2;	 }
		{ String _name = "ToolTipMidCenter";	String _source = "Sprite/Borders/ToolTip.png";		int _x = 3;		int _y = 3;		int _width = 3;		int _height = 2;	 }
		{ String _name = "ToolTipMidRight";		String _source = "Sprite/Borders/ToolTip.png";		int _x = 5;		int _y = 3;		int _width = 3;		int _height = 2;	 }
		{ String _name = "ToolTipLowerLeft";	String _source = "Sprite/Borders/ToolTip.png";		int _x = 0;		int _y = 5;		int _width = 3;		int _height = 3;	 }
		{ String _name = "ToolTipLowerCenter";	String _source = "Sprite/Borders/ToolTip.png";		int _x = 3;		int _y = 5;		int _width = 2;		int _height = 3;	 }
		{ String _name = "ToolTipLowerRight";	String _source = "Sprite/Borders/ToolTip.png";		int _x = 5;		int _y = 5;		int _width = 3;		int _height = 3;	 }

		{ String _name = "SaveUpperLeft";		String _source = "Sprite/Borders/Save.png";			int _x = 0;		int _y = 0;		int _width = 9;		int _height = 9;	 }
		{ String _name = "SaveUpperCenter";		String _source = "Sprite/Borders/Save.png";			int _x = 10;	int _y = 0;		int _width = 1;		int _height = 9;	 }
		{ String _name = "SaveUpperRight";		String _source = "Sprite/Borders/Save.png";			int _x = 171;	int _y = 0;		int _width = 9;		int _height = 9;	 }
		{ String _name = "SaveMidLeft";			String _source = "Sprite/Borders/Save.png";			int _x = 0;		int _y = 10;	int _width = 9;		int _height = 1;	 }
		{ String _name = "SaveMidCenter";		String _source = "Sprite/Borders/Save.png";			int _x = 10;	int _y = 10;	int _width = 9;		int _height = 1;	 }
		{ String _name = "SaveMidRight";		String _source = "Sprite/Borders/Save.png";			int _x = 171;	int _y = 10;	int _width = 9;		int _height = 1;	 }
		{ String _name = "SaveLowerLeft";		String _source = "Sprite/Borders/Save.png";			int _x = 0;		int _y = 127;	int _width = 9;		int _height = 9;	 }
		{ String _name = "SaveLowerCenter";		String _source = "Sprite/Borders/Save.png";			int _x = 10;	int _y = 127;	int _width = 1;		int _height = 9;	 }
		{ String _name = "SaveLowerRight";		String _source = "Sprite/Borders/Save.png";			int _x = 171;	int _y = 127;	int _width = 9;		int _height = 9;	 }

		{ String _name = "SaveHUpperLeft";		String _source = "Sprite/Borders/SaveHighlight.png";	int _x = 0;		int _y = 0;		int _width = 9;		int _height = 9;	 }
		{ String _name = "SaveHUpperCenter";	String _source = "Sprite/Borders/SaveHighlight.png";	int _x = 10;	int _y = 0;		int _width = 1;		int _height = 9;	 }
		{ String _name = "SaveHUpperRight";		String _source = "Sprite/Borders/SaveHighlight.png";	int _x = 171;	int _y = 0;		int _width = 9;		int _height = 9;	 }
		{ String _name = "SaveHMidLeft";		String _source = "Sprite/Borders/SaveHighlight.png";	int _x = 0;		int _y = 10;	int _width = 9;		int _height = 1;	 }
		{ String _name = "SaveHMidCenter";		String _source = "Sprite/Borders/SaveHighlight.png";	int _x = 10;	int _y = 10;	int _width = 9;		int _height = 1;	 }
		{ String _name = "SaveHMidRight";		String _source = "Sprite/Borders/SaveHighlight.png";	int _x = 171;	int _y = 10;	int _width = 9;		int _height = 1;	 }
		{ String _name = "SaveHLowerLeft";		String _source = "Sprite/Borders/SaveHighlight.png";	int _x = 0;		int _y = 127;	int _width = 9;		int _height = 9;	 }
		{ String _name = "SaveHLowerCenter";	String _source = "Sprite/Borders/SaveHighlight.png";	int _x = 10;	int _y = 127;	int _width = 1;		int _height = 9;	 }
		{ String _name = "SaveHLowerRight";		String _source = "Sprite/Borders/SaveHighlight.png";	int _x = 171;	int _y = 127;	int _width = 9;		int _height = 9;	 }


		{ String _name = "DarkUpperLeft";		String _source = "Sprite/Borders/Dark.png";			int _x = 0;		int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "DarkUpperCenter";		String _source = "Sprite/Borders/Dark.png";			int _x = 4;		int _y = 0;		int _width = 1;		int _height = 4;	 }
		{ String _name = "DarkUpperRight";		String _source = "Sprite/Borders/Dark.png";			int _x = 12;	int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "DarkMidLeft";			String _source = "Sprite/Borders/Dark.png";			int _x = 0;		int _y = 4;		int _width = 4;		int _height = 1;	 }
		{ String _name = "DarkMidCenter";		String _source = "Sprite/Borders/Dark.png";			int _x = 4;		int _y = 4;		int _width = 4;		int _height = 1;	 }
		{ String _name = "DarkMidRight";		String _source = "Sprite/Borders/Dark.png";			int _x = 12;	int _y = 4;		int _width = 4;		int _height = 1;	 }
		{ String _name = "DarkLowerLeft";		String _source = "Sprite/Borders/Dark.png";			int _x = 0;		int _y = 12;	int _width = 4;		int _height = 4;	 }
		{ String _name = "DarkLowerCenter";		String _source = "Sprite/Borders/Dark.png";			int _x = 4;		int _y = 12;	int _width = 1;		int _height = 4;	 }
		{ String _name = "DarkLowerRight";		String _source = "Sprite/Borders/Dark.png";			int _x = 12;	int _y = 12;	int _width = 4;		int _height = 4;	 }
		
		{ String _name = "RaisedUpperLeft";		String _source = "Sprite/Borders/Raised.png";		int _x = 0;		int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "RaisedUpperCenter";	String _source = "Sprite/Borders/Raised.png";		int _x = 4;		int _y = 0;		int _width = 1;		int _height = 4;	 }
		{ String _name = "RaisedUpperRight";	String _source = "Sprite/Borders/Raised.png";		int _x = 12;	int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "RaisedMidLeft";		String _source = "Sprite/Borders/Raised.png";		int _x = 0;		int _y = 4;		int _width = 4;		int _height = 1;	 }
		{ String _name = "RaisedMidCenter";		String _source = "Sprite/Borders/Raised.png";		int _x = 4;		int _y = 4;		int _width = 4;		int _height = 1;	 }
		{ String _name = "RaisedMidRight";		String _source = "Sprite/Borders/Raised.png";		int _x = 12;	int _y = 4;		int _width = 4;		int _height = 1;	 }
		{ String _name = "RaisedLowerLeft";		String _source = "Sprite/Borders/Raised.png";		int _x = 0;		int _y = 12;	int _width = 4;		int _height = 4;	 }
		{ String _name = "RaisedLowerCenter";	String _source = "Sprite/Borders/Raised.png";		int _x = 4;		int _y = 12;	int _width = 1;		int _height = 4;	 }
		{ String _name = "RaisedLowerRight";	String _source = "Sprite/Borders/Raised.png";		int _x = 12;	int _y = 12;	int _width = 4;		int _height = 4;	 }

		{ String _name = "SunkenUpperLeft";		String _source = "Sprite/Borders/Sunken.png";		int _x = 0;		int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "SunkenUpperCenter";	String _source = "Sprite/Borders/Sunken.png";		int _x = 4;		int _y = 0;		int _width = 1;		int _height = 4;	 }
		{ String _name = "SunkenUpperRight";	String _source = "Sprite/Borders/Sunken.png";		int _x = 12;	int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "SunkenMidLeft";		String _source = "Sprite/Borders/Sunken.png";		int _x = 0;		int _y = 4;		int _width = 4;		int _height = 1;	 }
		{ String _name = "SunkenMidCenter";		String _source = "Sprite/Borders/Sunken.png";		int _x = 4;		int _y = 4;		int _width = 4;		int _height = 1;	 }
		{ String _name = "SunkenMidRight";		String _source = "Sprite/Borders/Sunken.png";		int _x = 12;	int _y = 4;		int _width = 4;		int _height = 1;	 }
		{ String _name = "SunkenLowerLeft";		String _source = "Sprite/Borders/Sunken.png";		int _x = 0;		int _y = 12;	int _width = 4;		int _height = 4;	 }
		{ String _name = "SunkenLowerCenter";	String _source = "Sprite/Borders/Sunken.png";		int _x = 4;		int _y = 12;	int _width = 1;		int _height = 4;	 }
		{ String _name = "SunkenLowerRight";	String _source = "Sprite/Borders/Sunken.png";		int _x = 12;	int _y = 12;	int _width = 4;		int _height = 4;	 }

		{ String _name = "SunkenMidLeftTab";	String _source = "Sprite/Borders/Sunken.png";		int _x = 0;		int _y = 4;		int _width = 4;		int _height = 4;	 }

		{ String _name = "TabStart";			String _source = "Sprite/Borders/Tab.png";			int _x = 0;		int _y = 0;		int _width = 1;		int _height = 10;	 }
		{ String _name = "TabMid";				String _source = "Sprite/Borders/Tab.png";			int _x = 1;		int _y = 0;		int _width = 1;		int _height = 10;	 }
		{ String _name = "TabEnd";				String _source = "Sprite/Borders/Tab.png";			int _x = 3;		int _y = 0;		int _width = 1;		int _height = 10;	 }
			
		{ String _name = "ButtonUpperLeftEn";	String _source = "Sprite/Borders/Button.png";		int _x = 0;		int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonUpperCenterEn";	String _source = "Sprite/Borders/Button.png";		int _x = 4;		int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonUpperRightEn";	String _source = "Sprite/Borders/Button.png";		int _x = 12;	int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonMidLeftEn";		String _source = "Sprite/Borders/Button.png";		int _x = 0;		int _y = 4;		int _width = 4;		int _height = 16;	 }
		{ String _name = "ButtonMidCenterEn";	String _source = "Sprite/Borders/Button.png";		int _x = 4;		int _y = 4;		int _width = 4;		int _height = 16;	 }
		{ String _name = "ButtonMidRightEn";	String _source = "Sprite/Borders/Button.png";		int _x = 12;	int _y = 4;		int _width = 4;		int _height = 16;	 }
		{ String _name = "ButtonLowerLeftEn";	String _source = "Sprite/Borders/Button.png";		int _x = 0;		int _y = 20;	int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonLowerCenterEn";	String _source = "Sprite/Borders/Button.png";		int _x = 4;		int _y = 20;	int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonLowerRightEn";	String _source = "Sprite/Borders/Button.png";		int _x = 12;	int _y = 20;	int _width = 4;		int _height = 4;	 }

		{ String _name = "ButtonUpperLeftDi";	String _source = "Sprite/Borders/Button.png";		int _x = 20;	int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonUpperCenterDi";	String _source = "Sprite/Borders/Button.png";		int _x = 24;	int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonUpperRightDi";	String _source = "Sprite/Borders/Button.png";		int _x = 32;	int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonMidLeftDi";		String _source = "Sprite/Borders/Button.png";		int _x = 20;	int _y = 4;		int _width = 4;		int _height = 16;	 }
		{ String _name = "ButtonMidCenterDi";	String _source = "Sprite/Borders/Button.png";		int _x = 24;	int _y = 4;		int _width = 4;		int _height = 16;	 }
		{ String _name = "ButtonMidRightDi";	String _source = "Sprite/Borders/Button.png";		int _x = 32;	int _y = 4;		int _width = 4;		int _height = 16;	 }
		{ String _name = "ButtonLowerLeftDi";	String _source = "Sprite/Borders/Button.png";		int _x = 20;	int _y = 20;	int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonLowerCenterDi";	String _source = "Sprite/Borders/Button.png";		int _x = 24;	int _y = 20;	int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonLowerRightDi";	String _source = "Sprite/Borders/Button.png";		int _x = 32;	int _y = 20;	int _width = 4;		int _height = 4;	 }

		{ String _name = "ButtonUpperLeftHi";	String _source = "Sprite/Borders/Button.png";		int _x = 40;	int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonUpperCenterHi";	String _source = "Sprite/Borders/Button.png";		int _x = 44;	int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonUpperRightHi";	String _source = "Sprite/Borders/Button.png";		int _x = 52;	int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonMidLeftHi";		String _source = "Sprite/Borders/Button.png";		int _x = 40;	int _y = 4;		int _width = 4;		int _height = 16;	 }
		{ String _name = "ButtonMidCenterHi";	String _source = "Sprite/Borders/Button.png";		int _x = 44;	int _y = 4;		int _width = 4;		int _height = 16;	 }
		{ String _name = "ButtonMidRightHi";	String _source = "Sprite/Borders/Button.png";		int _x = 52;	int _y = 4;		int _width = 4;		int _height = 16;	 }
		{ String _name = "ButtonLowerLeftHi";	String _source = "Sprite/Borders/Button.png";		int _x = 40;	int _y = 20;	int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonLowerCenterHi";	String _source = "Sprite/Borders/Button.png";		int _x = 44;	int _y = 20;	int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonLowerRightHi";	String _source = "Sprite/Borders/Button.png";		int _x = 52;	int _y = 20;	int _width = 4;		int _height = 4;	 }

		{ String _name = "ButtonUpperLeftPr";	String _source = "Sprite/Borders/Button.png";		int _x = 60;	int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonUpperCenterPr";	String _source = "Sprite/Borders/Button.png";		int _x = 64;	int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonUpperRightPr";	String _source = "Sprite/Borders/Button.png";		int _x = 72;	int _y = 0;		int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonMidLeftPr";		String _source = "Sprite/Borders/Button.png";		int _x = 60;	int _y = 4;		int _width = 4;		int _height = 16;	 }
		{ String _name = "ButtonMidCenterPr";	String _source = "Sprite/Borders/Button.png";		int _x = 64;	int _y = 4;		int _width = 4;		int _height = 16;	 }
		{ String _name = "ButtonMidRightPr";	String _source = "Sprite/Borders/Button.png";		int _x = 72;	int _y = 4;		int _width = 4;		int _height = 16;	 }
		{ String _name = "ButtonLowerLeftPr";	String _source = "Sprite/Borders/Button.png";		int _x = 60;	int _y = 20;	int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonLowerCenterPr";	String _source = "Sprite/Borders/Button.png";		int _x = 64;	int _y = 20;	int _width = 4;		int _height = 4;	 }
		{ String _name = "ButtonLowerRightPr";	String _source = "Sprite/Borders/Button.png";		int _x = 72;	int _y = 20;	int _width = 4;		int _height = 4;	 }

		{ String _name = "HScrollBarStart";		String _source = "Sprite/Scroll/HScrollBar.png";		int _x = 0;		int _y = 0;		int _width = 7;		int _height = 12;	 }
		{ String _name = "HScrollBarMid";		String _source = "Sprite/Scroll/HScrollBar.png";		int _x = 7;		int _y = 0;		int _width = 2;		int _height = 12;	 }
		{ String _name = "HScrollBarEnd";		String _source = "Sprite/Scroll/HScrollBar.png";		int _x = 9;		int _y = 0;		int _width = 7;		int _height = 12;	 }
		
		{ String _name = "HScrollHighStart";	String _source = "Sprite/Scroll/HScrollHigh.png";	int _x = 0;		int _y = 0;		int _width = 7;		int _height = 12;	 }
		{ String _name = "HScrollHighMid";		String _source = "Sprite/Scroll/HScrollHigh.png";	int _x = 7;		int _y = 0;		int _width = 2;		int _height = 12;	 }
		{ String _name = "HScrollHighEnd";		String _source = "Sprite/Scroll/HScrollHigh.png";	int _x = 9;		int _y = 0;		int _width = 7;		int _height = 12;	 }

		{ String _name = "HScrollBackStart";	String _source = "Sprite/Scroll/HScrollBack.png";	int _x = 0;		int _y = 0;		int _width = 7;		int _height = 12;	 }
		{ String _name = "HScrollBackMid";		String _source = "Sprite/Scroll/HScrollBack.png";	int _x = 7;		int _y = 0;		int _width = 2;		int _height = 12;	 }
		{ String _name = "HScrollBackEnd";		String _source = "Sprite/Scroll/HScrollBack.png";	int _x = 9;		int _y = 0;		int _width = 7;		int _height = 12;	 }

		{ String _name = "VScrollBarStart";		String _source = "Sprite/Scroll/VScrollBar.png";		int _x = 0;		int _y = 0;		int _width = 12;	int _height = 7;	 }
		{ String _name = "VScrollBarMid";		String _source = "Sprite/Scroll/VScrollBar.png";		int _x = 0;		int _y = 7;		int _width = 12;	int _height = 2;	 }
		{ String _name = "VScrollBarEnd";		String _source = "Sprite/Scroll/VScrollBar.png";		int _x = 0;		int _y = 9;		int _width = 12;	int _height = 7;	 }
		
		{ String _name = "VScrollHighStart";	String _source = "Sprite/Scroll/VScrollHigh.png";	int _x = 0;		int _y = 0;		int _width = 12;	int _height = 7;	 }
		{ String _name = "VScrollHighMid";		String _source = "Sprite/Scroll/VScrollHigh.png";	int _x = 0;		int _y = 7;		int _width = 12;	int _height = 2;	 }
		{ String _name = "VScrollHighEnd";		String _source = "Sprite/Scroll/VScrollHigh.png";	int _x = 0;		int _y = 9;		int _width = 12;	int _height = 7;	 }

		{ String _name = "VScrollBackStart";	String _source = "Sprite/Scroll/VScrollBack.png";	int _x = 0;		int _y = 0;		int _width = 12;	int _height = 7;	 }
		{ String _name = "VScrollBackMid";		String _source = "Sprite/Scroll/VScrollBack.png";	int _x = 0;		int _y = 7;		int _width = 12;	int _height = 2;	 }
		{ String _name = "VScrollBackEnd";		String _source = "Sprite/Scroll/VScrollBack.png";	int _x = 0;		int _y = 9;		int _width = 12;	int _height = 7;	 }

		{ String _name = "ProgressBackgroundStart";	String _source = "Sprite/Progress/ScrollBackground.png";		int _x = 0;		int _y = 0; int _width = 4;	int _height = 16;	}
		{ String _name = "ProgressBackgroundMid";	String _source = "Sprite/Progress/ScrollBackground.png";		int _x = 4;		int _y = 0; int _width = 1;	int _height = 16;	}
		{ String _name = "ProgressBackgroundEnd";	String _source = "Sprite/Progress/ScrollBackground.png";		int _x = 12;	int _y = 0; int _width = 4;	int _height = 16;	}

		{ String _name = "ProgressStart";		String _source = "Sprite/Progress/Scroll.png";		int _x = 0;		int _y = 0;		int _width = 6;		int _height = 16;	}
		{ String _name = "ProgressMid";			String _source = "Sprite/Progress/Scroll.png";		int _x = 6;		int _y = 0;		int _width = 1;		int _height = 16;	}
		{ String _name = "ProgressEnd";			String _source = "Sprite/Progress/Scroll.png";		int _x = 10;	int _y = 0;		int _width = 6;		int _height = 16;	}

		{ String _name = "SliderStart";			String _source = "Sprite/Slider/SliderBackground.png";		int _x = 0;		int _y = 0;		int _width = 6;		int _height = 16;	}
		{ String _name = "SliderMid";			String _source = "Sprite/Slider/SliderBackground.png";		int _x = 6;		int _y = 0;		int _width = 1;		int _height = 16;	}
		{ String _name = "SliderEnd";			String _source = "Sprite/Slider/SliderBackground.png";		int _x = 10;	int _y = 0;		int _width = 6;		int _height = 16;	}

		{ String _name = "Slider";				String _source = "Sprite/Slider/Slider.png";	}
		{ String _name = "SliderHighlight";		String _source = "Sprite/Slider/SliderHighlight.png";	}

		{ String _name = "KeyUpperLeft";		String _source = "Sprite/Borders/Key.png";		int _x = 0;		int _y = 0;		int _width = 12;	int _height = 12;	 }
		{ String _name = "KeyUpperCenter";		String _source = "Sprite/Borders/Key.png";		int _x = 12;	int _y = 0;		int _width = 24;	int _height = 12;	 }
		{ String _name = "KeyUpperRight";		String _source = "Sprite/Borders/Key.png";		int _x = 36;	int _y = 0;		int _width = 12;	int _height = 12;	 }
		{ String _name = "KeyMidLeft";			String _source = "Sprite/Borders/Key.png";		int _x = 0;		int _y = 12;	int _width = 12;	int _height = 24;	 }
		{ String _name = "KeyMidCenter";		String _source = "Sprite/Borders/Key.png";		int _x = 12;	int _y = 12;	int _width = 1;		int _height = 1;	 }
		{ String _name = "KeyMidRight";			String _source = "Sprite/Borders/Key.png";		int _x = 36;	int _y = 12;	int _width = 12;	int _height = 24;	 }
		{ String _name = "KeyLowerLeft";		String _source = "Sprite/Borders/Key.png";		int _x = 0;		int _y = 36;	int _width = 12;	int _height = 12;	 }
		{ String _name = "KeyLowerCenter";		String _source = "Sprite/Borders/Key.png";		int _x = 12;	int _y = 36;	int _width = 24;	int _height = 12;	 }
		{ String _name = "KeyLowerRight";		String _source = "Sprite/Borders/Key.png";		int _x = 36;	int _y = 36;	int _width = 12;	int _height = 12;	 }

		{ String _name = "GlowUpperLeft";		String _source = "Sprite/Borders/Glow.png";		int _x = 0;		int _y = 0;		int _width = 14;	int _height = 14;	 }
		{ String _name = "GlowUpperCenter";		String _source = "Sprite/Borders/Glow.png";		int _x = 14;	int _y = 0;		int _width = 36;	int _height = 14;	 }
		{ String _name = "GlowUpperRight";		String _source = "Sprite/Borders/Glow.png";		int _x = 50;	int _y = 0;		int _width = 14;	int _height = 14;	 }
		{ String _name = "GlowMidLeft";			String _source = "Sprite/Borders/Glow.png";		int _x = 0;		int _y = 14;	int _width = 14;	int _height = 36;	 }
		{ String _name = "GlowMidCenter";		String _source = "Sprite/Borders/Glow.png";		int _x = 14;	int _y = 14;	int _width = 1;		int _height = 1;	 }
		{ String _name = "GlowMidRight";		String _source = "Sprite/Borders/Glow.png";		int _x = 50;	int _y = 14;	int _width = 14;	int _height = 36;	 }
		{ String _name = "GlowLowerLeft";		String _source = "Sprite/Borders/Glow.png";		int _x = 0;		int _y = 50;	int _width = 14;	int _height = 14;	 }
		{ String _name = "GlowLowerCenter";		String _source = "Sprite/Borders/Glow.png";		int _x = 14;	int _y = 50;	int _width = 36;	int _height = 14;	 }
		{ String _name = "GlowLowerRight";		String _source = "Sprite/Borders/Glow.png";		int _x = 50;	int _y = 50;	int _width = 14;	int _height = 14;	 }

		{ String _name = "TutorialArrow";		String _source = "Sprite/Misc/Arrow.png";			 }
		{ String _name = "BulletSmall";			String _source = "Sprite/Misc/BulletSmall.png";			 }
		{ String _name = "BulletMedium";		String _source = "Sprite/Misc/BulletMedium.png";			 }
		{ String _name = "Bullet";				String _source = "Sprite/Misc/Bullet.png";			 }
		{ String _name = "BulletLarge";			String _source = "Sprite/Misc/BulletLarge.png";			 }

		// **** buttons **** //
		{ String _name = "NewGame";				String _source = "Sprite/ButtonIcons/NewGame.png";	}
		{ String _name = "LoadGame";			String _source = "Sprite/ButtonIcons/LoadGame.png";	}
		{ String _name = "Options";				String _source = "Sprite/ButtonIcons/Options.png";	}
		{ String _name = "QuitGame";			String _source = "Sprite/ButtonIcons/QuitGame.png";	}
		{ String _name = "SaveGame";			String _source = "Sprite/ButtonIcons/SaveGame.png";	}
		{ String _name = "ResumeGame";			String _source = "Sprite/ButtonIcons/ResumeGame.png"; }
		{ String _name = "ReturnMenu";			String _source = "Sprite/ButtonIcons/ReturnMenu.png"; }

		{ String _name = "Achievement";			String _source = "Sprite/ButtonIcons/Achievement.png";	}
		{ String _name = "Mod";					String _source = "Sprite/ButtonIcons/Scenario.png";	}
		{ String _name = "Goal";				String _source = "Sprite/ButtonIcons/Goal.png";	}
		{ String _name = "Map";					String _source = "Sprite/ButtonIcons/Map.png";	}
		{ String _name = "Tutorial";			String _source = "Sprite/ButtonIcons/Tutorial.png";	}

		{ String _name = "OptionsGraphics";		String _source = "Sprite/ButtonIcons/OptionsGraphics.png"; }
		{ String _name = "OptionsSound";		String _source = "Sprite/ButtonIcons/OptionsSound.png"; }
		{ String _name = "OptionsInput";		String _source = "Sprite/ButtonIcons/OptionsInput.png"; }
		{ String _name = "OptionsGame";			String _source = "Sprite/ButtonIcons/OptionsGame.png"; }
		
		// **** saving and loading **** //
		{ String _name = "SmallLoadingCircle";	String _source = "Sprite/SaveLoad/SmallLoadingCircle.png";	}
		{ String _name = "MediumLoadingCircle";	String _source = "Sprite/SaveLoad/MediumLoadingCircle.png"; }
		{ String _name = "LoadingCircle";		String _source = "Sprite/SaveLoad/LoadingCircle.png";	}
		{ String _name = "SaveLoadEmpty";		String _source = "Sprite/SaveLoad/SaveLoadEmpty.png";	}
		{ String _name = "SaveLoadCorrupt";		String _source = "Sprite/SaveLoad/Corrupt.png";	}

		// **** toolbar **** //
		{ String _name = "ToolbarHousing";		String _source = "Sprite/Toolbar/ToolbarHousing.png"; }
		{ String _name = "ToolbarTransport";	String _source = "Sprite/Toolbar/ToolbarTransport.png"; }
		{ String _name = "ToolbarStorage";		String _source = "Sprite/Toolbar/ToolbarStorage.png"; }
		{ String _name = "ToolbarService";		String _source = "Sprite/Toolbar/ToolbarService.png"; }
		{ String _name = "ToolbarFood";			String _source = "Sprite/Toolbar/ToolbarFood.png"; }
		{ String _name = "ToolbarResource";		String _source = "Sprite/Toolbar/ToolbarResource.png"; }
		{ String _name = "ToolbarRemove";		String _source = "Sprite/Toolbar/ToolbarRemove.png"; }
		{ String _name = "ToolbarSpeed";		String _source = "Sprite/Toolbar/ToolbarSpeed.png"; }
		{ String _name = "ToolbarTools";		String _source = "Sprite/Toolbar/ToolbarTools.png"; }
		{ String _name = "ToolbarOptions";		String _source = "Sprite/Toolbar/ToolbarOptions.png"; }
		
		{ String _name = "ToolbarFast";			String _source = "Sprite/Toolbar/ToolFast.png"; }
		{ String _name = "ToolbarPause";		String _source = "Sprite/Toolbar/ToolPause.png"; }
		{ String _name = "ToolbarPlay";			String _source = "Sprite/Toolbar/ToolPlay.png"; }
		{ String _name = "ToolbarSlow";			String _source = "Sprite/Toolbar/ToolSlow.png"; }

		{ String _name = "BuildRoad";			String _source = "Sprite/Toolbar/BuildRoad.png"; }
		{ String _name = "BuildStoneRoad";		String _source = "Sprite/Toolbar/BuildStoneRoad.png"; }
		{ String _name = "BuildTunnel";			String _source = "Sprite/Toolbar/BuildTunnel.png"; }	
		{ String _name = "BuildBridge";			String _source = "Sprite/Toolbar/BuildBridge.png"; }	
		{ String _name = "BuildWell";			String _source = "Sprite/Toolbar/BuildWell.png"; }	
		{ String _name = "BuildField";			String _source = "Sprite/Toolbar/BuildField.png"; }
		{ String _name = "BuildOrchard";		String _source = "Sprite/Toolbar/BuildOrchard.png"; }
		{ String _name = "BuildPasture";		String _source = "Sprite/Toolbar/BuildPasture.png"; }		
		{ String _name = "BuildStorageYard";	String _source = "Sprite/Toolbar/BuildStorageYard.png"; }		
		{ String _name = "BuildStorageBarn";	String _source = "Sprite/Toolbar/BuildStorageBarn.png"; }		
		{ String _name = "BuildHouse";			String _source = "Sprite/Toolbar/BuildHouse.png"; }		
		{ String _name = "BuildStoneHouse";		String _source = "Sprite/Toolbar/BuildStoneHouse.png"; }		
		{ String _name = "BuildCutterYard";		String _source = "Sprite/Toolbar/BuildCutterYard.png"; }			
		{ String _name = "BuildForesterLodge";	String _source = "Sprite/Toolbar/BuildForesterLodge.png"; }	
		{ String _name = "BuildHunterLodge";	String _source = "Sprite/Toolbar/BuildHunterLodge.png"; }			
		{ String _name = "BuildFishermansDock";	String _source = "Sprite/Toolbar/BuildFishermansDock.png"; }
		{ String _name = "BuildToolMaker";		String _source = "Sprite/Toolbar/BuildToolMaker.png"; }	
		{ String _name = "BuildTownHall";		String _source = "Sprite/Toolbar/BuildTownHall.png"; }	
		{ String _name = "BuildDoctor";			String _source = "Sprite/Toolbar/BuildDoctor.png"; }	
		{ String _name = "BuildHerbalist";		String _source = "Sprite/Toolbar/BuildHerbalist.png"; }	
		{ String _name = "BuildMarket";			String _source = "Sprite/Toolbar/BuildMarket.png"; }	
		{ String _name = "BuildTradingPost";	String _source = "Sprite/Toolbar/BuildTradingPost.png"; }
		{ String _name = "BuildIronMine";		String _source = "Sprite/Toolbar/BuildIronMine.png"; }
		{ String _name = "BuildQuarry";			String _source = "Sprite/Toolbar/BuildQuarry.png"; }
		{ String _name = "BuildGathererShelter";String _source = "Sprite/Toolbar/BuildGatherer.png"; }
		{ String _name = "BuildTailor";			String _source = "Sprite/Toolbar/BuildTailor.png"; }
		{ String _name = "BuildSchoolHouse";	String _source = "Sprite/Toolbar/BuildSchool.png"; }
		{ String _name = "BuildHostel";			String _source = "Sprite/Toolbar/BuildHostel.png"; }
		{ String _name = "BuildChapel";			String _source = "Sprite/Toolbar/BuildChapel.png"; }
		{ String _name = "BuildBathHouse";		String _source = "Sprite/Toolbar/BuildBathHouse.png"; }
		{ String _name = "BuildTavern";			String _source = "Sprite/Toolbar/BuildTavern.png"; }
		{ String _name = "BuildCemetery";		String _source = "Sprite/Toolbar/BuildCemetery.png"; }

		{ String _name = "ClearBuildings";		String _source = "Sprite/Toolbar/ClearBuilding.png"; }
		{ String _name = "ClearResources";		String _source = "Sprite/Toolbar/ClearResources.png"; }
		{ String _name = "ClearCancel";			String _source = "Sprite/Toolbar/ClearCancel.png"; }
		{ String _name = "ClearPriority";		String _source = "Sprite/Toolbar/ClearPriority.png"; }
		{ String _name = "ClearAll";			String _source = "Sprite/Toolbar/ClearAll.png"; }					
		{ String _name = "ClearTree";			String _source = "Sprite/Toolbar/ClearTree.png"; }		
		{ String _name = "ClearMushroom";		String _source = "Sprite/Toolbar/ClearMushroom.png"; }		
		{ String _name = "ClearWild";			String _source = "Sprite/Toolbar/ClearWild.png"; }		
		{ String _name = "ClearStone";			String _source = "Sprite/Toolbar/ClearStone.png"; }		
		{ String _name = "ClearRoad";			String _source = "Sprite/Toolbar/ClearRoad.png"; }		
		{ String _name = "ClearIron";			String _source = "Sprite/Toolbar/ClearIron.png"; }	

		{ String _name = "ToolStatusBar";		String _source = "Sprite/Toolbar/ToolStatusBar.png"; }
		{ String _name = "ToolEventLog";		String _source = "Sprite/Toolbar/ToolEventLog.png"; }
		{ String _name = "ToolLimit";			String _source = "Sprite/Toolbar/ToolLimit.png"; }
		{ String _name = "ToolProfession";		String _source = "Sprite/Toolbar/ToolProfession.png"; }
		{ String _name = "ToolMap";				String _source = "Sprite/Toolbar/ToolMap.png"; }
		{ String _name = "ToolPath";			String _source = "Sprite/Toolbar/ToolPath.png"; }
		{ String _name = "ToolCamera";			String _source = "Sprite/Toolbar/ToolCamera.png"; }
		{ String _name = "ToolTownHall";		String _source = "Sprite/Toolbar/ToolTownHall.png"; }
		{ String _name = "ToolHelp";			String _source = "Sprite/Toolbar/ToolHelp.png"; }
		{ String _name = "ToolDebug";			String _source = "Sprite/Toolbar/ToolDebug.png"; }
		{ String _name = "ToolNoise";			String _source = "Sprite/Toolbar/ToolNoise.png"; }
		{ String _name = "ToolCapture";			String _source = "Sprite/Toolbar/ToolCapture.png"; }
		

		{ String _name = "ToolCamera0";			String _source = "Sprite/Toolbar/ToolCamera0.png"; }
		{ String _name = "ToolCamera1";			String _source = "Sprite/Toolbar/ToolCamera1.png"; }
		{ String _name = "ToolCamera2";			String _source = "Sprite/Toolbar/ToolCamera2.png"; }
		{ String _name = "ToolCamera3";			String _source = "Sprite/Toolbar/ToolCamera3.png"; }
		{ String _name = "ToolCamera4";			String _source = "Sprite/Toolbar/ToolCamera4.png"; }

		// ***** Events ***** 
		{ String _name = "EventIcon0";			String _source = "Sprite/EventIcons/Death.png"; }
		{ String _name = "EventIcon1";			String _source = "Sprite/EventIcons/Sickness.png"; }
		{ String _name = "EventIcon2";			String _source = "Sprite/EventIcons/AreaDisease.png"; }
		{ String _name = "EventIcon3";			String _source = "Sprite/EventIcons/Fire.png"; }
		{ String _name = "EventIcon4";			String _source = "Sprite/EventIcons/Tornado.png"; }

		{ String _name = "EventIcon5";			String _source = "Sprite/EventIcons/Trader.png"; }
		{ String _name = "EventIcon6";			String _source = "Sprite/EventIcons/LowResource.png"; }
		{ String _name = "EventIcon7";			String _source = "Sprite/EventIcons/StorageFull.png"; }
		{ String _name = "EventIcon8";			String _source = "Sprite/EventIcons/Nomad.png"; }
		{ String _name = "EventIcon9";			String _source = "Sprite/EventIcons/Achievement.png"; }
		{ String _name = "EventIcon10";			String _source = "Sprite/EventIcons/Scenario.png"; }
		{ String _name = "EventIcon11";			String _source = "Sprite/EventIcons/Fail.png"; }

		{ String _name = "EventIcon12";			String _source = "Sprite/EventIcons/SuccessLarge.png"; }
		{ String _name = "EventIcon13";			String _source = "Sprite/EventIcons/FailLarge.png"; }
		
		// ***** Event Categories***** 
		{ String _name = "EventDeathOld";		String _source = "Sprite/EventIcons/EventDeathOld.png"; }
		{ String _name = "EventDeath";			String _source = "Sprite/EventIcons/EventDeath.png"; }
		{ String _name = "EventDisaster";		String _source = "Sprite/EventIcons/EventDisaster.png"; }
		{ String _name = "EventStorage";		String _source = "Sprite/EventIcons/EventStorage.png"; }
		{ String _name = "EventTown";			String _source = "Sprite/EventIcons/EventTown.png"; }

		// ***** Professions ***** 
		{ String _name = "ProfessionLaborer";		String _source = "Sprite/ProfessionIcons/Laborer.png"; }
		{ String _name = "ProfessionBuilder";		String _source = "Sprite/ProfessionIcons/Builder.png"; }
		{ String _name = "ProfessionFarmer";		String _source = "Sprite/ProfessionIcons/Farmer.png"; }
		{ String _name = "ProfessionHerdsman";		String _source = "Sprite/ProfessionIcons/Herdsman.png"; }
		{ String _name = "ProfessionGatherer";		String _source = "Sprite/ProfessionIcons/Gatherer.png"; }	
		{ String _name = "ProfessionFisherman";		String _source = "Sprite/ProfessionIcons/Fisherman.png"; }
		{ String _name = "ProfessionHunter";		String _source = "Sprite/ProfessionIcons/Hunter.png"; }
		{ String _name = "ProfessionCutter";		String _source = "Sprite/ProfessionIcons/Cutter.png"; }
		{ String _name = "ProfessionForester";		String _source = "Sprite/ProfessionIcons/Forester.png"; }
		{ String _name = "ProfessionToolMaker";		String _source = "Sprite/ProfessionIcons/ToolMaker.png"; }
		{ String _name = "ProfessionHerbalist";		String _source = "Sprite/ProfessionIcons/Herbalist.png"; }
		{ String _name = "ProfessionBrewer";		String _source = "Sprite/ProfessionIcons/Brewer.png"; }
		{ String _name = "ProfessionTailor";		String _source = "Sprite/ProfessionIcons/Tailor.png"; }
		{ String _name = "ProfessionVendor";		String _source = "Sprite/ProfessionIcons/Vendor.png"; }
		{ String _name = "ProfessionTrader";		String _source = "Sprite/ProfessionIcons/Trader.png"; }
		{ String _name = "ProfessionMiner";			String _source = "Sprite/ProfessionIcons/Miner.png"; }
		{ String _name = "ProfessionStoneCutter";	String _source = "Sprite/ProfessionIcons/StoneCutter.png"; }
		{ String _name = "ProfessionTeacher";		String _source = "Sprite/ProfessionIcons/Teacher.png"; }
		{ String _name = "ProfessionDoctor";		String _source = "Sprite/ProfessionIcons/Doctor.png"; }
		{ String _name = "ProfessionPriest";		String _source = "Sprite/ProfessionIcons/Priest.png"; }

		// ***** Building ******
		{ String _name = "ClearArea";			String _source = "Sprite/ResourceIcons/ClearArea.png"; }
		{ String _name = "BuildArea";			String _source = "Sprite/ResourceIcons/BuildArea.png"; }

		// ***** Dialog Buttons ******
		{ String _name = "CutterYardWork";		String _source = "Sprite/DialogIcons/CutterYardWork.png"; }
		{ String _name = "ForesterCut";			String _source = "Sprite/DialogIcons/ForesterCut.png"; }
		{ String _name = "ForesterPlant";		String _source = "Sprite/DialogIcons/ForesterPlant.png"; }
		{ String _name = "FishWork";			String _source = "Sprite/DialogIcons/FishWork.png"; }
		{ String _name = "ToolMakerWork";		String _source = "Sprite/DialogIcons/ToolMakerWork.png"; }
		{ String _name = "HunterWork";			String _source = "Sprite/DialogIcons/HunterWork.png"; }
		{ String _name = "HerbalistWork";		String _source = "Sprite/DialogIcons/HerbalistWork.png"; }
		{ String _name = "MarketWork";			String _source = "Sprite/DialogIcons/MarketWork.png"; }
		{ String _name = "TradeWork";			String _source = "Sprite/DialogIcons/TradeWork.png"; }
		{ String _name = "PastureWork";			String _source = "Sprite/DialogIcons/PastureWork.png"; }
		{ String _name = "MinerWork";			String _source = "Sprite/DialogIcons/MinerWork.png"; }
		{ String _name = "GathererWork";		String _source = "Sprite/DialogIcons/GathererWork.png"; }
		{ String _name = "SchoolWork";			String _source = "Sprite/DialogIcons/SchoolWork.png"; }
		{ String _name = "DoctorWork";			String _source = "Sprite/DialogIcons/DoctorWork.png"; }
		{ String _name = "TailorWork";			String _source = "Sprite/DialogIcons/TailorWork.png"; }
		{ String _name = "PriestWork";			String _source = "Sprite/DialogIcons/ChapelWork.png"; }
		{ String _name = "TavernWork";			String _source = "Sprite/DialogIcons/TavernWork.png"; }

		{ String _name = "CropFieldHarvest";	String _source = "Sprite/DialogIcons/CropFieldHarvest.png"; }
		{ String _name = "CropFieldAuto";		String _source = "Sprite/DialogIcons/CropFieldWork.png"; }
		{ String _name = "CropFieldSelect";		String _source = "Sprite/DialogIcons/CropFieldSelect.png"; }

		{ String _name = "PastureEmpty";		String _source = "Sprite/DialogIcons/PastureEmpty.png"; }
		{ String _name = "PastureSplit";		String _source = "Sprite/DialogIcons/PastureSplit.png"; }

		{ String _name = "DestroyReclaim";		String _source = "Sprite/DialogIcons/DestroyReclaim.png"; }
		{ String _name = "DestroyDestroy";		String _source = "Sprite/DialogIcons/DestroyReclaim.png"; }

		{ String _name = "ReturnToStorage";		String _source = "Sprite/DialogIcons/ReturnToStorage.png"; }

		{ String _name = "AllowNomad";			String _source = "Sprite/DialogIcons/AllowNomad.png"; }
		{ String _name = "DenyNomad";			String _source = "Sprite/DialogIcons/NomadDeny.png"; }

		{ String _name = "GotoProfession";		String _source = "Sprite/DialogIcons/GotoProfession.png"; }
		{ String _name = "GotoHome";			String _source = "Sprite/DialogIcons/GotoHome.png"; }

		// ***** Image Status *****
		{ String _name = "HeartBorder";			String _source = "Sprite/ImageStatus/HeartBorder.png"; }
		{ String _name = "HeartHalf";			String _source = "Sprite/ImageStatus/HeartHalf.png"; }
		{ String _name = "HeartFilled";			String _source = "Sprite/ImageStatus/HeartFilled.png"; }
		{ String _name = "StarBorder";			String _source = "Sprite/ImageStatus/StarBorder.png"; }
		{ String _name = "StarHalf";			String _source = "Sprite/ImageStatus/StarHalf.png"; }
		{ String _name = "StarFilled";			String _source = "Sprite/ImageStatus/StarFilled.png"; }

		// ***** NaturalResources  ******
		{ String _name = "CropCabbage";			String _source = "Sprite/CreateIcons/CropCabbage.png"; }
		{ String _name = "CropCorn";			String _source = "Sprite/CreateIcons/CropCorn.png"; }
		{ String _name = "CropPotato";			String _source = "Sprite/CreateIcons/CropPotato.png"; }
		{ String _name = "CropSquash";			String _source = "Sprite/CreateIcons/CropSquash.png"; }
		{ String _name = "CropWheat";			String _source = "Sprite/CreateIcons/CropWheat.png"; }
		{ String _name = "CropBean";			String _source = "Sprite/CreateIcons/CropBean.png"; }
		{ String _name = "CropPepper";			String _source = "Sprite/CreateIcons/CropPepper.png"; }
		{ String _name = "CropPumpkin";			String _source = "Sprite/CreateIcons/CropPumpkin.png"; }

		{ String _name = "LivestockChicken";	String _source = "Sprite/CreateIcons/LivestockChicken.png"; }
		{ String _name = "LivestockCow";		String _source = "Sprite/CreateIcons/LivestockCow.png"; }
		{ String _name = "LivestockSheep";		String _source = "Sprite/CreateIcons/LivestockSheep.png"; }

		{ String _name = "FruitApple";			String _source = "Sprite/CreateIcons/FruitApple.png"; }
		{ String _name = "FruitPear";			String _source = "Sprite/CreateIcons/FruitPear.png"; }
		{ String _name = "FruitPlum";			String _source = "Sprite/CreateIcons/FruitPlum.png"; }
		{ String _name = "FruitPeach";			String _source = "Sprite/CreateIcons/FruitPeach.png"; }
		{ String _name = "FruitCherry";			String _source = "Sprite/CreateIcons/FruitCherry.png"; }
		{ String _name = "FruitChestnut";		String _source = "Sprite/CreateIcons/FruitChestnut.png"; }
		{ String _name = "FruitWalnut";			String _source = "Sprite/CreateIcons/FruitWalnut.png"; }
		{ String _name = "FruitPecan";			String _source = "Sprite/CreateIcons/FruitPecan.png"; }

		// **** Status Bar *****
		{ String _name = "TemperatureIcon";		String _source = "Sprite/StatusBar/TemperatureIcon.png"; }
		{ String _name = "AdultIcon";			String _source = "Sprite/StatusBar/AdultIcon.png"; }
		{ String _name = "ChildIcon";			String _source = "Sprite/StatusBar/ChildIcon.png"; }
		{ String _name = "SunnyIcon";			String _source = "Sprite/StatusBar/SunnyIcon.png"; }
		{ String _name = "PartlySunnyIcon";		String _source = "Sprite/StatusBar/PartlySunnyIcon.png"; }
		{ String _name = "CloudyIcon";			String _source = "Sprite/StatusBar/CloudyIcon.png"; }
		{ String _name = "RainIcon";			String _source = "Sprite/StatusBar/RainIcon.png"; }
		{ String _name = "SnowIcon";			String _source = "Sprite/StatusBar/SnowIcon.png"; }

		// ***** Raw Materials *****
		{ String _name = "Log";					String _source = "Sprite/RawMaterial/Log.png";	}
		{ String _name = "Stone";				String _source = "Sprite/RawMaterial/Stone.png"; }
		{ String _name = "Iron";				String _source = "Sprite/RawMaterial/Iron.png"; 	}
		{ String _name = "Coal";				String _source = "Sprite/RawMaterial/Coal.png"; 	}
		{ String _name = "Firewood";			String _source = "Sprite/RawMaterial/Firewood.png"; 	}		
		{ String _name = "Tool";				String _source = "Sprite/RawMaterial/Tool.png";	}			
		{ String _name = "SteelTool";			String _source = "Sprite/RawMaterial/SteelTool.png";	}			
		{ String _name = "Potato";				String _source = "Sprite/RawMaterial/Potato.png"; }	
		{ String _name = "Wheat";				String _source = "Sprite/RawMaterial/Wheat.png"; }	
		{ String _name = "Cabbage";				String _source = "Sprite/RawMaterial/Cabbage.png"; }					
		{ String _name = "Corn";				String _source = "Sprite/RawMaterial/Corn.png"; }					
		{ String _name = "Squash";				String _source = "Sprite/RawMaterial/Squash.png"; }	
		{ String _name = "Bean";				String _source = "Sprite/RawMaterial/Bean.png"; }	
		{ String _name = "Pumpkin";				String _source = "Sprite/RawMaterial/Pumpkin.png"; }	
		{ String _name = "Pepper";				String _source = "Sprite/RawMaterial/Pepper.png"; }	
		{ String _name = "Apple";				String _source = "Sprite/RawMaterial/Apple.png"; }							
		{ String _name = "Pear";				String _source = "Sprite/RawMaterial/Pear.png"; }							
		{ String _name = "Peach";				String _source = "Sprite/RawMaterial/Peach.png"; }							
		{ String _name = "Plum";				String _source = "Sprite/RawMaterial/Plum.png"; }							
		{ String _name = "Cherry";				String _source = "Sprite/RawMaterial/Cherry.png"; }							
		{ String _name = "Pecan";				String _source = "Sprite/RawMaterial/Pecan.png"; }							
		{ String _name = "Walnut";				String _source = "Sprite/RawMaterial/Walnut.png"; }							
		{ String _name = "Chestnut";			String _source = "Sprite/RawMaterial/Chestnut.png"; }							
		{ String _name = "Fish";				String _source = "Sprite/RawMaterial/Fish.png";	}			
		{ String _name = "Chicken";				String _source = "Sprite/RawMaterial/Chicken.png"; }
		{ String _name = "Venison";				String _source = "Sprite/RawMaterial/Venison.png"; }	
		{ String _name = "Beef";				String _source = "Sprite/RawMaterial/Beef.png"; }	
		{ String _name = "Mutton";				String _source = "Sprite/RawMaterial/Mutton.png"; }	
		{ String _name = "Mushroom";			String _source = "Sprite/RawMaterial/Mushroom.png";	}			
		{ String _name = "Onion";				String _source = "Sprite/RawMaterial/Onion.png";	}			
		{ String _name = "Blueberry";			String _source = "Sprite/RawMaterial/Blueberry.png";	}			
		{ String _name = "Root";				String _source = "Sprite/RawMaterial/Root.png";	}			
		{ String _name = "Herb";				String _source = "Sprite/RawMaterial/Herb.png";	}			
		{ String _name = "Egg";					String _source = "Sprite/RawMaterial/Egg.png";	}			
		{ String _name = "Wool";				String _source = "Sprite/RawMaterial/Wool.png";	}			
		{ String _name = "Leather";				String _source = "Sprite/RawMaterial/Leather.png";	}			
		{ String _name = "WinterCoat";			String _source = "Sprite/RawMaterial/WinterCoat.png";	}			
		{ String _name = "WoolCoat";			String _source = "Sprite/RawMaterial/WoolCoat.png";	}			
		{ String _name = "LeatherCoat";			String _source = "Sprite/RawMaterial/LeatherCoat.png";	}			
		{ String _name = "Ale";					String _source = "Sprite/RawMaterial/Ale.png"; }							

		{ String _name = "LogSmall";			String _source = "Sprite/RawMaterial/Small/Log.png";	}
		{ String _name = "StoneSmall";			String _source = "Sprite/RawMaterial/Small/Stone.png"; }
		{ String _name = "IronSmall";			String _source = "Sprite/RawMaterial/Small/Iron.png"; 	}
		{ String _name = "CoalSmall";			String _source = "Sprite/RawMaterial/Small/Coal.png"; 	}
		{ String _name = "FirewoodSmall";		String _source = "Sprite/RawMaterial/Small/Firewood.png"; 	}		
		{ String _name = "ToolSmall";			String _source = "Sprite/RawMaterial/Small/Tool.png";	}			
		{ String _name = "SteelToolSmall";		String _source = "Sprite/RawMaterial/Small/SteelTool.png";	}			
		{ String _name = "PotatoSmall";			String _source = "Sprite/RawMaterial/Small/Potato.png"; }	
		{ String _name = "WheatSmall";			String _source = "Sprite/RawMaterial/Small/Wheat.png"; }	
		{ String _name = "CabbageSmall";		String _source = "Sprite/RawMaterial/Small/Cabbage.png"; }					
		{ String _name = "CornSmall";			String _source = "Sprite/RawMaterial/Small/Corn.png"; }					
		{ String _name = "SquashSmall";			String _source = "Sprite/RawMaterial/Small/Squash.png"; }	
		{ String _name = "BeanSmall";			String _source = "Sprite/RawMaterial/Small/Bean.png"; }	
		{ String _name = "PumpkinSmall";		String _source = "Sprite/RawMaterial/Small/Pumpkin.png"; }	
		{ String _name = "PepperSmall";			String _source = "Sprite/RawMaterial/Small/Pepper.png"; }	
		{ String _name = "AppleSmall";			String _source = "Sprite/RawMaterial/Small/Apple.png"; }							
		{ String _name = "PearSmall";			String _source = "Sprite/RawMaterial/Small/Pear.png"; }							
		{ String _name = "PeachSmall";			String _source = "Sprite/RawMaterial/Small/Peach.png"; }							
		{ String _name = "PlumSmall";			String _source = "Sprite/RawMaterial/Small/Plum.png"; }							
		{ String _name = "CherrySmall";			String _source = "Sprite/RawMaterial/Small/Cherry.png"; }							
		{ String _name = "PecanSmall";			String _source = "Sprite/RawMaterial/Small/Pecan.png"; }							
		{ String _name = "WalnutSmall";			String _source = "Sprite/RawMaterial/Small/Walnut.png"; }							
		{ String _name = "ChestnutSmall";		String _source = "Sprite/RawMaterial/Small/Chestnut.png"; }							
		{ String _name = "FishSmall";			String _source = "Sprite/RawMaterial/Small/Fish.png";	}			
		{ String _name = "ChickenSmall";		String _source = "Sprite/RawMaterial/Small/Chicken.png"; }
		{ String _name = "VenisonSmall";		String _source = "Sprite/RawMaterial/Small/Venison.png"; }	
		{ String _name = "BeefSmall";			String _source = "Sprite/RawMaterial/Small/Beef.png"; }	
		{ String _name = "MuttonSmall";			String _source = "Sprite/RawMaterial/Small/Mutton.png"; }	
		{ String _name = "MushroomSmall";		String _source = "Sprite/RawMaterial/Small/Mushroom.png";	}
		{ String _name = "OnionSmall";			String _source = "Sprite/RawMaterial/Small/Onion.png";	}			
		{ String _name = "BlueberrySmall";		String _source = "Sprite/RawMaterial/Small/Blueberry.png";	}			
		{ String _name = "RootSmall";			String _source = "Sprite/RawMaterial/Small/Root.png";	}			
		{ String _name = "HerbSmall";			String _source = "Sprite/RawMaterial/Small/Herb.png";	}	
		{ String _name = "EggSmall";			String _source = "Sprite/RawMaterial/Small/Egg.png";	}			
		{ String _name = "WoolSmall";			String _source = "Sprite/RawMaterial/Small/Wool.png";	}			
		{ String _name = "LeatherSmall";		String _source = "Sprite/RawMaterial/Small/Leather.png";	}			
		{ String _name = "WinterCoatSmall";		String _source = "Sprite/RawMaterial/Small/WinterCoat.png";	}			
		{ String _name = "WoolCoatSmall";		String _source = "Sprite/RawMaterial/Small/WoolCoat.png";	}			
		{ String _name = "LeatherCoatSmall";	String _source = "Sprite/RawMaterial/Small/LeatherCoat.png";	}		
		{ String _name = "AleSmall";			String _source = "Sprite/RawMaterial/Small/Ale.png"; }							

		{ String _name = "Cows";				String _source = "Sprite/RawMaterial/LivestockCow.png"; }
		{ String _name = "Sheeps";				String _source = "Sprite/RawMaterial/LivestockSheep.png"; }
		{ String _name = "Chickens";			String _source = "Sprite/RawMaterial/LivestockChicken.png"; 	}

		{ String _name = "SeedApple";			String _source = "Sprite/RawMaterial/SeedApple.png"; }
		{ String _name = "SeedPear";			String _source = "Sprite/RawMaterial/SeedPear.png"; }							
		{ String _name = "SeedPeach";			String _source = "Sprite/RawMaterial/SeedPeach.png"; }							
		{ String _name = "SeedPlum";			String _source = "Sprite/RawMaterial/SeedPlum.png"; }							
		{ String _name = "SeedCherry";			String _source = "Sprite/RawMaterial/SeedCherry.png"; }							
		{ String _name = "SeedPecan";			String _source = "Sprite/RawMaterial/SeedPecan.png"; }							
		{ String _name = "SeedWalnut";			String _source = "Sprite/RawMaterial/SeedWalnut.png"; }							
		{ String _name = "SeedChestnut";		String _source = "Sprite/RawMaterial/SeedChestnut.png"; }							

		{ String _name = "SeedCabbage";			String _source = "Sprite/RawMaterial/SeedCabbage.png";	}
		{ String _name = "SeedCorn";			String _source = "Sprite/RawMaterial/SeedCorn.png";	}
		{ String _name = "SeedPotato";			String _source = "Sprite/RawMaterial/SeedPotato.png"; }
		{ String _name = "SeedSquash";			String _source = "Sprite/RawMaterial/SeedSquash.png"; }
		{ String _name = "SeedWheat";			String _source = "Sprite/RawMaterial/SeedWheat.png"; }
		{ String _name = "SeedBean";			String _source = "Sprite/RawMaterial/SeedBean.png"; }
		{ String _name = "SeedPumpkin";			String _source = "Sprite/RawMaterial/SeedPumpkin.png"; }
		{ String _name = "SeedPepper";			String _source = "Sprite/RawMaterial/SeedPepper.png"; }

		{ String _name = "ChickensSmall";		String _source = "Sprite/RawMaterial/Small/LivestockChicken.png"; 	}
		{ String _name = "CowsSmall";			String _source = "Sprite/RawMaterial/Small/LivestockCow.png"; 	}
		{ String _name = "SheepsSmall";			String _source = "Sprite/RawMaterial/Small/LivestockSheep.png"; 	}
		{ String _name = "SeedAppleSmall";		String _source = "Sprite/RawMaterial/Small/SeedApple.png"; }
		{ String _name = "SeedAppleSmall";		String _source = "Sprite/RawMaterial/Small/SeedApple.png"; }
		{ String _name = "SeedPearSmall";		String _source = "Sprite/RawMaterial/Small/SeedPear.png"; }							
		{ String _name = "SeedPeachSmall";		String _source = "Sprite/RawMaterial/Small/SeedPeach.png"; }							
		{ String _name = "SeedPlumSmall";		String _source = "Sprite/RawMaterial/Small/SeedPlum.png"; }							
		{ String _name = "SeedCherrySmall";		String _source = "Sprite/RawMaterial/Small/SeedCherry.png"; }							
		{ String _name = "SeedPecanSmall";		String _source = "Sprite/RawMaterial/Small/SeedPecan.png"; }							
		{ String _name = "SeedWalnutSmall";		String _source = "Sprite/RawMaterial/Small/SeedWalnut.png"; }							
		{ String _name = "SeedChestnutSmall";	String _source = "Sprite/RawMaterial/Small/SeedChestnut.png"; }	
		{ String _name = "SeedCabbageSmall";	String _source = "Sprite/RawMaterial/Small/SeedCabbage.png";	}
		{ String _name = "SeedCornSmall";		String _source = "Sprite/RawMaterial/Small/SeedCorn.png";	}
		{ String _name = "SeedPotatoSmall";		String _source = "Sprite/RawMaterial/Small/SeedPotato.png"; }
		{ String _name = "SeedSquashSmall";		String _source = "Sprite/RawMaterial/Small/SeedSquash.png"; }
		{ String _name = "SeedWheatSmall";		String _source = "Sprite/RawMaterial/Small/SeedWheat.png"; }
		{ String _name = "SeedBeanSmall";		String _source = "Sprite/RawMaterial/Small/SeedBean.png"; }
		{ String _name = "SeedPumpkinSmall";	String _source = "Sprite/RawMaterial/Small/SeedPumpkin.png"; }
		{ String _name = "SeedPepperSmall";		String _source = "Sprite/RawMaterial/Small/SeedPepper.png"; }

		{ String _name = "AchieveSettlement";		String _source = "Sprite/Achievement/Settlement.png"; }
		{ String _name = "AchieveVillage";			String _source = "Sprite/Achievement/Village.png"; }
		{ String _name = "AchieveTown";				String _source = "Sprite/Achievement/Town.png"; }
		{ String _name = "AchieveEducated";			String _source = "Sprite/Achievement/Educated.png"; }
		{ String _name = "AchieveUneducated";		String _source = "Sprite/Achievement/Uneducated.png"; }
		{ String _name = "AchieveJackofallTrades";	String _source = "Sprite/Achievement/JackofallTrades.png"; }
		{ String _name = "AchieveMountainMen";		String _source = "Sprite/Achievement/MountainMen.png"; }
		{ String _name = "AchieveTombstone";		String _source = "Sprite/Achievement/Tombstone.png"; }
		{ String _name = "AchieveBlacksmith";		String _source = "Sprite/Achievement/Blacksmith.png"; }
		{ String _name = "AchieveStylish";			String _source = "Sprite/Achievement/Stylish.png"; }
		{ String _name = "AchieveIsolationist";		String _source = "Sprite/Achievement/Isolationist.png"; }
		{ String _name = "AchieveOnewithNature";	String _source = "Sprite/Achievement/OnewithNature.png"; }
		{ String _name = "AchieveTrader";			String _source = "Sprite/Achievement/Trader.png"; }
		{ String _name = "AchieveMasterTrader";		String _source = "Sprite/Achievement/MasterTrader.png"; }
		{ String _name = "AchieveExports";			String _source = "Sprite/Achievement/Exports.png"; }
		{ String _name = "AchieveFirefighter";		String _source = "Sprite/Achievement/Firefighter.png"; }
		{ String _name = "AchieveFarmer";			String _source = "Sprite/Achievement/Farmer.png"; }
		{ String _name = "AchieveLivestock";		String _source = "Sprite/Achievement/Livestock.png"; }
		{ String _name = "AchievePlantVariety";		String _source = "Sprite/Achievement/PlantVariety.png"; }
		{ String _name = "AchieveMiner";			String _source = "Sprite/Achievement/Miner.png"; }
		{ String _name = "AchieveMason";			String _source = "Sprite/Achievement/Mason.png"; }
		{ String _name = "AchieveFoodie";			String _source = "Sprite/Achievement/Foodie.png"; }
		{ String _name = "AchieveLumberjack";		String _source = "Sprite/Achievement/Lumberjack.png"; }
		{ String _name = "AchieveStonework";		String _source = "Sprite/Achievement/Stonework.png"; }
		{ String _name = "AchieveSmelter";			String _source = "Sprite/Achievement/Smelter.png"; }
		{ String _name = "AchieveImmigrants";		String _source = "Sprite/Achievement/Immigrants.png"; }
		{ String _name = "AchieveSmilesallaround";	String _source = "Sprite/Achievement/Smilesallaround.png"; }
		{ String _name = "AchieveHealthy";			String _source = "Sprite/Achievement/Healthy.png"; }
		{ String _name = "AchieveBuiltfromStone";	String _source = "Sprite/Achievement/BuiltfromStone.png"; }
		{ String _name = "AchieveReadyforAnything";	String _source = "Sprite/Achievement/ReadyforAnything.png"; }
		{ String _name = "AchieveBuilder";			String _source = "Sprite/Achievement/Builder.png"; }
		{ String _name = "AchieveMasterBuilder";	String _source = "Sprite/Achievement/MasterBuilder.png"; }
		{ String _name = "AchieveEstablished";		String _source = "Sprite/Achievement/Established.png"; }
		{ String _name = "AchieveTenure";			String _source = "Sprite/Achievement/Tenure.png"; }
		{ String _name = "AchieveHighwaymen";		String _source = "Sprite/Achievement/Highwaymen.png"; }
		{ String _name = "AchieveGoldenGate";		String _source = "Sprite/Achievement/GoldenGate.png"; }

		// { String _name = "ScenarioIsolation";		String _source = "Sprite/Scenario/Isolation.png"; }

		{ String _name = "TutorialGettingStarted";	String _source = "Sprite/Scenario/TutorialGettingStarted.png"; }
		{ String _name = "TutorialSurvival";		String _source = "Sprite/Scenario/TutorialSurvival.png"; }
		{ String _name = "TutorialFood";			String _source = "Sprite/Scenario/TutorialFood.png"; }
		{ String _name = "TutorialTrade";			String _source = "Sprite/Scenario/TutorialTrade.png"; }
	]
}
