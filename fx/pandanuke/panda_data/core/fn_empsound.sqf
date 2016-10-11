/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_pos"];
_pos = _this select 0; 
if (player distance _pos < panda_zeus_emp1) then {playSound ["emp_far", true]};
if (player distance _pos > panda_zeus_emp1) then {playSound ["emp_far2", true]};


