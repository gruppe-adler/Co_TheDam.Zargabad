/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_pos", "_mines","_selectExtra2"];
_pos = _this select 0;
_selectExtra2 = [
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

//+++++++++++++++++++++++++mines and guns
for [{_i=0},{_i < (count _selectExtra2)},{_i=_i+1}] do
	{
		//_lamps = (getMarkerPos "empzeusarea") nearObjects [_selectStatic select _i, 1000]; // 1000 = distance
		_mines = _pos nearObjects [_selectExtra2 select _i, panda_zeus_emp1 * 1.1]; 
		
		sleep 0.035;
		{
		_x setDamage 1;
		} forEach _mines;
	};  

//_powd = nearestobjects [[_xpos, _ypos , 0], _selectExtra2, panda_zeus_emp1 * 1.5];
//{[_x] setDamage 1;} foreach _powd;	


//_sleep = 0.01;
