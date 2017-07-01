SoundBuffer version0
{
	bool _looping = false;
	String _wave = "Audio\Tool\Hoe0.wav";
}

SoundBuffer version1
{
	bool _looping = false;
	String _wave = "Audio\Tool\Hoe1.wav";
}

SoundBuffer version2
{
	bool _looping = false;
	String _wave = "Audio\Tool\Hoe2.wav";
}

SoundBuffer version3
{
	bool _looping = false;
	String _wave = "Audio\Tool\Hoe3.wav";
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