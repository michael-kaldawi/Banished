ControlUIConfig autoPickupButtonConfig
{
	ObjectType _type = AutoPickupComponent;
	int _controlId = 0;
}

CheckDescription enableAutoPickupButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelAutoPickupUncheck";	
	ElementDescription _check = "labelAutoPickupCheck";	
	String _toolTipText = "ReturnToStorageTip";
}

LabelDescription labelAutoPickupCheck : "Dialog/Work.rsc:labelEnableWork"
{
	String _spriteName = "ReturnToStorage";	
	String _text = "ReturnToStorage";
}

LabelDescription labelAutoPickupUncheck : "labelAutoPickupCheck"
{
	Color _color = 0xFF2E2B28;
}

