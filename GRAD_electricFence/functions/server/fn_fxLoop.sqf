params ["_fences", "_soundDelay", "_fencesCount", "_generator"];

[{
	params ["_args", "_handle"];
	_args params ["_fences"];

	if (GRAD_electricFence_DESTROYED) then {
		[_handle] call CBA_fnc_removePerFrameHandler;
	};

	{
		[{
			[_this] remoteExec ["GRAD_electricFence_fnc_fx_spark", [0,-2] select isDedicated];
		}, _x, (5 * _forEachIndex)] call CBA_fnc_waitAndExecute;
	} forEach _fences;
}, _fencesCount * 5, [_fences]] call CBA_fnc_addPerFrameHandler;


[{
	params ["_args", "_handle"];
	_args params ["_generator"];

	_generator say3D ["GRAD_electricFence_sound_hum", 50];

	if (GRAD_electricFence_DESTROYED) then {
		[_handle] call CBA_fnc_removePerFrameHandler;
	};

}, _soundDelay, [_generator]] call CBA_fnc_addPerFrameHandler;