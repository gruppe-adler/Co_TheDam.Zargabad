private _allObjects = [worldSize/2, worldSize/2] nearObjects 20000; // entities "";

if (GRAD_electricFence_DEBUG) then {diag_log format ["GRAD_electricFence_DEBUG: found %1 entities to check for fences",count _allObjects];};

private _fences = [];

{
// if (GRAD_electricFence_DEBUG) then {diag_log format ["GRAD_electricFence_DEBUG: checking %1 for fence", _x];};
	if (_x getVariable ["GRAD_isElectric",false]) then {
		_fences = _fences + [_x];
	};
} forEach _allObjects;



if (GRAD_electricFence_DEBUG) then {diag_log format ["GRAD_electricFence_fnc_DEBUG: found %1 electric Fences",count _fences];};

_fences