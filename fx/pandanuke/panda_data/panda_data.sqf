/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
//variables
//waituntil {!isnil "bis_fnc_init"};
//waitUntil {!(isNil "BIS_MPF_InitDone")};


//if (isServer) then { //maybe problem to mp
//if (isMultiplayer) then { //maybe problem to mp

//systemchat "data check";
//systemchat "data init loaded"; //
//hint format ["DATA aktiv: %1",panda_data_active];

//demo mode
	INIT_DEMO_MODE1 = 0;
	publicVariable "INIT_DEMO_MODE1";
	INIT_DEMO_MODE7 = 0;
	publicVariable "INIT_DEMO_MODE7";
	INIT_DEMO_MODE2 = 1;
	publicVariable "INIT_DEMO_MODE2";
	INIT_DEMO_MODE3 = 1;
	publicVariable "INIT_DEMO_MODE3";
	INIT_DEMO_MODE4 = 1;
	publicVariable "INIT_DEMO_MODE4";
	INIT_DEMO_MODE5 = 1;
	publicVariable "INIT_DEMO_MODE5";
	INIT_DEMO_MODE6 = 1;
	publicVariable "INIT_DEMO_MODE6";
//demo mode	

panda_vec_radiation = 30; //meters radius
panda_vec_painin = 0.001;
panda_vec_painout = 0.005;
panda_vec_speedmax = 50;
panda_vec_armor = 120;
panda_vec_weight = 24000;  //viel blei
panda_vec_radalarm = 35;  //warning for if unit to close
panda_vec_created = false;
publicVariable "panda_vec_created"; //!(isNil "panda_vec_created")

panda_unit_radiation = 5;
panda_unit_radpain = 0.01;
panda_unit_fatigue = 0.8;
panda_unit_radalarm = 10;


panda_time_count = 600;
panda_time_countalarm = 34;  //zeit wenn zeus aktiviert bis zur explosion - counter
panda_time_created = false;
publicVariable "panda_time_created"; //!(isNil "panda_time_created")


panda_gen_radiation = 30;
panda_gen_painout = 0.002;
panda_gen_radalarm = 40;
panda_gen_created = false;
publicVariable "panda_gen_created"; //!(isNil "panda_gen_created")


panda_mod_defcon = 1;
panda_mod_size = 1000;
panda_mod_shockspeed = 360;
panda_mod_shocksize = 2500;
panda_mod_unitdam = 0.05;
panda_mod_vecdam = 0.7;
panda_mod_staticdam = 0.2;
panda_mod_envoidam = 0.9;
panda_mod_radsize = 2000;
panda_mod_raddam = 0.01;
panda_mod_created = false;
publicVariable "panda_mod_created"; //!(isNil "panda_mod_created")

panda_zeus_defcon = 1;
panda_zeus_megatons = 1;
panda_zeus_size = 1000;
panda_zeus_shockspeed = 210;
panda_zeus_shocksize = 1200;
panda_zeus_unitdam = 0.05;
panda_zeus_vecdam = 0.7;
panda_zeus_staticdam = 0.2;
panda_zeus_envoidam = 0.9;
panda_zeus_radsize = 2000;
panda_zeus_fallout = true;
panda_zeus_raddam = 0.01;
panda_zeus_created = false;
panda_zeus_emp1 = 1000;
panda_zeus_empmarker = 1;
publicVariable "panda_zeus_created"; //!(isNil "panda_zeus_created")



panda_snowtimeout = 60;

CODEINPUT = [];
panda_CODE = [(round(random 9)), (round(random 9)), (round(random 9))]; 
panda_DEFUSED = false;
panda_ARMED = false;

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

panda_nukebasic_panik = 800;
panda_nuke_radius = 1500;
panda_nuke_windspd = 300;
panda_nuke_time = 10 * 60;
panda_nuke_radidam = 0.02;
panda_nuke_cardam = 1 / 4;

nukeNumber = 0;
markerFalloutCounter = 0;
windAngle = 135;
panda_hitzewelledistanz = 0;
panda_schockausbreitung = 0;
spreadAngle = 80;
spreadOrigin = spreadAngle;
CLOUD = [];
falloutDone = false;
radTime = 360;
fallTime = 0;
sleepTime = 20;					// Intensity of Dots creating cloud - lower means higher intensity

mT = 1;
test_size = 1900;
//test_data1 setVariable["tdata1",[],false];
panda_schockdistanz = (ln(mT)+1) * test_size; // How far will shockwave spread
strahlungzeit = 360;

strahlungs_radius = 1600;
druck_welle_spd = 190;
strahlung_lebenszeit = 10 * 60;
strahlung_schaden_dmg = 0.02;
strahlung_schaden_kfz = 3 / 4;



argt_sound = 0;
//switchMoveEverywhere = compileFinal " _this select 0 switchMove (_this select 1); ";

//panda_pic_one = "<img size='6' image='\panda_syndicate\panda_data\data\icons\256_top1.paa'/>";
//panda_pic_two = "<img size='4' image='\panda_syndicate\panda_data\data\icons\256_Vorsicht_Strahlung.paa'/>";

player createDiarySubject ["A3 Atom MOD", "A3 Atom MOD"];
player createDiaryRecord ["A3 Atom MOD", 
["A3 Atom MOD",
"ATOM Module WIP<br/><br/>
Atom-Modul<br/>
Version Beta 0.1<br/>
go to MakeArmaNotWar dot COM and search for my Atom MOD (panda)<br/>
to support the MOD please!<br/>
<img size='1' image='\panda_syndicate\modulicons\modul256.paa'/>"
]];

//[["pandaH001", "pandaH003"]] call BIS_fnc_advHint;
//waituntil {time > 10};
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//hint parseText format["<t color='#ffffff' size='2.5'>%1</t><br/><t color='#00ff00'>ATOM MODUL<br/>Version Beta 0.1</t><br/><t color='#FFFF66'>Set your ViewDistance HIGH!!</t><br/><t color='#FFFF66' >Work in Progress</t><br/><t color='#ffffff' size='0.2'>_________</t><br/> by pandabe4r",panda_pic_one];
//null = [ '<t size="0.9">'+'<t color="#191919">'+"TEST + DEMO VERSION"+'</t>', 0, 0.8, 5, 1 ] spawn bis_fnc_dynamictext; 


//[[["Welcome"], {hint _this select 0}], "BIS_fnc_spawn", true, false, false] spawn BIS_fnc_MP;



/*
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "" || _type == 0) exitWith {0};
*/
//player globalChat "data check ready";	
panda_data_active = true;
publicVariable "panda_data_active"; //!(isNil "panda_data_active")
//DA DUMMY LOOP 
while {true} do
	{
	//null = [ '<t size="0.7">'+'<t color="#00da40">'+"DEMO Version | Support at MakeArmaNotWar"+'</t>', 0, 0.8, 5, 1 ] spawn bis_fnc_dynamictext; 
	sleep 10;
	};	
//};