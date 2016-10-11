/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
panda_debug =0 ;
private ["_pos","_xpos", "_ypos", "_selectStatic", "_selectVehicle", "_selectUnits", "_selectInventory", "_selectExtra", "_lamps", "_electrics", "_fuel", "_mines", "_gear", "_powered", "_items", "_units", "_vehicles", "_marker1", "_marker2", "_sleep"];

_pos = _this select 0;
_xpos = _pos select 0;
_ypos = _pos select 1;

if (isServer) then {

	deleteMarker 'empzeusarea';
	deleteMarker 'empzeustext';


	panda_objectx = "Land_Bucket_F" createvehicle _pos;
	panda_objectx setpos _pos; 



	_pad = createVehicle ["Land_HelipadEmpty_F", _pos, [], 0, "NONE"];
	_pad attachto [_pos,[0,0,0]];
	_pad hideobject true;
	_padPos = position _pad;
	_padPosX = _padPos select 0;
	_padPosY = _padPos select 1;
	_padPosZ = _padPos select 2; 
	
	if (panda_debug == 1) then
	{
	panda_zeus_emp1 = (500 + random 300);
	panda_zeus_empmarker = 1;
	};

	// Marker erstellen
	if (panda_zeus_empmarker == 1) then
	{
	//if (isNil ("empzeusarea")) then {hint "only first emp area is shown on map"};
	  _marker1 = createmarker["empzeusarea", [_pos select 0, _pos select 1]];
	//if (isNil ("empzeustext")) exitwith {}; //then {hint "only first emp area is shown on map"};  
	  _marker2 = createmarker["empzeustext", [_pos select 0, _pos select 1]];

	  "empzeusarea" setmarkershape "ellipse";
	  "empzeusarea" setmarkerbrush "fdiagonal";
	  "empzeusarea" setmarkersize [panda_zeus_emp1, panda_zeus_emp1];
	  "empzeusarea" setmarkercolor "colorblue";

	  "empzeustext" setmarkershape "icon";
	  "empzeustext" setmarkertype "hd_dot";
	  "empzeustext" setmarkertext "EMP BEREICH";
	  "empzeustext" setmarkercolor "colorblue";
	};
	//playSound ["explimpact", true];
	playSound ["empdistort", true];


	[_pos] spawn panda_fnc_emplight;
	//[] spawn panda_fnc_empflash;
	[_pos] call panda_fnc_empsound;
	[_pos] spawn panda_fnc_emplamps;
	[_pos] spawn panda_fnc_empwave;
	[_pos] spawn panda_fnc_empwave2;
	[] spawn panda_fnc_emplightx;
	[_pos] spawn panda_fnc_empefx;
	[_pos] spawn panda_fnc_empblur;
	[_pos] spawn panda_fnc_empvec;
	[_pos] spawn panda_fnc_empair;
	[_pos] spawn panda_fnc_empunits;
	playSound ["empfizz", true]; 
	


}; // Close isServer


//+++reste

//sleep 10;

//++++++++++++++++++++++++++++++	
	//[] call panda_fnc_envistop;
	//[_pos] spawn panda_fnc_empguns;
	//[_pos] spawn panda_fnc_emppowered;

//sleep 0.01;
/*
_powered = nearestobjects [[_xpos, _ypos , 0], _selectExtra, panda_zeus_emp1];
{[_x] spawn panda_fnc_emppowered} foreach _powered;	

_vehicles = nearestobjects [[_xpos, _ypos , 0], ["Car", "Motorcycle", "Tank", "Air", "Ship"], panda_zeus_emp1];
{[_x] spawn panda_fnc_empvec} foreach _vehicles;

_units = nearestobjects [[_xpos, _ypos , 0], ["Man"], panda_zeus_emp1];
{[_x] spawn panda_fnc_empunit} foreach _units;

//[_xpos, _ypos] execvm "\panda_syndicate\panda_data\defcons\emp\fn_empextra.sqf";
*/