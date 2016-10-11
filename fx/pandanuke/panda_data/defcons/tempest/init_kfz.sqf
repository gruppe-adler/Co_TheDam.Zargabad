/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_obj", "_rad"];
systemchat  "KFZ Bereit!";
_obj = _this select 0;
_rad = _this select 1;
[_obj,_rad] spawn panda_fnc_strahlung;
[_obj,_rad] spawn panda_fnc_geiger;
//systemchat  "Vorsicht Strahlung!";
waitUntil {!alive _obj};
/*
while {_time > 0} do {
	_time = _time - 1;  
	hintSilent format["DEVICE Detonation: \n %1", [((_time)/60)+.01,"HH:MM"] call BIS_fnc_timetostring];
	sleep 1;
};
*/
//waitUntil {alive _blast};

//[getpos _obj] call panda_fnc_atom001;
_v7gen=[[getpos _obj],"panda_fnc_atom007",true,false] spawn BIS_fnc_MP;
