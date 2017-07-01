ParticleSystem resource
{
	// true if instanced
	bool _instanced = false;
	int _instanceCount = 0;

	// maximum number of particles
	int _maximumCount = 35;

	// material
	MaterialInstance _material = "ParticleSystems/BoatWake/BoatWakeMaterial.rsc";

	// emission
	float _emissionRate = 2.0;
	float _emissionAcceleration = 0.0;
	float _emissionDrag = 1.0;
	Time _emitterLifeTime = 0.0;

	// emission direction and position
	Vector3 _emissionDirection { float _xyz [ 0.0f, 1.0f, 0.0f ] }
	float _emissionSize = 0.0;
	float _emissionHeading = 0.0;
	float _emissionPitch = 0.0;

	// particle movement
	float _particleVelocity = 0.0;
	float _paritcleVelocityTolerance = 0.0;
	float _particleVelocityAcceleration = 0.0;
	float _particleVelocityDrag = 1.0;
	float _particleRoll = 0.0;
	float _particleRollTolerance = 0.0;
	float _particleRollSpeed = 0.0;
	float _particleRollSpeedTolerance = 0.0;
	float _particleRollAcceleration = 0.0;
	float _particleRollSpeedDrag = 1.0;
	float _particleLifeTime = 6.0;
	float _particleLifeTimeTolerance = 0.0;
	float _particleForceInfluence = 0.0;
	Vector3 _particleForce { float _xyz [ 0.0, 0.0, 0.0 ] }

	// particle appearance
	float _particleSize = 0.1;
	float _particleSizeTolerance = 0.0;
	float _particleSizeAcceleration = 30.0;
	float _particleSizeDrag = 1.0;
	Color _particleStartColor = 0xFFFFFFFF;
	Color _particleEndColor = 0xFFFFFFFF;
	Time _particleFadeIn = 0.1;
	Time _particleFadeOut = 1.0;
}