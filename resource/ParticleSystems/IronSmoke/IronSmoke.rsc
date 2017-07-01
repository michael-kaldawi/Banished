ParticleSystem resource
{
	// true if instanced
	bool _instanced = true;
	int _instanceCount = 3;

	// maximum number of particles
	int _maximumCount = 48;

	// material
	MaterialInstance _material = "ParticleSystems/IronSmoke/IronSmokeMaterial.rsc";

	// emission
	float _emissionRate = 5.0;
	float _emissionAcceleration = 0.0;
	float _emissionDrag = 1.0;
	Time _emitterLifeTime = 0.0;

	// emission direction and position
	Vector3 _emissionDirection { float _xyz [ 0.0f, 1.0f, 0.0f ] }
	float _emissionSize = 0.0;
	float _emissionHeading = 180.0;
	float _emissionPitch = 35.0;

	// particle movement
	float _particleVelocity = 0.75;
	float _paritcleVelocityTolerance = 0.0;
	float _particleVelocityAcceleration = 1.0;
	float _particleVelocityDrag = 1.0;
	float _particleRoll = 0.0;
	float _particleRollTolerance = 180.0;
	float _particleRollSpeed = 30.0;
	float _particleRollSpeedTolerance = 5.0;
	float _particleRollAcceleration = 0.0;
	float _particleRollSpeedDrag = 1.0;
	float _particleLifeTime = 6.5;
	float _particleLifeTimeTolerance = 1.0;
	float _particleForceInfluence = 1.0;
	Vector3 _particleForce { float _xyz [ 15.0, 4.0, 10.0 ] }

	// particle appearance
	float _particleSize = 0.25;
	float _particleSizeTolerance = 0.05;
	float _particleSizeAcceleration = 9.0;
	float _particleSizeDrag = 1.0;
	Color _particleStartColor = 0xFFC0C0C0;
	Color _particleEndColor = 0xFFFFFFFF;
	Time _particleFadeIn = 0.1;
	Time _particleFadeOut = 5.0;
}