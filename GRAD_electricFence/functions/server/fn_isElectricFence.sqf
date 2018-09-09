/*
 * Arguments:
 * 0: An Object To Test <OBJECT>
 *
 * Return Value:
 * Is it an electric fence <BOOL>
 */


params ["_object"];

private _returnValue = _object getVariable ["GRAD_isElectric",false];

_returnValue