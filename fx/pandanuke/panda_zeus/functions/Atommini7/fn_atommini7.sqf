/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
_logic = _this select 0;
_activated = _this select 2;
if (_activated) then {
		//createdialog "RscDisplayControlsNuke007";
	//_ok = createDialog "RscTestControlTypes";
	//_ok = createDialog "RscDisplayAttributeAtommini";	
	//_ok ctrlCreate ["_CTR_SLIDERradius_Value", 9960];
	
	//_radius = uinamespace setVariable "RscTestControlTypes_CTR_SLIDER_Value";
	//_radius2 = uinamespace setVariable "RscTestControlTypes_CTR_XSLIDER";
	//waitUntil { !dialog }; 
	//_ok = createDialog "RscDisplayAddonActions";
	
	//hint "Dialog closed.";
	//hint format ["%1",_radius];
	
	
	_pos = position _logic;
	_dir = _logic getvariable ["dir",random 360];


	
	_cursorTarget = _logic getvariable ["bis_fnc_curatorAttachObject_object",objnull];
	_duration = if (isnull _cursorTarget) then {(3 + random 1)} else {1};
	//_duration = 15;

	//[["pandaH001", "pandaH004"]] call BIS_fnc_advHint;
	//hint parseText"<t color='#A1A4AD' align='left'>MININUKE SEVEN DEMO</t>";
	//SML: 
	//enableCamShake true; addCamShake [2, 10, 2];
	//MID: 
	enableCamShake true; 
	addCamShake [5, 20, 5];
	//BIG: 
	//enableCamShake true; addCamShake [10, 60, 10];	

	
	//0 spawn BIS_fnc_earthquake;

	//[_pos] spawn panda_fnc_atom007;
	_v7=[[_pos],"panda_fnc_atom007",true,false] spawn BIS_fnc_MP;

	
	_cursorTarget = _logic getvariable ["bis_fnc_curatorAttachObject_object",objnull];
	_duration = if (isnull _cursorTarget) then {(3 + random 1)} else {1};


	//--- Delete curator placed module
	if (count objectcurators _logic > 0) then {
		deletevehicle _logic;
	};

	//--- Save variable for outside use
	if (_logic call bis_fnc_isCuratorEditable) then {
		uinamespace setvariable ["panda_fnc_atommini7_created",true];
	};
};
	


