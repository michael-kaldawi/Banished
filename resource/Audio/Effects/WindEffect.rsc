SoundBuffer version0
{
	bool _looping = true;
	String _wave = "Audio\Effects\Wind.wav";
}

SoundEffect resource
{
	float _radius = 15000.0;
	float _innerRadius = 14930.0;

	Sound _sounds
	[ 
		{
			Buffer _buffers
			[ 
				{ SoundBuffer _soundBuffer = "version0"; }
			]
		}
	]
}

ComponentDescription ambient
{
	// how often to update
	UpdatePriority _updatePriority = None;
	
	// declare types that will be used
	Description _descriptions
	[
		"ambientemitter",
	]
}

AmbientEmitterDescription ambientemitter
{
	SoundEffect _soundEffects [ "resource" ]
}