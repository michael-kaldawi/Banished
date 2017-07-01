Disease resource
{
	StringTable _stringTable = "Dialog/StringTable.rsc:diseases";
	String _diseaseName = "Cholera";

	// time between transmissions, chance, and radius
	float _transmissionTime = 0.25;
	float _chanceOfTransmission = 0.9;
	float _transmissionRadius = 12.0;

	// chance of aquiring the disease
	float _chanceOfDisease = 5;

	// chance of dying after the disease (one in...)
	float _chanceOfDeath = 4;
}