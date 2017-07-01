Tornado resource
{
	// true if instanced
	bool _instanced = false;

	// maximum number of particles
	int _maximumCount = 750;

	// material
	MaterialInstance _material = "ParticleSystems/ChimneySmoke/ChimneySmokeMaterial.rsc";

	float _tornadoWidth = 20.0;
	float _tornadoHeight = 75.0;
	float _funnelWidth = 26.0;
	float _funnelSpin = 30.0;
	float _particleSpinSpeed = 400.0;

	float _emissionRate = 20;
	float _particleLifeTime = 30.0;
	float _particleLifeTimeTol = 2.0;
	float _particleStartSize = 2.5;
	float _particleEndSize = 15.0;
	float _particleScaleSize = 30.0;
	Color _particleStartColor = 0xFFC0C0C0;
	Color _particleEndColor = 0x80909090;

	Time _particleFadeIn = 0.05;
	Time _particleFadeOut = 1.0;
}