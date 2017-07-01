// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fifth;
	
	// declare types that will be used
	Description _descriptions
	[
		"value",

		"model",
		"character",
		"animal",
		"select",
		"livestock",
	]
}

ValueDescription value
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "ChickensSmall";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _stringName = "Chickens";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 400;

	// how much is sold in a single sale
	int _stackCount = 12;
	int _minStackCount = 8;
}

CharacterDescription character
{
	float _headingOffset = 90.0;
	float _turnFilter = 0.95;
}

SelectDescription select
{
	SpriteSheet _spriteSheet = "Dialog\SpriteSheet.rsc";
	String _spriteName = "LivestockChicken";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _stringName = "Chickens";
	SelectGroup _group = Livestock;
}

AnimalDescription animal
{
	ComponentDescription _rawMaterial 
	[	
		"Template/RawMaterialChicken.rsc"
	]
	
	int _roamSize = 5;
	int _requiredArea = 6;
	
	float _maxAge = 3.0;
	float _maxAgeTolerance = 0.25;
	float _ageForOffspring = 0.33;
	float _offspringTerm = 0.20;
	float _offsprintTermTolerance = 0.20;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			AnimationGroup _animations = "Models\Animals\Chicken\ChickenAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\Animals\Chicken\ChickenMesh.rsc" 
			] 
		}
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

LivestockDescription livestock 
{ 
	ComponentDescription _additionalRawMaterial = "Template\RawMaterialEgg.rsc";
	float _additionalCreateInMonths = 1.0;

	ResourceLimit _resourceLimit = Food; 
}
