Profession beekeeper
{
	StringTable _stringTable = "UI/ApiaryStringTable.rsc";
	SpriteSheet _spriteSheet = "UI/ApiarySpriteSheet.rsc";

	String _text = "ProfessionBeekeeper";
	String _toolTipText = "ProfessionBeekeeperTip";
	String _deathText = "ProfessionBeekeeperDeath";

	int _sortPriority = 650;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 10;
		float _population = 500;
	}
}
