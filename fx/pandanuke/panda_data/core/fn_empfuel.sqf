/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_object", "_start_time", "_total_time", "_fuel", "_sleep"];
_object = _this select 0;
_start_time = time;
_total_time = 100 + random 50;
//_object setHit ["motor", 0.7];
//_object setHit ["elektronika", 0.9];
//_object action ["lightoff",_object];
_sleep = 0.01;
//kabelbrand = "SmallDestructionSmoke" createVehicle position _object; 
//kabelbrand attachTo[_object,[0,1.5,-1]];
playsound ["emp_near", true];
while {alive _object && time - _start_time < _total_time} do
{
  driver _object action ["lightoff", _object];
//_object action ["EngineOff", _object];
//_object setHit ["motor", 0.7];
//_object setHit ["elektronika", 0.9];
//_object action ["lightoff",_object];
  _fuel = fuel _object;
  _object setfuel 0;
  sleep random 0.01;
  _object setfuel _fuel -0.08;
  sleep random _sleep;
  _sleep = _sleep + 0.1;
  
};
{ unassignVehicle _x } forEach crew _object;