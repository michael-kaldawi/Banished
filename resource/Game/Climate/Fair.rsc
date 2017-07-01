ClimateGenerator resource
{
	StringTable _stringTable = "Dialog/StringTable.rsc:climate";
	String _text = "Fair";
	bool _exposed = true;

	// base range for temperature over the year
	float _baseTemperature = 50.0;
	float _temperatureRange = 30.0;
	float _temperatureTolerance = 5.0;

	// normal distribution range of base temperature change (biyearly?)
	float _temperatureVariance = 40.0;

	// chance for precip, clouds, partly cloud, sun
	float _weatherChance
	[
	//  Precip	Clouds  PartCld Sunny
		0.5,	0.7,	0.9,	1.0,		// early spring
		0.4,	0.6,	0.6,	1.0,		// spring
		0.4,	0.5,	0.7,	1.0,		// late spring
		0.4,	0.5,	0.7,	1.0,		// early summer
		0.3,	0.3,	0.6,	1.0,		// summer
		0.2,	0.4,	0.6,	1.0,		// late summer
		0.3,	0.5,	0.7,	1.0,		// early fall
		0.4,	0.6,	0.8,	1.0,		// fall
		0.5,	0.6,	0.9,	1.0,		// late fall
		0.6,	0.6,	0.9,	1.0,		// early winter
		0.7,	0.8,	0.9,	1.0,		// winter
		0.6,	0.7,	0.9,	1.0,		// late winter
	]

	// normal distribution range of weather chance
	float _weatherVariance = 0.4;

	RandomSelection _tornadoChance
	{
		float _years = 100;
		float _population = 1;
	}
}