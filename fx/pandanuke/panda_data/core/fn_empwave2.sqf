/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
//private ["_pos","_light","_lightPos"];
_pos = _this select 0; 
//++++++++++welle visuell
	_Wave = "#particlesource" createVehicleLocal _pos;
	_Wave setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract",1,0,1], "", "Billboard", 1, 20/2, [0, 0, 0],
					[0, 0, 0], 0, 1.5, 1, 0, [50, 100], [[0.1, 0.1, 0.1, 0.5], 
					[0.5, 0.5, 0.5, 0.5], [1, 1, 1, 0.3], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", _pos];
	_Wave setParticleRandom [2, [20, 20, 20], [5, 5, 0], 0, 0, [0, 0, 0, 0.1], 0, 0];
	_Wave setParticleCircle [50, [-80, -80, 2.5]];
	_Wave setDropInterval 0.0002;

	sleep 0.1;
	_Wave setDropInterval 0.001*10;
	_Wave setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract",1,0,1], "", "Billboard", 1, 20/2, [0, 0, 0],
					[0, 0, 0], 0, 1.5, 1, 0, [50, 100], [[0.1, 0.1, 0.1, 0.5], 
					[0.5, 0.5, 0.5, 0.5], [1, 1, 1, 0.3], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", _pos];
	_Wave setParticleCircle [50, [-40, -40, 2.5]];

	_Wave setDropInterval 0.01;
	
	//

    _light = "#lightpoint" createVehicleLocal _pos;
    _light setLightAmbient [0/255, 15/255, 15/255];   
    _light setLightColor [255/255, 215/255, 80/255];
    _light setLightBrightness 1.0;
    _light attachTo [_pos, [0,0,0]];
    sleep 0.1;
	deleteVehicle _Wave;
