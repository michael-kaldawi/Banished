SoundBuffer version0
{
	bool _looping = false;
	String _wave = "Audio\Tool\PickAxe0.wav";
}

SoundBuffer version1
{
	bool _looping = false;
	String _wave = "Audio\Tool\PickAxe1.wav";
}

SoundBuffer version2
{
	bool _looping = false;
	String _wave = "Audio\Tool\PickAxe2.wav";
}

SoundBuffer version3
{
	bool _looping = false;
	String _wave = "Audio\Tool\PickAxe3.wav";
}

SoundEffect resource
{
	float _radius = 10.0;
	float _innerRadius = 5.0;

	Sound _sounds
	[ 
		{
			float _startOffset = 0.000000;
			Buffer _buffers
			[ 
				{ SoundBuffer _soundBuffer = "version0"; float _volume = 0.6; }
				{ SoundBuffer _soundBuffer = "version1"; float _volume = 0.6; }
				{ SoundBuffer _soundBuffer = "version2"; float _volume = 0.6; }
				{ SoundBuffer _soundBuffer = "version3"; float _volume = 0.6; }
			]
		}
	]
}

AnimAudioEvent event
{
	SoundEffect _soundEffect = "resource";
}