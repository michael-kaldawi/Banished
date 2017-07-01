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
					SoundBuffer _soundBuffer = "Audio\UI\ButtonDown.rsc";
					float _minPitch = 12.000000;
					float _maxPitch = 12.000000;
					float _volume = 0.500000;
				}
			]
		}
	]
}