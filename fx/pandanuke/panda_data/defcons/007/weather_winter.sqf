
/*
   call it in your init.sqf: execVM "weather_winter.sqf";	
  
  Description:
   weather script: winter
   color filter, light snow particles and ground fog around the player
["\A3\data_f\ParticleEffects\Universal\Universal.p3d",1,0,1,0],
["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d",1,0,1,0],
["\A3\data_f\ParticleEffects\Universal\UniversalOnSurface.p3d",1,0,1,0],
["\A3\data_f\cl_water",1,0,1,0],
["\A3\data_f\cl_basic",1,0,1,0],
["\A3\data_f\ParticleEffects\Universal\smoke.p3d",1,0,1,0],
["\A3\data_f\cl_fireD"
*/
private ["_pos","_snow","_fog","_enabled","_snowon","_pphandle"];

if (isDedicated) exitWith {};

_pphandle = ppEffectCreate ["colorCorrections", 327723];
_pphandle ppEffectAdjust [1, 1, 0, [0.01, 0.02, 0.04, 0.01], [0.87, 1.08, 1.196, 0.3], [0.399, 0.287, 0.014, 0.0]];
_pphandle ppEffectCommit 3;

sleep 3;
_pos = position (vehicle player);

_snow = "#particlesource" createVehicleLocal _pos; 
_snow setParticleParams [["\A3\data_f\cl_water",16,12,13,0],"","Billboard",1,7,[0, 0, 20.0],[0, 0, -0.35],1.0,0.000001,0.0,0.4,[0.08,0.05],[[1.0,1.0,1.0,1.0],[0.94,0.94,0.96,1.0],[1.0,1.0,1.0,1.0]],[1000],0,0.01,"","",vehicle player];
_snow setParticleRandom [2,[35, 35, 10],[0.0, 0.0, -0.1],0.001,0.05,[0.01, 0.01, 0.01, 0.02],0.002,360];
_snow setParticleCircle [0,[0.0, 0.0, -0.1]];
_snow setDropInterval 1;

_fog = "#particlesource" createVehicleLocal _pos; 
_fog setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal" , 16, 12, 13, 0], "", "Billboard", 1, 10,[0, 0, -6], [0, 0, 0], 1, 1.275, 1, 0, [7,6], [[1, 1, 1, 0], [1, 1, 1, 0.04], [1, 1, 1, 0]], [1000], 1, 0, "", "", vehicle player];
_fog setParticleRandom [3, [55, 55, 0.2], [0, 0, -0.1], 2, 0.45, [0, 0, 0, 0.1], 0, 0];
_fog setParticleCircle [0.1, [0, 0, -0.12]];
_fog setDropInterval 1;


_enabled = false;
//_snowon = false;

			//_enabled = true;
			setWind [2.342, 3.108, true];
			//_pphandle ppEffectEnable true;
			//_pphandle ppEffectCommit 3;
			_snow setDropInterval 0.01;
			_fog setDropInterval 0.01;
			_snowon = true;

sleep 5;
exit;
