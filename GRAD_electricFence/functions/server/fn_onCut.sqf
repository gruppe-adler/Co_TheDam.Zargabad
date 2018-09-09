params ["_unit", "_fence"];

[_unit, _fence] call GRAD_electricFence_fnc_fx_bzzzHit;
(_unit) setVariable ["GRAD_electricFence_isHit", true];