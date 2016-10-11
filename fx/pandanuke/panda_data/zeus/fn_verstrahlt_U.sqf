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

// Module specific behavior. Function can extract arguments from logic and use them.
if (_activated) then {
	//--- Get unit under cursor
	_unit = objnull;
	_mouseOver = missionnamespace getvariable ["bis_fnc_curatorObjectPlaced_mouseOver",[""]];
	if ((_mouseOver select 0) == typename objnull) then {_unit = _mouseOver select 1;};
	
	[_unit,30] spawn panda_fnc_geiger;	
	//Load up the dialog
	//_ok = createDialog "RscDisplayAttributesModuleUnitSpeed";
	//waitUntil { dialog };
	//sleep 0.1;
	
	_ok = createDialog "MyHelloWorldDialog"; 
	waitUntil { !dialog }; 
	hint "Dialog closed.";

	//Wait until the dialog has been closed
	//waitUntil { !dialog };

	//Get config from saved UI variables
	//_speed = uinamespace getVariable "RscDisplayControlsNuke001_DamageValue";
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*
	//funktioniert aber nolink und kein betreten
	_bp = createVehicle ["O_Truck_03_device_F", getPosATL _logic, [], 0, "CAN_COLLIDE"];
	_backPackLoc = _bp modelToWorld [0,0,0];
	_gridPos = mapGridPosition _backPackLoc;
	hint format ["ATOM KFZ gespawnt - Koordinaten %1", _gridPos];
	*/
	
	
	//tempest =["O_Truck_03_device_F"];
    //tempest addCuratorEditableObjects [[objects],false]

 //objnull setObjectTexture [0,"\panda_syndicate\panda_data\defcons\Tempest_panda\truck_03_ext01_co.paa"]; 
	[_unit,1] spawn panda_fnc_strahlung;
	[_unit,10] spawn panda_fnc_geiger;
	//[_unit,10] spawn panda_fnc_strahlung;
	[objnull, format["%1 Einheit ist Radioaktiv verstrahlt %2", name _unit, mapGridPosition _unit]] call bis_fnc_showCuratorFeedbackMessage;
	if !(alive _unit) then {
	[_unit] spawn panda_fnc_mininuke;
	//[_logic,10,false,true,100] spawn panda_fnc_Druckpunkt; 
	};
	//deletevehicle _logic;
	
	
	
	if(isnull _unit) exitWith {
	[objnull, "Error - Module was not placed on any unit"] call bis_fnc_showCuratorFeedbackMessage;
	deletevehicle _logic;
	};
};

// Module function is executed by spawn command, so returned value is not necessary.
// However, it's a good practice to include one.
true