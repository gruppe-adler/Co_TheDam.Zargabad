private ["_xpos", "_ypos", "_dis", "_damage"];

_xpos = _this select 0;
_ypos = _this select 1;

for [{_dis = 300}, {_dis <= panda_mod_radsize}, {_dis = _dis + 100}] do
{
  [_xpos, _ypos, _dis] execvm "\panda_syndicate\panda_data\defcons\001\wave.sqf";

};


[_xpos, _ypos, time] execvm "\panda_syndicate\panda_data\defcons\001\geiger.sqf";
[_xpos, _ypos, time] execvm "\panda_syndicate\panda_data\defcons\001\radiation.sqf";
