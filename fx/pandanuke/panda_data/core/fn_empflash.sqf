/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_ret","_amount","_bgtcontrast","_color"];
bFlashInProgress = true;
_amount = call fn_SunElev;
_amount = [_amount, -14, -1] call fn_Normalize;
_amount = _amount min 1;
_amount = _amount max 0;
_amount = 1 - _amount; //Max effect when sun is -10° below horizon (or lower), no effect when sun is -1° below horizon (or higher).
_bgtcontrast = 1.0 - 0.25 * _amount;
_color = -0.06 * _amount;
//Start
_ret = [_bgtcontrast, _bgtcontrast, 0, [0, 0, _color, _color],[0, 0, 0, 1],[0, 0, 0, 0]];
ppBlueNight ppEffectAdjust _ret;
ppBlueNight ppEffectCommit 0.0;
waitUntil {ppEffectCommitted ppBlueNight};
//Flash
_ret = [1, 1, 0.35, [0, 0, _color, _color],[0, 0, 0, 1],[0, 0, 0, 0]];
ppBlueNight ppEffectAdjust _ret;
ppBlueNight ppEffectCommit 0.12;
waitUntil {ppEffectCommitted ppBlueNight};
//Fade fast
_ret = [_bgtcontrast, _bgtcontrast, 0.15, [0, 0, _color, _color],[0, 0, 0, 1],[0, 0, 0, 0]];
ppBlueNight ppEffectAdjust _ret;
ppBlueNight ppEffectCommit 3.0;
waitUntil {ppEffectCommitted ppBlueNight};
//Fade medium
_ret = [_bgtcontrast, _bgtcontrast, 0.03, [0, 0, _color, _color],[0, 0, 0, 1],[0, 0, 0, 0]];
ppBlueNight ppEffectAdjust _ret;
ppBlueNight ppEffectCommit 6.0;
waitUntil {ppEffectCommitted ppBlueNight};
//Fade slow
_ret = [_bgtcontrast, _bgtcontrast, 0, [0, 0, _color, _color],[0, 0, 0, 1],[0, 0, 0, 0]];
ppBlueNight ppEffectAdjust _ret;
ppBlueNight ppEffectCommit 12.0;
waitUntil {ppEffectCommitted ppBlueNight};
bFlashInProgress = false;