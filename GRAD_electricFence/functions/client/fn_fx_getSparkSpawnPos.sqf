params ["_fence"];

_sparkSpawnPosition = [getPosASL _fence select 0, getPosASL _fence select 1, 1.6];


// take nearest fence position and return spark position
/*
_eyePos = eyePos _unit;
_watchVector = _eyePos vectorAdd ((eyeDirection _unit) vectorMultiply 5);

_intersections = lineIntersectsSurfaces [_eyePos, _watchVector, _unit, objNull, true, 1];
(_intersections select 0 ) params ["_intersectPosASL","_surfaceNormal", "_intersectObject","_parentObject"];


if (!isNull _intersectObject) then {
	if (_intersectObject == _fence) then {
		_sparkSpawnPosition = _intersectPosASL;
	};
};
*/

_sparkSpawnPosition