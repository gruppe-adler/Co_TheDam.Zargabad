params ["_fences"];

_triggers = [];

{
	_bbr = boundingBoxReal _x;
	_dir = getDir _x;
	_p1 = _bbr select 0;
	_p2 = _bbr select 1;
	_maxWidth = abs ((_p2 select 0) - (_p1 select 0));
	_maxLength = abs ((_p2 select 1) - (_p1 select 1));
	_maxHeight = abs ((_p2 select 2) - (_p1 select 2));

	_trg = createTrigger ["EmptyDetector", getPos _x];
	_trg setVariable ["fenceAttached", _x];
	_trg setTriggerArea [_maxWidth, _maxLength*4, _dir, true];
	_trg setTriggerActivation ["ANY", "PRESENT", true];
	_trg setTriggerStatements [
		"round (time %2) == 0 && {(({(_x isKindOf 'Man')} count thisList) > 0)} && {(thisTrigger getVariable ['fenceAttached',nil]) getVariable ['GRAD_isElectric',false]}", 
		"diag_log format ['%1 entered trigger', thisList];
		{
			[_x, thisTrigger getVariable ['fenceAttached',nil]] spawn GRAD_EF_bzzzHit;
		} forEach thisList;", 
		"diag_log format ['%1 exited trigger', thisList];"
	];

	_triggers = _triggers + [_trg];

	if (GRAD_eletricFence_DEBUG) then {diag_log format ["GRAD_eletricFence_DEBUG: CREATING Trigger %1",_forEachIndex];};

} forEach _fences;


if (GRAD_eletricFence_DEBUG) then {diag_log format ["GRAD_eletricFence_DEBUG: FINISHED %1 Triggers",count _fences];};

_triggers