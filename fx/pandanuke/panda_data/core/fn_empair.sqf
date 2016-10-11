/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
_pos = _this select 0;

_airs = _pos nearObjects ["Air", panda_zeus_emp1 * 1.5];
{[_x] spawn panda_fnc_empfuel;[_x] spawn panda_fnc_empefx2;_x setHitPointDamage ["HitVRotor", 1.0];_x setDamage 0.1;} forEach _airs;