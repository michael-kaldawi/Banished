ParticleSystem resource
{
	// true if instanced
	bool _instanced = false;
	int _instanceCount = 0;

	// maximum number of particles
	int _maximumCount = 10;

	// material
	MaterialInstance _material = "ParticleSystems/CropDisease/CropDiseaseMaterial.rsc";

	// emission
	float _emissionRate = 0.5;
	float _emissionAcceleration = 0.0;
	float _emissionDrag = 1.0;
	Time _emitterLifeTime = 0.0;

	// emission direction and position
	Vector3 _emissionDirection { float _xyz [ 0.0f, 1.0f, 0.0f ] }
	Vector3 _emissionBox { float _xyz [ 1.0f, 1.0f, 0.0f ] }
	float _emissionSize = 10.0;
	float _emissionHeading = 0.0;
	float _emissionPitch = 0.0;

	// particle movement
	float _particleVelocity = 0.3;
	float _paritcleVelocityTolerance = 0.0;
	float _particleVelocityAcceleration = 0.0;
	float _particleVelocityDrag = 0.99;
	float _particleRoll = 0.0;
	float _particleRollTolerance = 180.0;
	float _particleRollSpeed = 4.0;
	float _particleRollSpeedTolerance = 1.0;
	float _particleRollAcceleration = 0.0;
	float _particleRollSpeedDrag = 1.0;
	float _particleLifeTime = 25.5;
	float _particleLifeTimeTolerance = 10.0;
	float _particleForceInfluence = 1.0;
	Vector3 _particleForce { float _xyz [ 0.0, 0.0, 0.0 ] }

	// particle appearance
	float _particleSize = 4.5;
	float _particleSizeTolerance = 2.0;
	float _particleSizeAcceleration = 0.2;
	float _particleSizeDrag = 0.9;
	Color _particleStartColor = 0x80d4c14b;
	Color _particleEndColor = 0x80d4c14b;
	Time _particleFadeIn = 2.0;
	Time _particleFadeOut = 2.0;
}