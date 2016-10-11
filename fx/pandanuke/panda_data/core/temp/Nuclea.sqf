//===================piXel 26-1-2013============

private ["_anomaly","_nuclea","_static","_trg"];
_anomaly = _this select 0;
_anomaly setPosATL [getPosATL _anomaly select 0,getPosATL _anomaly select 1,(getPosATL _anomaly select 2) - 2.5];

_trg = createTrigger ["emptyDetector", getPosATL _anomaly];
_trg setTriggerArea [6,6,0, true];
_trg setTriggerTimeout [0,0,0, false];
_trg setTriggerActivation ["any", "present", true];
_trg setTriggerStatements ["isplayer (thisList select 0)",
"nul = [nil, (thisList select 0), rSwitchMove, 'CtsDoktor_Vojak_hulakani1'] call RE;
cutText ['','white out'];
//nul = [(thisList select 0)]execVM 'addin\setHealth.sqf';
//nul = [(thisList select 0)]execVM 'addin\teleport.sqf';
cutText ['','white in', 9];
nul = [nil, (thisList select 0), rSwitchMove, 'ActsPercMrunSlowWrflDf_FlipFlopPara'] call RE",
""];
_nuclea = "#particlesource" createVehicleLocal getPosATL _anomaly;
_nuclea setParticleCircle [0, [0, 0, 0]];
_nuclea setDropInterval 0.031;
_nuclea setParticleParams [["\a3\Data_f\rainbow", 1, 0, 1], "", 
"spaceObject", 
0,
0.5,
[0, 0, 28], //position
[0, 0, 0],
1,
0.9,0.72,0.3,
[0.5],
[[0, 0, 1, 0.5], [0, 0, 1, 0.3], [0, 0, 1, 0.1]],
[1],
0,
0,
"",
"",
_anomaly];

_static = createSoundSource ["Sound_Factory09", getPosATL _nuclea, [], 0];


























