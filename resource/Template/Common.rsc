FireDescription fire
{
	// length of burn
	float _burnTimeInMonths = 1.0;
	float _burnTimeInMonthTol = 0.5;

	// particle system to enable
	int _particleIndex = 0;

	// sound to enable
	int _soundEffectIndex = 0;

	// spread data
	float _spreadTimeMonths = 0.033;
	float _spreadChance = 0.5;

	// how much water needed to put out the fire
	int _requiredWater = 100;
	int _dangerAreaSize = 20;
	int _maxFireWorkers = 50;

	// chance to randomly start
	RandomSelection _fireChance
	{
		float _years = 0;
		float _population = 0;
	}
}

FireDescription fireWoodHouse : "fire"
{
	// chance to randomly start
	RandomSelection _fireChance
	{
		float _years = 20;
		float _population = 100;
	}
}

FireDescription fireWoodBuilding : "fire"
{
	// chance to randomly start
	RandomSelection _fireChance
	{
		float _years = 0;
		float _population = 0;
	}
}

FireDescription fireStoneHouse : "fire"
{
	float _spreadChance = 0.33;

	// chance to randomly start
	RandomSelection _fireChance
	{
		float _years = 30;
		float _population = 100;
	}
}

FireDescription fireStoneBuilding : "fire"
{
	float _spreadChance = 0.33;

	// chance to randomly start
	RandomSelection _fireChance
	{
		float _years = 0;
		float _population = 0;
	}
}

FireDescription fireProduction : "fire"
{
	float _spreadChance = 0.5;

	// chance to randomly start
	RandomSelection _fireChance
	{
		float _years = 40;
		float _population = 100;
	}
}


