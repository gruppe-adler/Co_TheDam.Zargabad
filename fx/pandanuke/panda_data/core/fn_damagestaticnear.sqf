/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_array","_pos","_rad","_force","_xPos","_yPos","_push","_time","_xVel","_yVel","_zVel","_coef"];

_pos = _this select 0;
_kT = _this select 1;

sleep (100/300);

{_x setDamage 1} forEach nearestObjects [_pos,[],((ln(_kT)+1)*150)];

sleep (700/300);

_array = _pos nearObjects ["Strategic", ((ln(_kT)+1)*900)];
{if (_x distance _pos > ((ln(_kT)+1)*150)) then {_x setDamage (0.95);};} forEach _array;
_array = _pos nearObjects ["NonStrategic", ((ln(_kT)+1)*900)];
{if (_x distance _pos > ((ln(_kT)+1)*150)) then {_x setDamage (0.95);};} forEach _array;

sleep (600/300);

_array = _pos nearObjects ["Strategic", ((ln(_kT)+1)*1500)];
{if (_x distance _pos > ((ln(_kT)+1)*900)) then {_x setDamage (0.5 + random 0.3);};} forEach _array;
_array = _pos nearObjects ["NonStrategic", ((ln(_kT)+1)*1500)];
{if (_x distance _pos > ((ln(_kT)+1)*900)) then {_x setDamage (0.5 + random 0.3);};} forEach _array;