Disease resource
{
	StringTable _stringTable = "Dialog/StringTable.rsc:diseases";
	String _diseaseName = "Influenza";

	// time between transmissions, chance, and radius
	float _transmissionTime = 0.25;
	float _chanceOfTransmission = 0.60;
	float _transmissionRadius = 8.0;

	// chance of aquiring the disease
	float _chanceOfDisease = 100;

	// chance of dying after the disease (one in...)
	float _chanceOfDeath = 50;
}