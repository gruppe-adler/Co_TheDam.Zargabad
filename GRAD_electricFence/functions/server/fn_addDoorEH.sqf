params ["_door"];

// doors dont work with animDone/animChanged EHs :(
// therefore we lock all of them

_door setVariable["bis_disabled_Door_1",1,true];