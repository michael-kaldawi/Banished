ExternalList resource
{
	External _resources
	[
		"Game/StartCondition/Hard.rsc",
		"Game/StartCondition/Medium.rsc",
		"Game/StartCondition/Easy.rsc",
	]
}

MapGenerator defaults
{
	WeakComponentDescription _riverAmbient = "Audio/Effects/RiverEffect.rsc:ambient";
	WeakComponentDescription _mapAmbient = "Audio/Effects/Environment.rsc:ambient";
	WeakComponentDescription _windAmbient = "Audio/Effects/WindEffect.rsc:ambient";
	
	float _riverAmbientSpacing = 8.0;
	int _mapAmbientSpacing = 16;
	float _windAmbientHeight = 40.0f;

	WeakComponentDescription _naturalResources
	[
		"Template/NaturalResourceRock.rsc",
		"Template/NaturalResourceOre.rsc",
		"Template/NaturalResourceTree.rsc",		
	]

	WeakComponentDescription _initialVisibleList	
	[
		"Template/RawMaterialWood.rsc",
		"Template/RawMaterialStone.rsc",
		"Template/RawMaterialIron.rsc",

		"Template/RawMaterialTool.rsc",
		"Template/RawMaterialPotato.rsc",
		"Template/RawMaterialFirewood.rsc",
		"Template/RawMaterialLeatherCoat.rsc"
	]

	WeakComponentDescription _populations
	[
		"Template/PopulationDeer.rsc",
	]

	WeakComponentDescription _initialPlantList
	[
		"Template/NaturalResourceWheat.rsc",
		"Template/NaturalResourcePotato.rsc",
		"Template/NaturalResourceCabbage.rsc",
		"Template/NaturalResourceCorn.rsc",
		"Template/NaturalResourceSquash.rsc",
		"Template/NaturalResourceBean.rsc",
		"Template/NaturalResourcePumpkin.rsc",
		"Template/NaturalResourcePepper.rsc",
	]

	WeakComponentDescription _initialTreeList
	[
		"Template/NaturalResourceAppleTree.rsc",
		"Template/NaturalResourceCherryTree.rsc",
		"Template/NaturalResourcePlumTree.rsc",
		"Template/NaturalResourcePeachTree.rsc",
		"Template/NaturalResourcePearTree.rsc",
		"Template/NaturalResourceWalnutTree.rsc",
		"Template/NaturalResourceChestnutTree.rsc",
		"Template/NaturalResourcePecanTree.rsc",
	]

	WeakComponentDescription _initialLivestockList
	[
		"Template/LivestockChicken.rsc"
		"Template/LivestockCow.rsc"
		"Template/LivestockSheep.rsc"
	]
}