private ["_object", "_bomb", "_xpos","_ypos"];


_xpos = _this select 0;
_ypos = _this select 1;

_bomb = "Land_HelipadEmpty_F" createvehicle [_xpos , _ypos , 1];
_bomb allowdammage false;
_bomb say ["windimpact", panda_mod_radsize];//


sleep 10;
deletevehicle _bomb;