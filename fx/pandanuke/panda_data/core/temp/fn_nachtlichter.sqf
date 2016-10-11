//[[posx, posy], 800, 1] call panda_fnc_nachtlichter.sqf;
private ["_centre", "_radius", "_phase", "_anims", "_animCfgList", "_configname"];

_centre = _this select 0;
_radius = _this select 1;
_phase  = _this select 2;
_anims = ["Lights_1", "Lights_2", "Lights_3", "Lights_4", "Lights_5"];

{
  _animCfgList = configfile >> "CfgVehicles" >> typeof _x >> "AnimationSources";
  for "_i" from 0 to count _animCfgList - 1 do
  {
    _configname = configname (_animCfgList select _i);
    if ( _configname in _anims )
      then {_x animate [_configname, _phase]}
      else {if ( _phase == 1 ) then {_x animate [_configname, 0]}};
  };  
} foreach nearestobjects [_centre, ["House"], _radius];