["TheDamSpecific", "Destroy Dam", {
	[] execVM "fx\server\destruction.sqf";	
}] call Ares_fnc_RegisterCustomModule;

["TheDamSpecific", "Switch Lights On", {
	[0, getPos dummybox, 4000] execVM "fx\server\switchLights.sqf";
}] call Ares_fnc_RegisterCustomModule;

["TheDamSpecific", "Switch Lights Off", {
	[0.97, getPos dummybox, 4000] execVM "fx\server\switchLights.sqf";
}] call Ares_fnc_RegisterCustomModule;

["TheDamSpecific", "Create Convoy", {
	[] execVM "createConvoy.sqf";
}] call Ares_fnc_RegisterCustomModule;
