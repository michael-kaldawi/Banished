// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Second;
	
	// declare types that will be used
	Description _descriptions
	[
		"ui", 
		"toolbar",

		"model",
		"picking",
		"highlight",
		"character",
		"statusicon",
		"storage",
		"citizen",
		"citizenai",
	]
}

StateMachineDescription statemachine { }

ToolbarDescription toolbar
{
	StringTable _stringTable = "Dialog/StringTable.rsc:objects";
	String _stringName = "Citizen";
}

CharacterDescription character
{
	float _headingOffset = 0.0;
	float _turnFilter = 0.96;
	float _defaultAnimationBlendTime = 0.5;

	float _slowSpeed = 0.75;
	float _fastSpeed = 1.2;
	float _fastestSpeed = 1.4;
}

StorageDescription storage
{
	RawMaterialFlags _storageFlags = Edible | Fuel | Tool | Wood | Stone | Iron | Health | Clothing | Textile | Alcohol;
	bool _areaBasedLimit = false;
	bool _available = true;
	int _volumeLimit = 100;
}

CitizenAIDescription citizenai
{
}

CitizenDescription citizen
{
	Profession _schoolingProfession = "Game/Profession/Profession.rsc:teacher";
	Profession _churchProfession = "Game/Profession/Profession.rsc:priest";
	Profession _doctorProfession = "Game/Profession/Profession.rsc:doctor";

	// age at which children becomre adults
	float _adultAge = 2.0;
	float _marriageAge = 2.0;
	float _marrigeRange = 4.0;
	float _childMinAge = 2.2;
	float _childMaxAge = 8.0;

	float _maxAge = 15.0;
	float _maxAgeTolerance = 3.0;
	float _agePerSecond = 0.000277777;

	float _childTerm = 900.0;
	float _postChildTerm = 1800.0;
	float _postChildTermTol = 5400.0;
	float _childBirthHealthy = 0.00625;
	float _childBirthUnhealthy = 0.025;

	float _health = 10.0;
	float _maxHealth = 10.0;
	float _unhealthyLevel = 8.0;
	float _healthUpdateInMonths = 3.0;

	float _maxHappiness = 10.0;
	int _minFoodForHappiness = 4;
	int _maxFoodForHappiness = 12;
	float _happinessUpdateInMonths = 3.0;
	int _workForHappiness = 10;
	float _unhappyLevel = 0.6;
	float _depressedLevel = 0.25;
	int _idleRange = 25;

	// chance of disease, per year. 
	RandomSelection _diseaseChanceHealthy
	{
		float _years = 20;
		float _population = 500;
	}

	RandomSelection _diseaseChanceUnhealthy
	{
		float _years = 1;
		float _population = 400;
	}

	RandomSelection _diseaseChanceNomadTrade
	{
		float _years = 1;
		float _population = 250;
	}

	// how long disease lasts in months +-
	float _diseasePeriod = 1.0;
	float _diseasePeriodTol = 0.5;

	// how long immune to disease after recovering
	float _immunityLength = 12.0f;

	float _foodPerYear = 100;
	float _foodLevel = 25.0;
	float _hungerLevel = 10.0;
	float _starvingLevel = 18.0;
	float _maxHunger = 25.0;

	float _retryInMonths = 0.1;

	float _fuelLevel = 8.0;

	float _coldnessLevel = 7.5;
	float _freezingLevel = 15.0;
	float _coldPerMonth [ 12.0, 8.0, 5.0 ]
	float _maxColdness = 20.0;
	float _minTemperature = 48.0;

	int _toolQuality = 100;
	float _toolPenalty = 5.0;

	int _requiredEducation = 400;
	float _educationTimeLength = 3.0;
	float _educationWorkLength = 10.0;

	float _doctorChanceOfDeathScalar = 2.0;
	float _medicateWorkLength = 10.0;
	float _medicineEffectivenessInMonths = 0.01;

	float _clothingLengthInMonths = 48.0;

	int _maxWaterForFireSearch = 64;

	int _minDistanceForWork = 60;
	int _maxDistanceForWork = 2000;	// must encompass longest walk path!
	int _timeUntilMaxDistanceForWorkInMonths = 6;
	int _maxWalkInWinter = 200;
	float _minTemperatureForWinterWalk = 45.0;

	GraphicsMesh _tools
	[
		"Models\Citizen\ToolAxeMesh.rsc" 
		"Models\Citizen\ToolPickAxeMesh.rsc" 
		"Models\Citizen\ToolScytheMesh.rsc" 
		"Models\Citizen\ToolHoeMesh.rsc" 
		"Models\Citizen\ToolHammerMesh.rsc" 
		"Models\Citizen\ToolFishingMesh.rsc" 
		"Models\Citizen\ToolHammerMesh.rsc" 
		"Models\Citizen\ToolHandSawMesh.rsc" 
		"Models\Citizen\ToolBucketMesh.rsc" 

		"Models\Citizen\BarrowEmptyMesh.rsc" 
		"Models\Citizen\BarrowFullMesh.rsc" 
	]
}

PickingDescription picking
{
	bool _useGraphicsMesh = true;
	MaterialInstance _selectMaterial = "Material/SelectionMask/SelectionMaskSkin.rsc";
	PickingGroup _meshes
	[
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Citizen\CitizenPicking.rsc" 
			] 
		}
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Citizen\CitizenPicking.rsc" 
			] 
		}
	]
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			AnimationGroup _animations = "Models\Citizen\CitizenAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\Citizen\CitizenMaleMesh.rsc" 
			] 
		}		
		{ 
			AnimationGroup _animations = "Models\Citizen\CitizenAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\Citizen\CitizenFemaleMesh.rsc" 
			] 
		}
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

HighlightDescription highlight
{
	EdgeGroup _meshes
	[
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Citizen\CitizenMaleMesh.rsc:edge" 
			]
		}
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Citizen\CitizenFemaleMesh.rsc:edge" 
			]
		}
	]
}

StatusIconDescription statusicon
{
	SpriteSheet _spriteSheet = "StatusIcons\CitizenIconSpriteSheet.rsc";
	bool _fixedSize = true;
	float _size = 0.025;
	float _zoffset = 1.33;
}

UIDescription ui
{
	int _displayPage = 1;	// set to 1 for tab layout
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";
	
	ElementController _controllers
	[
		{ 
			ElementDescription _element = "Dialog/Citizen.rsc:buttonProfession"; 
			String _insertAt = "userTitle0"; 
		}
		{ 
			ElementDescription _element = "Dialog/Citizen.rsc:buttonHome"; 
			String _insertAt = "userTitle1"; 
		}
		{ 
			ObjectType _type = StatusIconUI;
			ElementDescription _element = "Dialog/Citizen.rsc:icons"; 
			String _insertAt = "userTitle2"; 
		}
		{ 
			ElementDescription _element = "Dialog/Citizen.rsc:buttonFollow"; 
			String _insertAt = "pageTabHeader"; 
		}
		{ 
			ObjectType _type = CitizenUI; 
			ElementDescription _element = "Dialog/Citizen.rsc:citizen"; 
			String _insertAt = "pageTab"; 
			ElementDescription _tabButton = "Dialog/Residence.rsc:buttonTabCitizen";
		}
		{ 
			ObjectType _type = StorageUI; 
			ElementDescription _element = "Dialog/Storage.rsc:storage"; 
			String _insertAt = "pageTab"; 
			ElementDescription _tabButton = "Dialog/Storage.rsc:buttonTabStorage";
		}
	]
}