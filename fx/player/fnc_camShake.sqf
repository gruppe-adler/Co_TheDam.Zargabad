params ["_player", "_pos"];

if (_player distance _pos < 200) then {
	addCamShake [1+random 5,1+random 3, 5+random 15];
};