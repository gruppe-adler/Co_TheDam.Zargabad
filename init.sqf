_counter = 1;
_maxcount = 36;
_height = 0.3;


for [{_i=0}, {_i<_maxcount}, {_i=_i+1}] do
{
_string = "trg_water_" + (str _i);
diag_log format ["trigger: %1",_string];
_name = missionNamespace getVariable _string; 
_dir = getDir _name;
_position = [(getPos _name) select 0, (getPos _name) select 1, _height];
_pond = createSimpleObject ["ca\structures_e\Misc\Misc_Water\test_pond.p3d", _position];
_pond setDir _dir;

};

ps = "#particlesource" createVehicleLocal [2897.23,3102.66,2]; 
ps setParticleParams [["\A3\data_f\cl_basic.p3d", 1, 0, 1], "", "Billboard", 1, 3, [0, 0, 1.5],
 [-7, -6, -5], 0, 12, 7.9, 0.075, [0.2, 3], [[0.7, 0.7, 0.7, 0.01], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 1, 0, "", "", "",270];
ps setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
ps setParticleCircle [0, [0, 0, 0]];
ps setDropInterval 0.05;


bigWave = "#particlesource" createVehicleLocal [2897.23,3102.66,2]; 
bigWave setParticleParams [["\A3\data_f\cl_basic.p3d", 1, 0, 1], "", "Billboard", 1, 3, [0, 0, 1.5],
 [-7, -6, -5], 0, 12, 7.9, 0.075, [3, 4, 5, 6], [[0.7, 0.7, 0.7, 0.01], [0.9, 0.9, 0.9, 0.9], [0.9, 0.9, 0.9, 0]], [0.08], 1, 0, "", "", "",270];
bigWave setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
bigWave setParticleCircle [0, [0, 0, 0]];
bigWave setDropInterval 0.05;

/*
_counter = 1;
_maxcount = 67;
_height = 7;

for [{_i=0}, {_i<_maxcount}, {_i=_i+1}] do
{
_string = "trg_water_filled_" + (str _i);
diag_log format ["trigger: %1",_string];
_name = missionNamespace getVariable _string; 
_dir = getDir _name;
_position = [(getPos _name) select 0, (getPos _name) select 1, _height];
_pond = createSimpleObject ["ca\structures_e\Misc\Misc_Water\test_pond.p3d", _position];
_pond setDir _dir;

};
*/