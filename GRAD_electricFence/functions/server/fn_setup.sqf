
_fences = [] call GRAD_electricFence_fnc_findFences;
_doors = [] call GRAD_electricFence_fnc_findDoors;

_soundDuration = 18.797;
_fencesCount = count _fences;

if (count _fences > 0) then {
	_fxLoop = [_fences, _soundDuration, _fencesCount, GRAD_electricFence_generator] spawn GRAD_electricFence_fnc_fxLoop;
	[_fences] remoteExec ["GRAD_electricFence_fnc_clientLoop", [0,-2] select isDedicated];
};


{
  [_x] call GRAD_electricFence_fnc_addDoorEH;
} forEach  _doors;
