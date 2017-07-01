Weather resource
{
	MaterialInstance _material = "RainMaterial.rsc";

	float _transitionTime = 20.0;

	float _size = 10.0;

	float _farFadeStart = 16.0;
	float _farFade = 20.0;
	float _nearFadeStart = 1.0;
	float _nearFade = 2.0;
	
	int _particleCount = 625;
	float _particleSize = 0.02;

	Vector3 _velocityDirection { float _xyz [ 0.4f, 0.3f, -1.0f ] }
	float _velocity = 30.0;
	float _velocityTolerence = 10.0;
	bool _velocityStretch = true;

	EnvironmentSetting _environment
	{
		Color _ambientColor = 0xFF7A7C7D;
		Color _lightColor = 0xFF2B2D30;
		Color _fogColor = 0xFF626262;
		float _fogNear = -50.0;
		float _fogFar = 166;
		float _fogMax = 0.66;
		float _sunHeading = 120.0;
		float _sunPitch = 90.0;
	}
}