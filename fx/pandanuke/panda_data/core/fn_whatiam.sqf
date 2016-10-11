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
};
};
} else {
// I'm a client but the player object may not be initialized yet
i_am_a_client = true;
[] spawn {
waitUntil {!isNull player};
player_initialized = true;
};
}; 
true