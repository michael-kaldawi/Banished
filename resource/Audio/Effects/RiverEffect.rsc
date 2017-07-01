SoundBuffer version0
{
	bool _looping = true;
	String _wave = "Audio\Effects\River.wav";
}

SoundEffect resource
{
	float _radius = 10.0;
	float _innerRadius = 5.0;

	Sound _sounds
	[ 
		{
			Buffer _buffers
			[ 
				{ SoundBuffer _soundBuffer = "version0"; float _volume = 0.66; }
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