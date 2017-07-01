SoundBuffer version0
{
	bool _looping = false;
	String _wave = "Audio\Effects\TreeFall.wav";
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
				{ SoundBuffer _soundBuffer = "version0"; float _minPitch = -2.0; float _maxPitch = 2.0; float _volume = 1.0; }
			]
		}
	]
}

AnimAudioEvent event
{
	SoundEffect _soundEffect = "resource";
}