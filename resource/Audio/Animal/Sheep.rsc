SoundBuffer version0
{
	bool _looping = false;
	String _wave = "Audio\Animal\Sheep0.wav";
}

SoundBuffer version1
{
	bool _looping = false;
	String _wave = "Audio\Animal\Sheep1.wav";
}

SoundBuffer version2
{
	bool _looping = false;
	String _wave = "Audio\Animal\Sheep2.wav";
}

SoundBuffer version3
{
	bool _looping = false;
	String _wave = "Audio\Animal\Sheep3.wav";
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
				{ SoundBuffer _soundBuffer = "version0"; }
				{ SoundBuffer _soundBuffer = "version1"; }
				{ SoundBuffer _soundBuffer = "version2"; }
				{ SoundBuffer _soundBuffer = "version3"; }
			]
		}
	]
}

AnimAudioEvent event
{
	SoundEffect _soundEffect = "resource";
	float _chance = 0.05;
}