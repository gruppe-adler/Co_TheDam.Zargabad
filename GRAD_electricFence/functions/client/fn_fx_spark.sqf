params ["_fence"];

// todo

_sparkPos = [_fence] call GRAD_electricFence_fnc_fx_getSparkSpawnPos;

[_sparkPos] call GRAD_electricFence_fnc_fx_spawnSpark;

//[_sparkPos, _fence, 2] call GRAD_electricFence_fnc_fx_createSparkLightLocal;