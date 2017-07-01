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
					SoundBuffer _soundBuffer = "Audio\UI\PlacementMove.rsc";
					float _minPitch = 4.000000;
					float _maxPitch = 4.000000;
					float _volume = 0.330000;
				}
			]
		}
	]
}