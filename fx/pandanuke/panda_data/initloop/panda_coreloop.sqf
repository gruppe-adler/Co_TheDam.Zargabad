panda_unit_radiation_storedata = {
	private["_unit","_factor","_sunfactor","_sdata_a","_plusfactor","_inarea"];
	_unit = _this select 0;	
	//is unit in any area of configmarkers marker
	
	_sunfactor = getNumber (configFile >> "CfgWorlds" >> worldName >> "latitude");
	_factor = getnumber (configfile >> "Modul_config" >> "panda_unit_radpain");
	_marker = ""; //get from config
	_inarea = "";//is unit in marker
	hint format ["FACTOR %1",_factor];
	/*
	_sdata_a = [];
	_sdata_a = _sdata_a +1;

	switch _inarea do
		{
		case "": 
			{
			//_nowfactor getvariable ["panda_unit_radiation",_sdata_a];
			_plusfactor = 0
			};
		case "": 
			{
			_plusfactor = 0
			};			
		default
			{
			_plusfactor = 0;
			};	
		};
	

	_unit setvariable ["panda_unit_radiation",_sdata_a];
	*/
};
[player] call panda_unit_radiation_storedata;	

null = [ '<t size="1">'+'<t color="#00da40">'+"DEMO VERSION"+'</t>', 0, 0.8, 5, 1 ] spawn bis_fnc_dynamictext; 
player createDiarySubject ["A3 Atom MOD", "A3 Atom MOD"];
player createDiaryRecord ["A3 Atom MOD", 
["A3 Atom MOD",
"ATOM Module WIP<br/><br/>
Atom-Modul<br/>
DEMO Version Beta 0.1<br/>
go to MakeArmaNotWar dot COM and search for my Atom MOD (panda)<br/>
to support the MOD please!<br/>
<img size='1' image='\panda_syndicate\modulicons\modul256.paa'/>"
]];




//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//hint parseText format["<t color='#ffffff' size='2'>%1</t><br/><t color='#00ff00'>ATOM MODUL v04</t><br/>Set you ViewDistance HIGH!!<br/>Work in Progress.<br/>august 2014.<br/> by pandabe4r",panda_pic_one];
null = [ '<t size="1">'+'<t color="#00da40">'+"DEMO VERSION"+'</t>', 0, 0.8, 5, 1 ] spawn bis_fnc_dynamictext; 

//DA DUMMY LOOP 
while {true} do
	{
	//null = [ '<t size="0.7">'+'<t color="#00da40">'+"DEMO Version | Support @MakeArmaNotWar"+'</t>', 0, 0.8, 5, 1 ] spawn bis_fnc_dynamictext; 
	sleep 10;
	};	
