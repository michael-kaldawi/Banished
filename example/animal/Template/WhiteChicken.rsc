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
	SpriteSheet _spriteSheet = "UI/WhiteChickenSpriteSheet.rsc";
	String _spriteName = "WhiteChickensSmall";
	StringTable _stringTable = "UI/WhiteChickenStringTable.rsc";
	String _stringName = "WhiteChickens";
		
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
	SpriteSheet _spriteSheet = "UI/WhiteChickenSpriteSheet.rsc";
	String _spriteName = "WhiteChicken";
	StringTable _stringTable = "UI/WhiteChickenStringTable.rsc";
	String _stringName = "WhiteChickens";
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
			AnimationGroup _animations = "Models\WhiteChickenAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\WhiteChickenMesh.rsc" 
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
}
