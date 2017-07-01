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
	String _spriteName = "CowsSmall";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _stringName = "Cows";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 800;

	// how much is sold in a single sale
	int _stackCount = 8;
	int _minStackCount = 6;
}

CharacterDescription character
{
	float _headingOffset = 180.0;
	float _turnFilter = 0.95;
}

SelectDescription select
{
	SpriteSheet _spriteSheet = "Dialog\SpriteSheet.rsc";
	String _spriteName = "LivestockCow";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _stringName = "Cows";
	SelectGroup _group = Livestock;
}

AnimalDescription animal
{
	ComponentDescription _rawMaterial 
	[
		"Template/RawMaterialBeef.rsc"
		"Template/RawMaterialLeather.rsc"
	]
	
	int _roamSize = 5;
	int _requiredArea = 20;
	
	float _maxAge = 6.0;
	float _maxAgeTolerance = 1.0;
	float _ageForOffspring = 0.8;
	float _offspringTerm = 0.6;
	float _offsprintTermTolerance = 0.20;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			AnimationGroup _animations = "Models\Animals\Cow\CowAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\Animals\Cow\CowMesh.rsc" 
			] 
		}
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

LivestockDescription livestock 
{ 
}
