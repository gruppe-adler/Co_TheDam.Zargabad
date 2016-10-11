/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
// Argument 0 is module logic
_logic = [_this,0,objNull,[objNull]] call BIS_fnc_param;
// Argument 1 is list of affected units (affected by value selected in the 'class Units' argument))
_units = [_this,1,[],[[]]] call BIS_fnc_param;
// True when the module was activated, false when it's deactivated (i.e., synced triggers are no longer active)
_activated = [_this,2,true,[true]] call BIS_fnc_param;

_modules = _logic call BIS_fnc_moduleModules;
_module = objNull;
	
//_cost = getNumber (configFile >> "CfgVehicles" >> _classtarget >> "cost");

// Module specific behavior. Function can extract arguments from logic and use them.
if (_activated && count _modules >0) then {
	 // ... Splendid code here ...
	 
	_syncNModul = synchronizedObjects _logic;
	_obj = _syncNModul select 0;
	_pos = _syncNModul select 1;	//position linked trigger&module&object with chain - dont work !
	 
	 
	_posLogic = position _logic; //position module
	_dir = _logic getvariable ["dir",random 360];
	_megaT = _logic getVariable ["MegaT",50];
	_zeitV = _logic getVariable ["Zeitv",0];
	_metodV = _logic getVariable ["Metodv",1];
	_wolkeV = _logic getVariable ["Wolkev",1];
	_radius = _logic getVariable ["Radius",900];
	_nameV = _logic getVariable ["Name",""]; 	 
	//hint format [" test1: %1<br/>test2 %2",panda_data_active,panda_mod_defcon];
	//systemchat "panda modul daten gesammelt";	 

	_mtRad = _megaT * _megaT;
	_objPos = position _obj; //position linked trigger&module&object with chain  //test?
	_objPosX = _objPos select 0;
	_objPosY = _objPos select 1;
	_objPosZ = _objPos select 2; 
	

switch (_metodV) do 
		{
	case 1 : {
			//systemchat "Version 1";
			"Bo_GBU12_LGB_MI10" createVehicle [_objPosX,_objPosY,0];
			[_nameV,4,1,20,2] spawn BIS_fnc_dynamicText; 
			//[_objPos,_radius] call panda_fnc_atom001;
			_v1mod=[[_objPos,_radius],"panda_fnc_atom001",true,false] spawn BIS_fnc_MP;
			
			};
	case 2 :	{
			//systemchat "Version 2";
			"R_TBG32V_F" createVehicle [_objPosX,_objPosY,0];
			[_objPos] call panda_fnc_atom002;
			};
	case 3 :	{
			//systemchat "Version 3";
			"R_TBG32V_F" createVehicle [_objPosX,_objPosY,0];	
			[_objPos] call panda_fnc_atom003;				
			};
	case 4 :	{
			//systemchat "Version 4";
			"R_TBG32V_F" createVehicle [_objPosX,_objPosY,0];
			[_objPos] call panda_fnc_atom004;
			};	
	case 5 :	{
			//systemchat "Version 5";		
			"R_TBG32V_F" createVehicle [_objPosX,_objPosY,0];
			[_objPos] call panda_fnc_atom005;
			};				
	case 6 :	{
			//systemchat "Version 6";		
			"R_TBG32V_F" createVehicle [_objPosX,_objPosY,0];
			[_objPos] call panda_fnc_atom006a;
			};
	case 7 :	{
			//systemchat "Version 7";		
			"R_TBG32V_F" createVehicle [_objPosX,_objPosY,0];
			//[_objPos] call panda_fnc_atom007;
			_v7mod=[[_objPos],"panda_fnc_atom007",true,false] spawn BIS_fnc_MP;
			};			
		};		 
	};

// Module function is executed by spawn command, so returned value is not necessary.
// However, it's a good practice to include one.
true