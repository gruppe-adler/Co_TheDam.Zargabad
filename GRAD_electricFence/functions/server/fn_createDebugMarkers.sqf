params ["_fences", "_triggers"];

{
	_currentTriggerArea = triggerArea (_triggers select _forEachIndex);
	_a = _currentTriggerArea select 0;
	_b = _currentTriggerArea select 1;
	_dir = _currentTriggerArea select 2;

	_markerName =  format["triggerMarker_%1_%2", getPos _x select 0, getPos _x select 1];

	_triggerMarker = createMarker [_markerName, getPos _x];
	_triggerMarker setMarkerShape "RECTANGLE";
	_triggerMarker setMarkerSize [_a, _b];
	_triggerMarker setMarkerDir _dir;
	_triggerMarker setMarkerColor "ColorWEST";

} forEach _fences;