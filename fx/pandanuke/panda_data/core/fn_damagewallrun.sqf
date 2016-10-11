/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_unit","_pos","_rad","_force","_xPos","_yPos","_coef","_fi","_soundPos","_Sound","_shockWaveSpreadDistance","_shockDistance"];
if (isServer) exitWith {};
//if (isDedicated) then {
//systemchat "Dedicated Server on the run !";
_unit = _this select 0;
_pos = _this select 1;


_shockWaveSpreadDistance = 0;
_shockDistance = _unit distance _pos; 

sleep 0.1;



while {_shockWaveSpreadDistance < (_shockDistance - 1)} do {
_shockWaveSpreadDistance = _shockWaveSpreadDistance + ln(_shockDistance - _shockWaveSpreadDistance)*((ln(mT)+1)*21)/10;
//hintSilent format ["myShockwave: %1\n myShockdistance: %2",_shockWaveSpreadDistance,_shockDistance];
sleep 0.1;
};
if ((isPlayer _unit or player in _unit)and(_unit distance _pos < ((ln(mT)+1) * 3333))and(_shockWaveSpreadDistance < _shockDistance)) then {

_unit say3D ["windimpact",true];
sleep 0.1;
};

//};