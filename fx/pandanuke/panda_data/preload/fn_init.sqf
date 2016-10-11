/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
//if (isDedicated) exitWith {};
//waitUntil {!isNull findDisplay 46}; //wait until player has interface
//waitUntil {!isNil "BIS_fnc_init"};
if (isServer) then { //maybe problem to mp
//if(!isDedicated) then
//waitUntil {!isNil "BIS_fnc_init"};
//waitUntil {!isNil "panda_data_active"};
//!(isNil "panda_data_active") then { systemchat"ok"; } else {
//[] spawn 
//	{

//_yesServer = missionNamespace getVariable "i_am_a_server";
//};
//if(isNil ("_yesServer")) then {
//client init
[] spawn 
	{
	//waitUntil {!isNil "BIS_fnc_init"};
	//waitUntil {!isNull findDisplay 46}; //wait until player has interface

	while {true} do
		{
		_core = [] execvm "\panda_syndicate\panda_data\panda_data.sqf";
		//_coreloop = [] execvm "\panda_syndicate\panda_data\initloop\panda_coreloop.sqf";		
		waitUntil {sleep 4; scriptDone _core};

		};
	

};	
		
};
//};
