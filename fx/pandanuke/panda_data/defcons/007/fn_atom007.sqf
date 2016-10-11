/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
if (INIT_DEMO_MODE7 == 1) exitwith {};
if (INIT_DEMO_MODE7 == 0) then {
	INIT_DEMO_MODE7 = INIT_DEMO_MODE7 + 1;
	publicVariable "INIT_DEMO_MODE7";
	private ["_object", "_xpos", "_ypos", "_pos","_objPos","_objPosX","_objPosY","_objPosZ","_marker1"];
	setviewdistance 5000;
	_fC = panda_zeus_fallout;
	_kT = panda_zeus_megatons;
	nukev = false;
	


	//0 spawn BIS_fnc_earthquake;
	_objPos = _this select 0;   //position	     position _obj;//objekt position

	_objPosX = _objPos select 0;//objekt position x
	_objPosY = _objPos select 1;//objekt position y
	_objPosZ = 200; //_objPos select 2;//objekt position z

	_marker1 = createMarkerLocal ["ATOMZONE", _objPos];  //marker  objekt
	_marker1 setMarkerShapeLocal "ELLIPSE";
	_marker1 setMarkerSizeLocal [panda_zeus_size, panda_zeus_size];
	_marker1 setMarkerColorLocal "ColorOrange";
	_marker1 setMarkerBrushLocal "DiagGrid";
	_markerPos = GetMarkerPos _marker1;
	_markposx = _markerPos select 0;
	_markposy = _markerPos select 1;

	_CentrePos = GetMarkerPos _marker1;
	_cx = _CentrePos select 0;
	_cy = _CentrePos select 1;
		
	_pad = createVehicle ["Land_HelipadEmpty_F", _objPos, [], 0, "NONE"];  //pad position objekt
	_pad attachto [_objPos,[0,0,0]];
	_pad hideobject true;
	_padPos = position _pad;
	_padPosX = _padPos select 0;
	_padPosY = _padPos select 1;
	_padPosZ = _padPos select 2; 

	panda_objectx7 = "Land_Bucket_F" createvehiclelocal _objPos;
	panda_objectx7 setpos _objPos; 
	//hint format ["%1",getpos panda_objectx7];
	//+++++++++++++++++

	[panda_objectx7] execvm "\panda_syndicate\panda_data\defcons\007\config1.sqf";


	[panda_objectx7] execvm "\panda_syndicate\panda_data\defcons\007\destroy.sqf";
	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\007\staub.sqf";
	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\007\glare.sqf";
	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\007\unitflucht.sqf";
	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\007\blendung.sqf";
	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\007\flash.sqf";

	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\007\damage.sqf";
	sleep 1.1;
	enableEnvironment false;

	enableCamShake true; 
	addCamShake [5, 20, 5];
	/*
	//--- Play sound (tied to the explosion effect)
		if (isNull player) then { 
			//_bolt = createvehicle ["Land_Bucket_F",_objPos,[],0,"can collide"];
			_bolt = createvehicle ["snd_boom001",_objPos,[],0,"can collide"];
			_bolt setposatl _objPos;
			//_bolt setdamage 1;
		};
	*/	
	if (player distance _objPos < 1000) then {playSound ["sndnuke002", true]};
	if (player distance _objPos > 1000) then {playSound ["atomtest_weit_a", true]};
	sleep 0.2;
	drop ["\a3\data_f\koulesvetlo","","Billboard",100,1,[0,0,0],[0,0,0],0,1.27,1,0.05,[0.9,20,30,20,0.9],[[1,0,1,0],[1,0,1,0.7],[1,0,1,0]],[0],0,0,"","",_objPos];

	[_objPos] spawn panda_fnc_empA;
	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\007\light.sqf";
	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\007\bodennebel_1.sqs";
	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\007\bodennebel1.sqs";
	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\007\pilzkopf1.sqs";
	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\007\ears.sqf";

	sleep 0.5;
	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\007\pilzstengel.sqs";
	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\007\bodennebel1.sqs";
	//execVM "\panda_syndicate\panda_data\defcons\007\screen.sqf";

	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\007\ring1.sqs";
	sleep 0.5;
	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\007\ring2.sqs";

	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\007\bodennebel2.sqs";
	sleep 0.4;
	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\007\bodennebel3.sqs";
	windv=true;
	player spawn panda_fnc_wind2;
	
	sleep 5;
	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\007\herzschlag.sqf";
	setviewdistance 2000;
	sleep 10;

	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\007\snow.sqf";
	sleep 120;
	windv=false;

	setwind [0,0,true];
	[] call panda_fnc_envistop;
	enableEnvironment true;
};

exit;