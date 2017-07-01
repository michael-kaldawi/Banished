SoundEffect baseEffect
{
	float _radius = 8.0;
	float _innerRadius = 3.0;
}

SoundBuffer field
{
	bool _looping = true;
	String _wave = "Audio\Effects\Field.wav";
}

SoundEffect fieldEffect : "baseEffect"
{
	Sound _sounds [ { Buffer _buffers [ { SoundBuffer _soundBuffer = "field"; float _volume = 1.0; } ] } ]
}

SoundBuffer forest
{
	bool _looping = true;
	String _wave = "Audio\Effects\Forest.wav";
}

SoundEffect forestEffect : "baseEffect"
{
	Sound _sounds [ { Buffer _buffers [ { SoundBuffer _soundBuffer = "forest"; float _volume = 1.0; } ] } ]
}

SoundBuffer wetland
{
	bool _looping = true;
	String _wave = "Audio\Effects\Wetland.wav";
}

SoundEffect wetlandEffect : "baseEffect"
{
	Sound _sounds [ { Buffer _buffers [ { SoundBuffer _soundBuffer = "wetland"; float _volume = 0.3; } ] } ]
}

SoundEffect mountainEffect : "baseEffect"
{
	Sound _sounds [ { Buffer _buffers [ { SoundBuffer _soundBuffer = "WindEffect.rsc:version0"; float _volume = 0.5; } ] } ]
}

SoundBuffer winter
{
	bool _looping = true;
	String _wave = "Audio\Effects\Winter.wav";
}

SoundEffect winterEffect : "baseEffect"
{
	Sound _sounds [ { Buffer _buffers [ { SoundBuffer _soundBuffer = "winter"; float _volume = 1.0; } ] } ]
}

ComponentDescription ambient
{
	// how often to update
	UpdatePriority _updatePriority = Third;
	
	// declare types that will be used
	Description _descriptions
	[
		"ambientemitter",
		"ambientenvironment",
	]
}

AmbientEmitterDescription ambientemitter
{
	SoundEffect _soundEffects
	[
		"",
		""
	]
}

AmbientEnvironmentDescription ambientenvironment
{
	Environment _environment
	[
		{ SoundEffect _warmSoundEffect = "forestEffect";	
		  SoundEffect _coldSoundEffect = "winterEffect";	
		  PathBits _pathBits = Obstacle; int _weight = 25; ComponentDescription _entity = "Template/NaturalResourceTree.rsc"; }
		{ SoundEffect _warmSoundEffect = "fieldEffect";		
		  SoundEffect _coldSoundEffect = "mountainEffect";	
		  PathBits _pathBits = Normal | Obstacle | Occasional | Immovable; int _weight = 1; }
		{ SoundEffect _warmSoundEffect = "wetlandEffect";	
		  SoundEffect _coldSoundEffect = "winterEffect";	
		  PathBits _pathBits = Water | DeepWater; int _weight = 1; }
		{ SoundEffect _warmSoundEffect = "mountainEffect";	
		  SoundEffect _coldSoundEffect = "mountainEffect";	
		  PathBits _pathBits = Unusable; int _weight = 1; }
	]

	float _minTemp = 31.0;
	float _maxTemp = 36.0;
}