Disease resource
{
	StringTable _stringTable = "Dialog/StringTable.rsc:diseases";
	String _diseaseName = "Plague";

	// time between transmissions, chance, and radius
	float _transmissionTime = 0.25;
	float _chanceOfTransmission = 0.85;
	float _transmissionRadius = 12.0;

	// chance of aquiring the disease
	float _chanceOfDisease = 1;

	// chance of dying after the disease
	float _chanceOfDeath = 3;
}