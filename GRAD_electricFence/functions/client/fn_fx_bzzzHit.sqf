params ["_unit", "_fence"];

if (!(_unit isKindOf "Man")) exitWith {};

if (_unit getVariable ["ACE_isUnconscious", false]) exitWith {};

// [_unit, true, 60, true] call ace_medical_fnc_setUnconscious;

[_unit, "small", 15] remoteExec ["GRAD_electricFence_fnc_fx_createSmoke", [0,-2] select isDedicated];
// [position _unit, _fence, 0.5] remoteExec ["GRAD_electricFence_fnc_fx_createSparkLightLocal", [0,-2] select isDedicated];


_drop = 0.001+(random 0.02);
_sparkEffect = "#particlesource" createVehicleLocal [getPosATL _fence select 0, getPosATL _fence select 1, 2];
_sparkEffect setParticleCircle [0, [0, 0, 0]];
_sparkEffect setParticleRandom [2, [0.1, 0.1, 0.1], [0, 0, -0.1], 0, 0.25, [0, 0, 0, 0], 0, 0];
_sparkEffect setParticleParams [["\A3\data_f\cl_basic.p3d", 1, 0, 1], "", "Billboard", 1, 3, [0, 0, 0], [0, 0, 0], 0, 15, 7.9, 0, [0.05, 0.04, 0.03], [[1, 0.7, 0.5, 1], [1, 0.7, 0.5, 1], [0, 0, 0, 0]], [0.08], 1, 0, "", "", _fence];
_sparkEffect setDropInterval _drop;

_drop2 = 0.001+(random 0.02);
_sparkEffect2 = "#particlesource" createVehicleLocal [getPosATL _fence select 0, getPosATL _fence select 1, 2];
_sparkEffect2 setParticleCircle [0, [0, 0, 0]];
_sparkEffect2 setParticleRandom [1, [0.05, 0.05, 0.1], [3, 3, 2], 0, 0.0025, [0, 0, 0, 0], 0, 0];
_sparkEffect2 setParticleParams [["\A3\data_f\cl_basic.p3d", 1, 0, 1], "", "Billboard", 1, 3, [0, 0, 0], [0, 0, 0], 0, 20, 7.9, 0, [0.05, 0.04, 0.03], [[1, 0.7, 0.5, 1], [1, 0.7, 0.5, 1], [0, 0, 0, 0]], [0.08], 1, 0, "", "", _fence];
_sparkEffect2 setDropInterval _drop2;

[{deleteVehicle _this;}, _sparkEffect, 0.2] call CBA_fnc_waitAndExecute;
[{deleteVehicle _this;}, _sparkEffect2, 0.3] call CBA_fnc_waitAndExecute;


[{player setVariable ["GRAD_electricFence_isHit", false];}, [], 5] call CBA_fnc_waitAndExecute;