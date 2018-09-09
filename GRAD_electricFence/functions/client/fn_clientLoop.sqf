params ["_fences"];

[{
	params ["_args", "_handle"];
	_args params ["_fences"];

	if (GRAD_electricFence_DESTROYED) then {
		[_handle] call CBA_fnc_removePerFrameHandler;
	};



	{
		// hintsilent format ["distance: %1", [_x, player] call GRAD_distance2D];

		if ([_x, player] call GRAD_distance2D < 1 && !(player getVariable ["GRAD_electricFence_isHit", false])) then {
			[player, _x] call GRAD_electricFence_fnc_fx_bzzzHit;
			player setVariable ["GRAD_electricFence_isHit", true];
		};
	} forEach _fences;
}, 1, [_fences]] call CBA_fnc_addPerFrameHandler;