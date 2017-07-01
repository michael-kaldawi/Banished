MapGenerator resource : "StartConditions.rsc:defaults"
{
	StringTable _stringTable = "Dialog/StringTable.rsc:startConditions";
	String _name = "EasyName";
	String _description = "EasyDesc";
	bool _exposed = true;

	int _startAreaSize = 13;
	float _citizenRadius = 3.0f;
	WeakComponentDescription _citizen = "Template\Citizen.rsc";
	InitialFamily _citizens
	[
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
	]

	InitialStructure _structures
	[
		{
			WeakComponentDescription _structure = "Template\StorageBarn.rsc";
			int _offsetX = -3;
			int _offsetY = 5;
			int _rotation = 90;
		}
		{
			WeakComponentDescription _structure = "Template\StorageYard.rsc";
			int _offsetX = 3;
			int _offsetY = 6;
			int _width = 4;
			int _height = 6;
			int _rotation = 0;
		}

		{
			WeakComponentDescription _structure = "Template\WoodHouse.rsc";
			int _offsetX = -7;
			int _offsetY = 5;
			int _rotation = 0;
		}

		{
			WeakComponentDescription _structure = "Template\WoodHouse.rsc";
			int _offsetX = -12;
			int _offsetY = 1;
			int _rotation = 90;
		}

		{
			WeakComponentDescription _structure = "Template\WoodHouse.rsc";
			int _offsetX = -12;
			int _offsetY = -4;
			int _rotation = 90;
		}

		{
			WeakComponentDescription _structure = "Template\WoodHouse.rsc";
			int _offsetX = -7;
			int _offsetY = -9;
			int _rotation = 180;
		}

		{
			WeakComponentDescription _structure = "Template\WoodHouse.rsc";
			int _offsetX = -2;
			int _offsetY = -9;
			int _rotation = 180;
		}

		{
			WeakComponentDescription _structure = "Template\WoodHouse.rsc";
			int _offsetX = 2;
			int _offsetY = -4;
			int _rotation = 270;
		}
	]

	int _initialWoodCount = 150;
	int _initialStoneCount = 70;
	int _initialIronCount = 50;

	int _initialToolCount = 50;
	int _initialFoodCount = 2400;
	int _initialFuelCount = 400;
	int _initialClothingCount = 40;

	int _plantCount = 2;
	int _treeCount = 2;
	int _livestockCount = 1;

	float _livestockOffsetX = 0.0f;
	float _livestockOffsetY = 0.0f;
	float _livestockRadius = 4;
	int _livestockGroupCount = 8;
}