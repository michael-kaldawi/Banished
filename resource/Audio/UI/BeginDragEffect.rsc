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
					SoundBuffer _soundBuffer = "Audio\UI\BeginDrag.rsc";
					float _minPitch = 0.000000;
					float _maxPitch = 0.000000;
					float _volume = 2.000000;
				}
			]
		}
	]
}