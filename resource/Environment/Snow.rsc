Weather resource
{
	MaterialInstance _material = "SnowMaterial.rsc";

	float _transitionTime = 20.0;

	float _size = 15.0;

	float _farFadeStart = 25.0f;
	float _farFade = 30.0;
	float _nearFadeStart = 2.0;
	float _nearFade = 5.0;


	int _particleCount = 1250;
	float _particleSize = 0.1;

	Vector3 _velocityDirection { float _xyz [ 0.2f, 0.1f, -1.0f ] }
	float _velocity = 2.5;
	float _velocityTolerence = 1.0;
	bool _velocityStretch = false;

	EnvironmentSetting _environment
	{
		Color _ambientColor = 0xFF959595;
		Color _lightColor = 0xFF4D4D4D;
		Color _fogColor = 0xFFBFBFBF;
		float _fogNear = -20.0;
		float _fogFar = 140.0;
		float _fogMax = 0.66;
		float _sunHeading = 120.0;
		float _sunPitch = 90.0;
	}
}