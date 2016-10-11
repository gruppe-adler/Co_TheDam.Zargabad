_victim = _this select 0;

if (!(isDedicated)) then 
{
						
	_flame = "#particlesource" createVehicleLocal getpos _victim;
	_flame setParticleCircle [0, [0, 0, 0]];
	_flame setParticleRandom [0.5, [1, .5, 0], [0.5, 0.5, 15], 0.2, 0.2, [0, 0, 0, 0], 0, 0];
	_flame setParticleParams [["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 10, 32], "", "Billboard",1, 0.1, [0, 0, 0], [0, 0, 0.5], 1, 1, 0.9, 0.3, [1.5], [[1, 0.7, 0.7, 0.5]], [0], 0, 10, "", "", _victim];
	_flame setDropInterval 0.0005;

	_light = "#lightpoint" createVehicleLocal getpos _victim;

	_light setLightBrightness 0.025;
	_light setLightAmbient[1, 0.75, 0.75];
	_light setLightColor[1, 0.75, 0.75];
	_light lightAttachObject [_victim, [0,0,1]];
			
	sleep 1;

	deletevehicle _flame; 
	deletevehicle _light;

};