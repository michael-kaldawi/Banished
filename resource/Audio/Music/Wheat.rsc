SoundBuffer music
{
	bool _looping = false;
	bool _streamed = true;
	String _wave = "Audio\Music\Wheat.wav";
}

SoundEffect resource
{
	int _maxInstances = -1;
	float _playCutOff = 0.000000;
	Sound _sounds
	[ 
		{
			float _startOffset = 0.000000;
			Buffer _buffers
			[ 
				{
					SoundBuffer _soundBuffer = "music";
					float _minPitch = 0.000000;
					float _maxPitch = 0.000000;
					float _volume = 1.000000;
				}
			]
		}
	]
}