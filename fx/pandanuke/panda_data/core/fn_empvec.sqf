/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_pos", "_vehicles","_tanks"];
_pos = _this select 0;
_xpos = _pos select 0;
_ypos = _pos select 1;
_v = [];
_x =[];

_vehicles = nearestobjects [[_xpos, _ypos , 0], ["LandVehicle","Car", "Motorcycle", "Ship"], panda_zeus_emp1];
{[_x] spawn panda_fnc_empfuel;[_x] call panda_fnc_empefx2;} foreach _vehicles;
//_vehicles setHitPointDamage ["Motor", 0.9];
//_vehicles setHit ["motor", 0.7];


_tanks = nearestobjects [[_xpos, _ypos , 0], ["Tank"], panda_zeus_emp1];
{[_x] spawn panda_fnc_empfuel;[_x] call panda_fnc_empefx2} foreach _tanks;
//_tanks setHitPointDamage ["HitEngine", 0.9];
//_tanks setHit ["HitEngine", 0.9];
