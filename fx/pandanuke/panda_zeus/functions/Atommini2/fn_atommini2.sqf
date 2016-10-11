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
	_pos = position _logic;
	_dir = _logic getvariable ["dir",random 360];
	_fC = panda_zeus_fallout;
	_kT = panda_zeus_megatons;
	nukev = false;
	

	panda_objectx = "Land_Bucket_F" createvehicle _pos;
	panda_objectx setpos _pos; 
	hint "v2 launched"; 
	//playsound "shockcom";


	panda_zeus_created = true;
	hint format ["%1",getpos panda_objectx];
	//0 spawn BIS_fnc_earthquake;

	nukemarker = createMarkerLocal ["nukemarker", _pos]; 
	nukemarker setmarkerposLocal _pos;
	nukemarker setMarkerTypeLocal "nukemarker";
	nukemarker setMarkerTextLocal "ATOMMINI 2";
	nukemarker setMarkerColorLocal "ColorRed";


	_pad = createVehicle ["Land_HelipadEmpty_F", _pos, [], 0, "NONE"];
	_pad attachto [_pos,[0,0,0]];
	_pad hideobject true;
	_padPos = position _pad;
	_padPosX = _padPos select 0;
	_padPosY = _padPos select 1;
	_padPosZ = _padPos select 2; 

//waituntil {[panda_time_countalarm,false] call panda_fnc_countdown};	
/*	
for [{_x = panda_time_countalarm}, {_x >= 0}, {_x = _x - 1}] do
{
  sleep 1;
  hint format ["00:0%1", _x];
  
  hint format ["You just sustained %1%2 damage!", ceil (_x * 100), "%"];
};
*/
	//--- Play sound (tied to the explosion effect)
	if (local _logic || {local _x} count (objectcurators _logic) > 0) then { 
		_bolt = createvehicle ["Land_Bucket_F",_pos,[],0,"can collide"];
		_bolt = createvehicle ["emp_short",_pos,[],0,"can collide"];
		_bolt setposatl _pos;
		_bolt setdamage 1;
	};
	
	_light = "#lightpoint" createvehiclelocal _pos;
	_light setposatl [_pos select 0,_pos select 1,(_pos select 2) + 10];
	_light setLightDayLight true;
	_light setLightBrightness 1000; //1000
	_light setLightAmbient [0.05, 0.05, 0.1];
	_light setlightcolor [1, 1, 2];

	sleep 1.5;
	_light setLightBrightness 0;
	sleep (random 0.1);
	
	_cursorTarget = _logic getvariable ["bis_fnc_curatorAttachObject_object",objnull];
	_duration = if (isnull _cursorTarget) then {(3 + random 1)} else {1};
	//_duration = 15;

	for "_i" from 0 to _duration do {
		_time = time + 0.1;
		_light setLightBrightness (1000 + random 1000);
		waituntil {
			//--- Attach to target under cursor
			if (local _logic && !isnull _cursorTarget) then {_lightning setpos position _cursorTarget;};
			time > _time
		};
	};
	
//[["pandaH001", "pandaH004"]] call BIS_fnc_advHint;
//SML: 
//enableCamShake true; addCamShake [2, 10, 2];
//MID: 
enableCamShake true; 
addCamShake [5, 20, 5];
//BIG: 
//enableCamShake true; addCamShake [10, 60, 10];	

//_cursorTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

	hint parseText"<t color='#A1A4AD' align='left'>ELEKTO PULSE AREA 1km</t>";	

	//0 spawn BIS_fnc_earthquake;
	[_pos] spawn panda_fnc_atom002;
	//[_pos] spawn panda_fnc_empA;
//if ( (isServer) or (isDedicated) ) exitWith {};

	_cursorTarget = _logic getvariable ["bis_fnc_curatorAttachObject_object",objnull];
	_duration = if (isnull _cursorTarget) then {(3 + random 1)} else {1};

	for "_i" from 0 to _duration do {
		_time = time + 0.1;
		_light setLightBrightness (100 + random 100);
		sleep (random 0.1);
		
		//waituntil {
			//--- Attach to target under cursor
		//	if (local _logic && !isnull _cursorTarget) then {_pos setpos position _cursorTarget;};
		//	time > _time
		//};
	};

	deletevehicle _light;


	//--- Delete curator placed module
	if (count objectcurators _logic > 0) then {
		deletevehicle _logic;
	};

	//--- Save variable for outside use
	if (_logic call bis_fnc_isCuratorEditable) then {
		uinamespace setvariable ["panda_fnc_empA_created",true];
	};
};
	


