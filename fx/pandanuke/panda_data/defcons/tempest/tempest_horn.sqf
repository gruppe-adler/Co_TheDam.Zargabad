/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_car","_siren"];

_car = _this select 0;


waitUntil {(_car getvariable ["hornon", false])};

	_horn = createVehicle ["Land_Battery_F", getpos _car,[], 0, ""];
	_horn Attachto [_car, [0,0,-0.8]];
	_horn say ["hornA",15,10];

		
	while {(_car getvariable ["hornon", false]) and canmove _car} do {

	
			
	
			if(!canmove _car)exitwith{};
			Sleep 1;
};
deletevehicle _horn;
if(!canmove _car)exitwith{};

[_car] execVM "\panda_syndicate\panda_data\defcons\tempest\tempest_horn.sqf";