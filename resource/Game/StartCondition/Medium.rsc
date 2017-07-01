MapGenerator resource : "StartConditions.rsc:defaults"
{
	StringTable _stringTable = "Dialog/StringTable.rsc:startConditions";
	String _name = "MediumName";
	String _description = "MediumDesc";
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
	]

	int _initialWoodCount = 120;
	int _initialStoneCount = 60;
	int _initialIronCount = 40;

	int _initialToolCount = 40;
	int _initialFoodCount = 1800;
	int _initialFuelCount = 200;
	int _initialClothingCount = 30;

	int _plantCount = 2;
	int _treeCount = 1;
	int _livestockCount = 0;

	float _livestockOffsetX = 0.0f;
	float _livestockOffsetY = -8.0f;
	float _livestockRadius = 4;
	int _livestockGroupCount = 8;
}