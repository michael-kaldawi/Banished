MapGeneratorDescription desc
{
	StringTable _stringTable = "Dialog/StringTable.rsc:startConditions";
	String _name = "ExpertName";
	String _description = "ExpertDesc";
	String _path = "Maps/Default.rsc";
}

MapGenerator resource : "StartConditions.rsc:defaults"
{
	int _startAreaSize = 13;
	float _citizenRadius = 3.0f;
	ComponentDescription _citizen = "Template\Citizen.rsc";
	InitialFamily _citizens
	[
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
	]


	InitialStructure _structures
	[
		{
			ComponentDescription _structure = "Template\StorageCart.rsc";
			int _offsetX = 3;
			int _offsetY = 5;
		}
		{
			ComponentDescription _structure = "Template\StorageBarn.rsc";
			int _offsetX = -3;
			int _offsetY = 8;
			int _rotation = 90;
		}
		{
			ComponentDescription _structure = "Template\StorageYard.rsc";
			int _offsetX = 3;
			int _offsetY = 9;
			int _width = 4;
			int _height = 6;
			int _rotation = 0;
		}

		{
			ComponentDescription _structure = "Template\WoodHouse.rsc";
			int _offsetX = -7;
			int _offsetY = 8;
			int _rotation = 0;
		}

		{
			ComponentDescription _structure = "Template\WoodHouse.rsc";
			int _offsetX = -12;
			int _offsetY = 4;
			int _rotation = 90;
		}

		{
			ComponentDescription _structure = "Template\WoodHouse.rsc";
			int _offsetX = -12;
			int _offsetY = -1;
			int _rotation = 90;
		}

		{
			ComponentDescription _structure = "Template\WoodHouse.rsc";
			int _offsetX = -7;
			int _offsetY = -6;
			int _rotation = 180;
		}

		{
			ComponentDescription _structure = "Template\WoodHouse.rsc";
			int _offsetX = -2;
			int _offsetY = -6;
			int _rotation = 180;
		}

		{
			ComponentDescription _structure = "Template\WoodHouse.rsc";
			int _offsetX = 2;
			int _offsetY = -1;
			int _rotation = 270;
		}
	]

	int _initialWoodCount = 100;
	int _initialStoneCount = 50;
	int _initialIronCount = 50;

	int _initialToolCount = 20;
	int _initialFoodCount = 900;
	int _initialFuelCount = 100;
	int _initialClothingCount = 20;

	int _plantCount = 1;
	int _treeCount = 1;
	int _livestockCount = 1;

	float _livestockOffsetX = 0.0f;
	float _livestockOffsetY = -8.0f;
	float _livestockRadius = 4;
	int _livestockGroupCount = 8;
}