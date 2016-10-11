/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_obj", "_rad"];
systemchat  "Generator Bereit!";
_obj = _this select 0;
_rad = _this select 1;
[_obj,_rad] spawn panda_fnc_strahlung;
[_obj,_rad] spawn panda_fnc_geiger;
systemchat  "Vorsicht Strahlung!";


