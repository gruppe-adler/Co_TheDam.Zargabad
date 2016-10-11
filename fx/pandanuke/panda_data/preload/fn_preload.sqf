/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs: 

*/
i_am_a_server = false;
i_am_a_client = false;
player_initialized = false;
if (isServer) then {
	i_am_a_server = true;

	if (!isDedicated) then {
		// either we are in SP/editor or in a hosted environment
		i_am_a_client = true;
		[] spawn {
			waitUntil {!isNull player};
			player_initialized = true;
			[["Hello Player"], hint {_this select 0}] spawn BIS_fnc_spawn;
		};
	};
} else {
	// I'm a client but the player object may not be initialized yet
	i_am_a_client = true;
	[] spawn {
		waitUntil {!isNull player};
		player_initialized = true;
		[["Hello Client"], hint {_this select 0}] spawn BIS_fnc_spawn;
};
}; 


if !(isserver) exitwith {"The function can be called only on server." call bis_fnc_error; []};

[] spawn {
//if (player == player)
if(isNil ("_yesClient")) then 
{
	
	_apic = "\panda_syndicate\modulicons\modul256.paa";
	[
	'<img align=''left'' size=''2.0'' shadow=''0'' image='+(str(_apic))+' />',
	[safezoneX + safezoneW - 0.2,0.48],//safeZoneX+0.027,
	[safezoneY + safezoneH - 0.25,0.7],//safeZoneY+safeZoneH-0.2,
	99999,
	0,
	0,
	7777
	] spawn bis_fnc_dynamicText;

	//playSound ["explimpact", true];
	playSound ["sndintro_1", true];
	//playSound ["sndintro_2", true]; //crackle
	

		
	//systemchat "Client Preload successful";
};
};
[] spawn {
if(isNil ("_yesPlayer")) then 
{
	
	_apic = "\panda_syndicate\modulicons\modul256.paa";
	[
	'<img align=''left'' size=''2.0'' shadow=''0'' image='+(str(_apic))+' />',
	[safezoneX + safezoneW - 0.2,0.48],//safeZoneX+0.027,
	[safezoneY + safezoneH - 0.25,0.7],//safeZoneY+safeZoneH-0.2,
	99999,
	0,
	0,
	7777
	] spawn bis_fnc_dynamicText;

	//playSound ["explimpact", true];
	//playSound ["sndintro_1", true];
	//playSound ["sndintro_2", true]; //crackle
	//systemchat "Player Preload successful";
};	
};
true