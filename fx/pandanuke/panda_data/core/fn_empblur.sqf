/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_pos"];
_pos = _this select 0;
//++++++++++++ blur
	if (player distance _pos < 2000) then {
		"dynamicBlur" ppEffectEnable true;
		"dynamicBlur" ppEffectAdjust [0.5];
		"dynamicBlur" ppEffectCommit 0.5; //2
		sleep 0.3;
		"dynamicBlur" ppEffectAdjust [2];
		"dynamicBlur" ppEffectCommit 0.4; //1

		"dynamicBlur" ppEffectAdjust [1];
		"dynamicBlur" ppEffectCommit 2; //0.5
		sleep 1;
		"dynamicBlur" ppEffectEnable false;
	};


exit;