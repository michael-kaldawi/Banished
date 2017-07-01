ProfessionList resource
{
	Profession _default = "laborer";
	Profession _builder = "builder";
	Profession _child = "child";
	Profession _student = "student";
}

ExternalList professionList
{
	External _resources
	[
		"laborer",
		"builder",
		"farmer",
		"herdsman",
		"gatherer",
		"fisherman",
		"hunter",
		"cutter",
		"forester",
		"herbalist",
		"toolmaker",
		"brewer",
		"tailor",
		"vendor",
		"trader",
		"miner",
		"stonecutter",
		"teacher",
		"doctor",
		"priest",
	]
}

Profession base
{
	StringTable _stringTable = "Dialog/StringTable.rsc:professions";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
}

Profession child : "base"
{
	String _text = "ProfessionChild";
	bool _visible = false;
}

Profession student : "base"
{
	String _text = "ProfessionStudent";
	bool _visible = false;
}

Profession laborer : "base"
{
	String _text = "ProfessionLaborer";
	String _toolTipText = "ProfessionLaborerTip";
	String _deathText = "ProfessionLaborerDeath";

	int _sortPriority = 100;
	bool _transient = true;

	RandomSelection _deathSelector
	{
		float _years = 50;
		float _population = 100;
	}
}

Profession builder : "base"
{
	String _text = "ProfessionBuilder";
	String _toolTipText = "ProfessionBuilderTip";
	String _deathText = "ProfessionBuilderDeath";

	int _sortPriority = 200;
	bool _transient = true;

	RandomSelection _deathSelector
	{
		float _years = 5;
		float _population = 100;
	}
}

Profession farmer : "base"
{
	String _text = "ProfessionFarmer";
	String _toolTipText = "ProfessionFarmerTip";
	String _deathText = "ProfessionFarmerDeath";

	int _sortPriority = 300;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 25;
		float _population = 100;
	}
}

Profession herdsman : "base"
{
	String _text = "ProfessionHerdsman";
	String _toolTipText = "ProfessionHerdsmanTip";
	String _deathText = "ProfessionHerdsmanDeath";

	int _sortPriority = 400;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 25;
		float _population = 100;
	}
}

Profession gatherer : "base"
{
	String _text = "ProfessionGatherer";
	String _toolTipText = "ProfessionGathererTip";
	String _deathText = "ProfessionGathererDeath";

	int _sortPriority = 500;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 10;
		float _population = 100;
	}
}

Profession fisherman : "base"
{
	String _text = "ProfessionFisherman";
	String _toolTipText = "ProfessionFishermanTip";
	String _deathText = "ProfessionFishermanDeath";

	int _sortPriority = 600;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 10;
		float _population = 100;
	}
}

Profession hunter : "base"
{
	String _text = "ProfessionHunter";
	String _toolTipText = "ProfessionHunterTip";
	String _deathText = "ProfessionHunterDeath";

	int _sortPriority = 700;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 5;
		float _population = 100;
	}
}

Profession cutter : "base"
{
	String _text = "ProfessionCutter";
	String _toolTipText = "ProfessionCutterTip";
	String _deathText = "ProfessionCutterDeath";

	int _sortPriority = 800;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 10;
		float _population = 100;
	}
}

Profession forester : "base"
{
	String _text = "ProfessionForester";
	String _toolTipText = "ProfessionForesterTip";
	String _deathText = "ProfessionForesterDeath";

	int _sortPriority = 900;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 5;
		float _population = 100;
	}
}

Profession herbalist : "base"
{
	String _text = "ProfessionHerbalist";
	String _toolTipText = "ProfessionHerbalistTip";
	String _deathText = "ProfessionHerbalistDeath";

	int _sortPriority = 1000;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 10;
		float _population = 100;
	}
}

Profession toolmaker : "base"
{
	String _text = "ProfessionToolMaker";
	String _toolTipText = "ProfessionToolMakerTip";
	String _deathText = "ProfessionToolMakerDeath";

	int _sortPriority = 1100;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 10;
		float _population = 100;
	}
}

Profession brewer : "base"
{
	String _text = "ProfessionBrewer";
	String _toolTipText = "ProfessionBrewerTip";
	String _deathText = "ProfessionBrewerDeath";

	int _sortPriority = 1200;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 50;
		float _population = 100;
	}
}

Profession tailor : "base"
{
	String _text = "ProfessionTailor";
	String _toolTipText = "ProfessionTailorTip";
	String _deathText = "ProfessionTailorDeath";

	int _sortPriority = 1300;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 50;
		float _population = 100;
	}
}

Profession vendor : "base"
{
	String _text = "ProfessionVendor";
	String _toolTipText = "ProfessionVendorTip";
	String _deathText = "ProfessionVendorDeath";

	int _sortPriority = 1400;
	bool _transient = false;

	int _inventorySize = 500;

	RandomSelection _deathSelector
	{
		float _years = 25;
		float _population = 100;
	}
}

Profession trader : "base"
{
	String _text = "ProfessionTrader";
	String _toolTipText = "ProfessionTraderTip";
	String _deathText = "ProfessionTraderDeath";

	int _sortPriority = 1500;
	bool _transient = false;

	int _inventorySize = 500;

	RandomSelection _deathSelector
	{
		float _years = 25;
		float _population = 100;
	}
}

Profession miner : "base"
{
	String _text = "ProfessionMiner";
	String _toolTipText = "ProfessionMinerTip";
	String _deathText = "ProfessionMinerDeath";

	int _sortPriority = 1600;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 4;
		float _population = 30;
	}
}

Profession stonecutter : "base"
{
	String _text = "ProfessionStoneCutter";
	String _toolTipText = "ProfessionStoneCutterTip";
	String _deathText = "ProfessionStoneCutterDeath";

	int _sortPriority = 1700;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 1;
		float _population = 30;
	}
}

Profession teacher : "base"
{
	String _text = "ProfessionTeacher";
	String _toolTipText = "ProfessionTeacherTip";
	String _deathText = "ProfessionTeacherDeath";

	int _sortPriority = 1800;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 50;
		float _population = 100;
	}
}

Profession doctor : "base"
{
	String _text = "ProfessionDoctor";
	String _toolTipText = "ProfessionDoctorTip";
	String _deathText = "ProfessionDoctorDeath";

	int _sortPriority = 1900;
	bool _transient = false;
	bool _immuneToDisease = true;

	RandomSelection _deathSelector
	{
		float _years = 25;
		float _population = 100;
	}
}

Profession priest : "base"
{
	String _text = "ProfessionPriest";
	String _toolTipText = "ProfessionPriestTip";
	String _deathText = "ProfessionPriestDeath";

	int _sortPriority = 2000;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 50;
		float _population = 100;
	}
}