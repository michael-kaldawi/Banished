// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Second;
	
	// declare types that will be used
	Description _descriptions
	[
		"particle",
		"ambientemitter",
		"tornado",
	]
}

AmbientEmitterDescription ambientemitter
{
	SoundEffect _soundEffects [ "Audio/Effects/TornadoEffect.rsc" ]
}

ParticleDescription particle
{
	ParticleAttachment _systems 
	[
		{
			Time _fadeInOutTime = 10.0;
			Time _preUpdateTime = 32.0;
			bool _addOnCreate = true;
			bool _addOnNotify = false;
			Particle _particle = "ParticleSystems\Tornado\Tornado.rsc";
		}
	]
}

TornadoDescription tornado
{
	float _metersPerSecond = 3.0;
	int _minTravelDistance = 64.0;
	Time _destructTime = 0.01;
	int _destructDistance = 8;
	int _destructRandomDistance = 20;
}