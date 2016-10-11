/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_unit", "_start_time", "_total_time", "_fuel"];
_pos = _this select 0;
_xpos = _pos select 0;
_ypos = _pos select 1;
_unit = nearestobjects [[_xpos, _ypos , 0], ["Man"], panda_zeus_emp1];
//{[_x] spawn panda_fnc_empunit} foreach _unit;
//_unit = _this select 0;
_start_time = time;
_total_time = 5;
//playSound ["combat_deafness", true]
_unit action ["GunLightOff", _unit];

//optisch blurisch

	"dynamicBlur" ppEffectEnable true;
    "dynamicBlur" ppEffectAdjust [0.5];
    "dynamicBlur" ppEffectCommit 0.5; //2
	sleep 0.3;
	"dynamicBlur" ppEffectAdjust [2];
    "dynamicBlur" ppEffectCommit 0.4; //1

    "dynamicBlur" ppEffectAdjust [1];
    "dynamicBlur" ppEffectCommit 0.5; //2
sleep 0.4;
"dynamicBlur" ppEffectEnable false;
	
	//items entfernen	
		_unit removeWeapon "NVGoggles";
		_unit removeWeapon "ItemRadio";
		_unit removeWeapon "ItemGPS";
  		_unit removeWeapon	"optic_NVS";
		_unit removeWeapon "optic_Nightstalker";
		_unit removeWeapon	"optic_tws";
		_unit removeWeapon	"optic_tws_mg";
	//	removeAllAssignedItems _unit;
	
while {alive _unit && time - _start_time < _total_time} do
{

null = [ '<t size="1">'+'<t color="#00da40">'+"EMP PULSE FEATURE"+'</t>', 0, 0.8, 5, 1 ] spawn bis_fnc_dynamictext; 
	
};