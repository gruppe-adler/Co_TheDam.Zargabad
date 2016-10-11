private ["_object", "_bomb", "_pos"];

_object = _this select 0;

_pos = getpos _object;
_bomb = "Bo_GBU12_LGB" createvehicle [_pos select 0, _pos select 1, (_pos select 2) + 0.1];
_bomb setvelocity [0, 0, -100];
_object setdammage 1;
deletevehicle _object;

sleep 3;

//_bomb = "HeliHEmpty" createvehicle _pos;
_bomb = "Land_HelipadEmpty_F" createvehicle _pos;
//Land_HelipadEmpty_F
_bomb allowdammage false;
_bomb say ["snd_boom001", strahlungs_radius];

playsound ["snd_boom001",true];

sleep 60;
deletevehicle _bomb;