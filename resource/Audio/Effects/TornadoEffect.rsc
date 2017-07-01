SoundBuffer version0
{
	bool _looping = true;
	String _wave = "Audio\Effects\Tornado.wav";
}

SoundEffect resource
{
	float _radius = 50.0;
	float _innerRadius = 35.0;

	Sound _sounds
	[ 
		{
			Buffer _buffers
			[ 
				{ SoundBuffer _soundBuffer = "version0"; float _volume = 1.0;  }
			]
		}
	]
}

