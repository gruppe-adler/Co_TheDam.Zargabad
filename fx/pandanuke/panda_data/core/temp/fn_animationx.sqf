//[[posx, posy] nearestobject objektx, 1] call panda_fmc_animationx.sqf;
//[objektx, 1] call panda_fmc_animationx.sqf;
private ["_object", "_phase", "_animCfgList"];

_object = _this select 0;
_phase = _this select 1;

_animCfgList = configfile >> "CfgVehicles" >> typeof _object >> "AnimationSources";
for "_i" from 0 to count _animCfgList - 1 do
{
  _object animate [configname (_animCfgList select _i), _phase];
};