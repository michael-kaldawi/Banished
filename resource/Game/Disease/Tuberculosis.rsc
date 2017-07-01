Disease resource
{
	StringTable _stringTable = "Dialog/StringTable.rsc:diseases";
	String _diseaseName = "Tuberculosis";

	// time between transmissions, chance, and radius
	float _transmissionTime = 0.25;
	float _chanceOfTransmission = 0.8;
	float _transmissionRadius = 8.0;

	// chance of aquiring the disease
	float _chanceOfDisease = 20;

	// chance of dying after the disease
	float _chanceOfDeath = 8;
}