/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
if (INIT_DEMO_MODE1 == 1) exitwith {};
if (INIT_DEMO_MODE1 == 0) then {
INIT_DEMO_MODE1 = INIT_DEMO_MODE1 + 1;
publicVariable "INIT_DEMO_MODE1";

	private ["_obj","_objPos","_objPosX","_objPosY","_objPosZ","_marker1","_size"];

	//_objPos = if (count _this > 3) then {_this select 0} else {getposATL theobjectxx1};
	setviewdistance 5000;


	_fC = panda_zeus_fallout;
	_kT = panda_zeus_megatons;
	//_size = test_size;
	//_fC = gettext (configfile >> "CfgSyndicate" >> "synmain_fallout");
	//_kT = getnumber (configfile >> "CfgSyndicate" >> "panda_zeus_megatons");
	//_size = getnumber (configfile >> "CfgSyndicate" >> "test_size");
	_objPos = _this select 0;   //position	     position _obj;//objekt position
	//_size = _this select 1;	//_radius by config 
	_size = if (count _this > 1) then {_this select 1} else {test_size}; //_radius by config or testsize
	
	_objPosX = _objPos select 0;//objekt position x
	_objPosY = _objPos select 1;//objekt position y
	_objPosZ = 200; //_objPos select 2;//objekt position z

	_marker1 = createMarkerLocal ["ATOMZONE", _objPos];  //marker  objekt
	_marker1 setMarkerShapeLocal "ELLIPSE";
	_marker1 setMarkerSizeLocal [_size, _size];
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

	_panda_objectx1 = "Land_Bucket_F" createvehicle _objPos;
	_panda_objectx1 setpos _objPos; 
	//hint format ["%1",getpos panda_objectx1];
	//+++++++++++++++++
	AllArray2 = [];

	AllArray2 = nearestObjects [_objPos,["Man","Air","Motorcycle","Car","Tank","Ship","StaticWeapon"], _size];	

	sleep 0.01;

	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\001\glare.sqf";
	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\001\light.sqf";



	if (player distance _objPos < 1000) then {playSound ["sndnuke001", true]};
	if (player distance _objPos > 1000) then {playSound ["sndnuke002", true]};
	sleep 2;

	drop ["\a3\data_f\koulesvetlo","","Billboard",100,1,[0,0,0],[0,0,0],0,1.27,1,0.05,[0.9,20,30,20,0.9],[[1,0,1,0],[1,0,1,0.7],[1,0,1,0]],[0],0,0,"","",_objPos];

	enableCamShake true; 
	addCamShake [5, 20, 5];

	if (player distance _objPos < 5000) then 
	{
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [0.5];
	"dynamicBlur" ppEffectCommit 0.5; //2

	sleep 0.3;

	"dynamicBlur" ppEffectAdjust [2];
	"dynamicBlur" ppEffectCommit 0.4; //1

	"dynamicBlur" ppEffectAdjust [1];
	"dynamicBlur" ppEffectCommit 0.5; //2

	};
//*******************************************************************
	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\001\windimpact.sqf";

	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\001\unitflucht.sqf";
	sleep 1;
	[_objPos] spawn panda_fnc_empA;
	
	
	
	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\001\damage.sqf";
enableEnvironment false;
//{[_x,_pad] spawn test_damagewall;} forEach AllArray2;
	{[_x,_pad] execvm "\panda_syndicate\panda_data\defcons\001\damagewall.sqf";} forEach AllArray2;


	_Cone = "#particlesource" createVehicleLocal _objPos;
	_Cone setParticleParams [["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 7, 48,1], "", "Billboard", 1, 10, [0, 0, 0],
					[0, 0, 0], 0, 1.275, 1, 0, [40,80], [[0.25, 0.25, 0.25, 0], [0.25, 0.25, 0.25, 0.5], 
					[0.25, 0.25, 0.25, 0.5], [0.25, 0.25, 0.25, 0.05], [0.25, 0.25, 0.25, 0]], [0.25], 0.1, 1, "", "", _objPos];
	_Cone setParticleRandom [2, [1, 1, 30], [1, 1, 30], 0, 0, [0, 0, 0, 0.1], 0, 0];
	_Cone setParticleCircle [10, [-10, -10, 20]];
	_Cone setDropInterval 0.005;

	_Cone2 = "#particlesource" createVehicleLocal _objPos;
	_Cone2 setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 10, [0, 0, 0],
										[0, 0, 0], 0, 1.275, 1, 0, [40,80], [[0.25, 0.25, 0.25, 0], [0.25, 0.25, 0.25, 0.5],
										[0.25, 0.25, 0.25, 0.5], [0.25, 0.25, 0.25, 0.05], [0.25, 0.25, 0.25, 0]], [0.25], 0.1, 1, "", "", _markerPos];
	_Cone2 setParticleRandom [2, [1, 1, 30], [1, 1, 30], 0, 0, [0, 0, 0, 0.1], 0, 0];
	_Cone2 setParticleCircle [10, [-10, -10, 20]];
	_Cone2 setDropInterval 0.005;
	 
 
	_top = "#particlesource" createVehicleLocal  _objPos;
		_top setParticleParams [["\a3\Data_f\ParticleEffects\universal\universal.p3d",16, 3, 48, 0],"",		// File,Ntieth,Index,Count,Loop(Bool) /*Sprite*/	
		"Billboard",	/*Type*/
		1,				/*TimmerPer*/
		21,				/*Lifetime*/
		[0, 0, 0],		/*Position*/
		[0, 0, 20],		/*MoveVelocity*/
		0, 1.7, 1, 0,	//rotationVel,weight,volume,rubbing
		[100,80,110],	/*Scale*/
		[[1, 1, 1, -10],[1, 1, 1, -7],/*Color*/
		[1, 1, 1, -4],	/*AnimSpeed*/
		[1, 1, 1, -0.5],	
		[1, 1, 1, 0]], 	
		[0.05],			
		 1,			/*randDirPeriod*/
		 1,			/*randDirIntesity*/
		 "",		/*onTimerScript*/
		 "",		/*DestroyScript*/
		 _objPos		/*Follow*/	
		 ];		
		_top setParticleRandom [0,
		[0.25, 0.25, 0],
		[0.175, 0.175, 0],
		0,
		0.25,
		[0, 0, 0, 0.1],
		0,
		0
	];
	_top setDropInterval 0.2;

	_Wave = "#particlesource" createVehicleLocal _objPos;
	_Wave setParticleParams [["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 7, 48,1], "", "Billboard", 1, 20/2, [0, 0, 0],
				 [0, 0, 0], 0, 1.5, 1, 0, [50, 100], [[0.1, 0.1, 0.1, 0.5], 
				 [0.5, 0.5, 0.5, 0.5], [1, 1, 1, 0.3], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", _objPos];
	_Wave setParticleRandom [2, [20, 20, 20], [5, 5, 0], 0, 0, [0, 0, 0, 0.1], 0, 0];
	_Wave setParticleCircle [50, [-80, -80, 2.5]];
	_Wave setDropInterval 0.002; //0.0002 panda
	sleep 0.1;


	_light = "#lightpoint" createVehicleLocal [_objPosX, _objPosY,(_objPosZ +800)];
	_light setLightAmbient[0.8, 0.6, 0.2]; //setLightAmbient[1500, 1200, 1000];
	_light setLightColor[1, 0.5, 0.2]; //setLightColor[1500, 1200, 1000];
	_light setLightBrightness 1; //setLightBrightness 1000000.0;
	_light setLightIntensity 3000; //int3000 same as bright 1
	
	_Wave setDropInterval 0.001;
	sleep 0.5; //3

	deleteVehicle _Wave;
	deletevehicle _top;
	//deletevehicle _top2;

	//[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\001\pilzstengel.sqs";	
	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\001\einschlag_s1.sqs";	
	
	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\001\bodennebel1.sqs";
	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\001\bodennebel2.sqs";

	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\001\staub.sqf";

	sleep 0.2;

	player spawn panda_fnc_envi;
	playSound ["heatimpact", true];
	windv=true;
	player spawn panda_fnc_wind2;
	sleep 0.5;


	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\001\ring1.sqs";
	sleep 6;
	[_objPosX, _objPosY] exec "\panda_syndicate\panda_data\defcons\001\ring2.sqs";

	
	[_objPosX, _objPosY, time] execvm "\panda_syndicate\panda_data\defcons\001\geiger.sqf";
	[_objPosX, _objPosY, time] execvm "\panda_syndicate\panda_data\defcons\001\radiation.sqf";
		
	[_objPosX, _objPosY] execvm "\panda_syndicate\panda_data\defcons\001\herzschlag.sqf";	
	sleep 0.1;


	//_top3 = "#particlesource" createVehicleLocal position _obj;
	//_top3 setParticleParams [["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 3, 48, 0], "", "Billboard", 1, 24, [0, 0, 450],
	//               [0, 0, 49], 0, 1.7, 1, 0, [120,130,150], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, "", "", _obj];
	//_top3 setParticleRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
	//_top3 setDropInterval 0.002;






	if (player distance _objPos < 4000) then {
		"dynamicBlur" ppEffectAdjust [0];
		"dynamicBlur" ppEffectCommit 1;
	};

	deleteVehicle _cone;
	deleteVehicle _cone2;
	player spawn panda_fnc_ash;
	//[_panda_objectx1] call panda_fnc_strahlungszone;	
	30 setovercast 0.8;
	60 setRain 1;

	sleep 4;
	//deletevehicle _top3;
	//deletevehicle _top4;

	_i = 0;
	while {_i < 50} do
		{
		_light setLightBrightness (100.0 - _i)/100;
		_i = _i + 1;
		sleep 0.1;
		};


	_timeNow = time;
	waituntil {(time - _timeNow) > 300}; //300
	
	deleteVehicle _light;
	/*
	_smoke setParticleParams [["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 7, 48, 1], "", "Billboard", 1, 25, [0, 0, 0],
					[0, 0, 30], 0, 1.7, 1, 0, [40,25+10,80], 
					[[1, 1, 1, 0.2],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0]]
					, [0.5, 0.1], 1, 1, "", "", _pos];

	_smoke setDropInterval 0.012;
	
	_Cone setDropInterval 0.02;
	_Cone2 setDropInterval 0.02;
	_Wave setDropInterval 0.01;
	*/

	//deleteVehicle _Wave;
	//deleteVehicle _cone;
	//deleteVehicle _cone2;
	//deleteVehicle _smoke;
	//deletevehicle snow;
	setviewdistance 2000;
	sleep 10;
	//60 setovercast 0;
	windv=false;

	setwind [0,0,true];
	sleep 260;
	[] call panda_fnc_envistop;
	enableEnvironment true;

};
true