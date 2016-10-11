/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_pos", "_selectUnits", "_gear", "_x"];
_pos = _this select 0; 
_selectUnits = ["Man"];
//+++++++++++++++++++++++++units
for [{_i=0},{_i < (count _selectUnits)},{_i=_i+1}] do
	{
		//_gear = (getMarkerPos "empzeusarea") nearObjects [_selectStatic select _i, 1000]; // 1000 = distance
		_gear = _pos nearObjects [_selectUnits select _i, panda_zeus_emp1 * 1.1]; 
		
		sleep 0.035;
		{
		[] spawn { 
				//_noizz = createSoundSource ["empshort1", position player, [], 0]; //starts alarm 
				//sleep 10; 
				//deleteVehicle _noizz; //stops alarm 
				}; 
		playSound ["emp_near", true];		
		_x removeWeapon "NVGoggles";
		_x removeWeapon "ItemRadio";
		_x removeWeapon "ItemGPS";

		_x removeWeapon	"optic_NVS";
		_x removeWeapon "optic_Nightstalker";
		_x removeWeapon	"optic_tws";
		_x removeWeapon	"optic_tws_mg";

		_x removeWeapon "Laserdesignator";
		_x removeWeapon "acc_pointer_IR";
		//removeAllAssignedItems _x;	//sicherheits check	
		} forEach _gear;
	};	

