// prevent client execution
if (!isServer) exitWith {};

GRAD_electricFence_DEBUG = true;
GRAD_electricFence_DESTROYED = false;

[] call GRAD_electricFence_fnc_setup;


["ace_wireCuttingStarted", GRAD_electricFence_fnc_onCut] call CBA_fnc_addEventHandler;

GRAD_distance2D = {
	params ["_unit","_obj"];
	_uPos = _obj worldToModel (getPos _unit);
	_oBox = boundingBoxReal _obj;
	_pt = [0, 0, 0];
	{
		if (_x < (_oBox select 0 select _forEachIndex)) then {
			_pt set [_forEachIndex, (_oBox select 0 select _forEachIndex) - _x];
		} else {
			if ((_oBox select 1 select _forEachIndex) < _x) then {
				_pt set [_forEachIndex, _x - (_oBox select 1 select _forEachIndex)];
			}
		}
	} forEach _uPos;
	_pt distance [0, 0, 0]
};