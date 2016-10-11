/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_pos", "_selectExtra", "_mines", "_fuel","_i"];
_pos = _this select 0; 
_selectExtra = [
    "ATMine", 
    "APERSMine", 
    "APERSBoundingMine", 
    "SLAMDirectionalMine", 
    "APERSTripMine",
	
	"B_HMG_01_F", 
    "O_HMG_01_F", 
    "B_HMG_01_A_F", 
    "O_HMG_01_A_F", 
    "B_GMG_01_F", 
    "O_GMG_01_F", 
    "B_GMG_01_A_F", 
    "O_GMG_01_A_F", 
    "B_HMG_01_support_F", 
    "B_HMG_01_weapon_F", 
    "B_HMG_01_A_weapon_F", 
    "B_GMG_01_weapon_F", 
    "B_GMG_01_A_weapon_F" 
];

//+++++++++++++++++++++++++extra /mines and weapons
for [{_i=0},{_i < (count _selectExtra)},{_i=_i+1}] do
	{
		//_mines = (getMarkerPos "empzeusarea") nearObjects [_selectStatic select _i, 1000]; // 1000 = distance
		_mines = _pos nearObjects [_selectExtra select _i, panda_zeus_emp1 * 1.0]; 
		
		sleep 0.035;
		{
		_x setDamage 1;
		} forEach _mines;
	};	