ParticleSystem resource
{
	// true if instanced
	bool _instanced = true;
	int _instanceCount = 3;

	// maximum number of particles
	int _maximumCount = 60;

	// material
	MaterialInstance _material = "ParticleSystems/Fire/FireMaterial.rsc";

	// emission
	float _emissionRate = 20.0;
	float _emissionAcceleration = 0.0;
	float _emissionDrag = 1.0;
	Time _emitterLifeTime = 0.0;

	// emission direction and position
	Vector3 _emissionDirection { float _xyz [ 0.0f, 1.0f, 0.0f ] }
	float _emissionSize = 5.5;
	float _emissionHeading = 180.0;
	float _emissionPitch = 10.0;

	// particle movement
	float _particleVelocity = 2.25;
	float _paritcleVelocityTolerance = 0.0;
	float _particleVelocityAcceleration = 1.0;
	float _particleVelocityDrag = 1.0;
	float _particleRoll = 0.0;
	float _particleRollTolerance = 180.0;
	float _particleRollSpeed = 90.0;
	float _particleRollSpeedTolerance = 15.0;
	float _particleRollAcceleration = 0.0;
	float _particleRollSpeedDrag = 1.0;
	float _particleLifeTime = 3.0;
	float _particleLifeTimeTolerance = 0.5;
	float _particleForceInfluence = 1.0;
	Vector3 _particleForce { float _xyz [ 30.0, 8.0, 20.0 ] }

	// particle appearance
	float _particleSize = 1.0;
	float _particleSizeTolerance = 0.20;
	float _particleSizeAcceleration = 25.0;
	float _particleSizeDrag = 1.0;
	Color _particleStartColor = 0x50FFFFFF;
	Color _particleEndColor = 0xD0101010;
	float _particleStartColorTime = 0.0;
	float _particleEndColorTime = 0.66;
	Time _particleFadeIn = 0.5;
	Time _particleFadeOut = 1.5;
}