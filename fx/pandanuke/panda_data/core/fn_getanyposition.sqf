/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
// get the position of anything
// parameters: anything of arma3
// example: ["my marker"] call panda_fnc_getanyposition;

private ["_thing"];
	_thing = _this select 0;
	switch (typeName _thing) do {
		case "OBJECT": {getPos _thing};
		case "STRING": {getMarkerPos _thing};
		case "ARRAY": {getWPPos _thing};
		default {[0,0,0]};
	};