/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_veh", "_rad"];
systemchat  "AKTIV!";
ARMED = true;
private "_veh";

_veh = _this select 0;
_pos = getPos _veh; 
_vehtype = typeOf _veh;
_deadDelay = (_this select 1) * 10;
_time = [_this, 1, 0, [0]] call BIS_fnc_param;
//cutText [format ["Code: %1\n", panda_CODE], "PLAIN DOWN"];

//_veh addAction [("<t color='#E61616'>" + ("Show the Code") + "</t>"),hint "code system will be avaiable soon","",1,true,true,"","(_target distance _this) < 3"];

//_veh addAction [("<t color='#E61616'>" + ("Show the Code") + "</t>"),"\panda_syndicate\panda_data\defcons\codex\searchAction.sqf","",1,true,true,"","(_target distance _this) < 3"];
//_veh addAction [("<t color='#E61616'>" + ("DEFUSE") + "</t>"),"\panda_syndicate\panda_data\defcons\codex\defuseAction.sqf",[false],1,true,true,"","(_target distance _this) < 3"]; //this enableSimulation false";

//[panda_CODE, CODEINPUT] spawn panda_fnc_codeCompare;
//waitUntil {!alive _veh};
/*
while {_time > 0 && !DEFUSED} do {
	_time = _time - 1;  
	hintSilent format["Bomb Detonation: \n %1", [((_time)/60)+.01,"HH:MM"] call BIS_fnc_timetostring];

	if (_time < 1) then {
		_blast = createVehicle ["HelicopterExploSmall", _pos, [], 0, "NONE"];
		{
			if (_x distance _veh <= 15) then {_x setDamage 1};
		} forEach allUnits;
	};
	if (ARMED) then {
		_time = 5; 
		ARMED = false
	};
	
	sleep 1;
};
*/