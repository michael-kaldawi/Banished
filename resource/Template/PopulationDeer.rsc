// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Third;
	
	// declare types that will be used
	Description _descriptions
	[
		"population",
	]
}

PopulationDescription population
{
	String _name = "Deer Population";

	// size of grid
	int _cellSize = 8;
	int _largeCellSize = 64;

	// pathing info
	PathBits _allowedPathing = Fast | Faster | Normal | Obstacle;
	PathBits _disallowedPathing = Immovable | Unusable | Occasional;
	bool _disallowZoneEntities = true;

	// population
	int _maxPopulationPerCell = 2;
	int _populationIncreasePerMonth = 1;
	int _populationDecreasePerHarvest = 1;

	// if true, cell max array will be updated
	bool _updateCells = true;

	// type of herd that is displayed, if any
	ComponentDescription _herd = "deerHerd";
}

ComponentDescription deerHerd
{
	// how often to update
	UpdatePriority _updatePriority = Fifth;
	
	// declare types that will be used
	Description _descriptions
	[
		"herd",
	]
}

HerdDescription herd
{
	ComponentDescription _animalType = "Template\WildAnimalDeer.rsc";
	int _maxAnimals = 10;
	int _minAnimals = 5;
	float _timeInAreaMonths = 1.0;
	float _timeInAreaTolerance = 0.75;
	int _grazeAreaSize = 8;
	float _reproduceTimeInMonths = 12.0;
}