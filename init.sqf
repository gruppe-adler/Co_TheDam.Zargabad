createPonds = false;
DAM_BLOWN = false;


[] execVM "zeus\registerModules.sqf";
if (isServer) then {
  [] execVM "fx\server\playDamSound.sqf";
};

/*
ps = "#particlesource" createVehicleLocal [2897.23,3102.66,2]; 
ps setParticleParams [["\A3\data_f\cl_basic.p3d", 1, 0, 1], "", "Billboard", 1, 3, [0, 0, 1.5],
 [-7, -6, -5], 0, 12, 7.9, 0.075, [0.2, 3], [[0.7, 0.7, 0.7, 0.01], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 1, 0, "", "", "",270];
ps setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
ps setParticleCircle [0, [0, 0, 0]];
ps setDropInterval 0.05;
*/


/*
_maxcount = 360;

for [{_i=0}, {_i<_maxcount}, {_i=_i+1}] do
{

 _vector = [[5,5,0], _i] call BIS_fnc_rotateVector2D;

_x = "#particlesource" createVehicleLocal [2910.76,3096.8,0];
_x setParticleParams [["\A3\data_f\Cl_water", 1, 0, 1], "", "Billboard", 1, 12.5, [0, 0, 0],
 _vector, 0, 100, 0.01, 0, [1.2, 2, 4], [[1, 1, 1, 0.7], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 1, 1, "", "", 270];
_x setParticleRandom [0, [0, 0, 0], [0, 0, 0], 1, 0.25, [0, 0, 0, 0.1], 0, 0];
_x setParticleCircle [0, [0, 0, 0]];
_x setDropInterval 0.04;
};*/

/*
_output = [];
         
 _dir_min = 90;
 _dir_max = 270;       
       
 for "_i" from _dir_min to _dir_max do
 {
   switch(true)do
   {
     case (_i == 0):{_output pushBack [0,1,0];};
     case (_i == 90):{_output pushBack [1,0,0];};
     case (_i == 180):{_output pushBack [0,-1,0];};
     case (_i == 270):{_output pushBack [-1,0,0];};
     default {_output pushBack [([(sin _i),2] call BIS_fnc_cutDecimals),([(cos _i),2] call BIS_fnc_cutDecimals),0];};
   };
   sleep 0.02;           
 };



_vectors = _output;

_stonewave1Pos = [2862.69,3049.75,0];
_stonewave2Pos = [2861.73,3046.98,0];

{
	_stoneWave1 = "#particlesource" createVehicleLocal _stonewave1Pos;
	_stoneWave1 setPosASL _stonewave1Pos;
	_stoneWave1 setParticleParams [["\A3\data_f\cl_water.p3d", 1, 0, 1], "", "Billboard", 1, 4, [1.5, 1.5, 1.5], 
	_x, 0, 0.1, 0.01, 0, [0.5, 0.5, 0.5, 0.5], [[0.7, 0.7, 0.7, 0.01], [1, 1, 1, 0.5], [1, 1, 1, 0]], [0.08], 1, 0, "", "", "",0]; 
	_stoneWave1 setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0]; 
	_stoneWave1 setParticleCircle [0, [0, 0, 0]]; 
	_stoneWave1 setDropInterval 2;
} forEach _vectors;

*/



_bigwave1Pos = [2905.49,3100.32,1.6];
_bigwave2Pos = [2912.71,3098.88,1.6]; // [2910.76,3096.8,1.6];
_bigwave3Pos = [2914.54,3091.45,1.6];

bigwave1Pos_2 = [2907.61,3093.95,1.3];
bigwave2Pos_2 = [2898.95,3110.7,1.3]; // [2891.8,3104.05,1.3];

gischt1Pos_2 = [2881.29,3092.18,1.13948];


// big wave 1
bigWave1 = "#particlesource" createVehicleLocal _bigwave1Pos;
bigWave1 setPosASL _bigwave1Pos;
bigWave1 setParticleParams [["\A3\data_f\cl_water.p3d", 1, 0, 1], "", "Billboard", 1, 4, [1.5, 1.5, 1.5], 
 [-7, -7, 7], 0, 100, 0.01, 0, [2, 2.5, 7, 10], [[0.7, 0.7, 0.7, 0.01], [1, 1, 1, 0.5], [1, 1, 1, 0]], [0.08], 1, 0, "", "", "",0]; 
bigWave1 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0]; 
bigWave1 setParticleCircle [0, [0, 0, 0]]; 
bigWave1 setDropInterval 0.03;

// big wave 2
bigWave2 = "#particlesource" createVehicleLocal _bigwave2Pos; 
bigWave2 setPosASL _bigwave2Pos;
bigWave2 setParticleParams [["\A3\data_f\cl_water.p3d", 1, 0, 1], "", "Billboard", 1, 4, [1.5, 1.5, 1.5], 
 [-7, -7, 7], 0, 100, 0.01, 0, [2, 2.5, 7, 10], [[0.7, 0.7, 0.7, 0.01], [1, 1, 1, 0.5], [1, 1, 1, 0]], [0.08], 1, 0, "", "", "",0]; 
bigWave2 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0]; 
bigWave2 setParticleCircle [0, [0, 0, 0]]; 
bigWave2 setDropInterval 0.03;

// big wave 3
bigWave3 = "#particlesource" createVehicleLocal _bigwave3Pos; 
bigWave3 setPosASL _bigwave3Pos;
bigWave3 setParticleParams [["\A3\data_f\cl_water.p3d", 1, 0, 1], "", "Billboard", 1, 4, [1.5, 1.5, 1.5], 
 [-7, -7, 7], 0, 100, 0.01, 0, [2, 2.5, 7, 10], [[0.7, 0.7, 0.7, 0.01], [1, 1, 1, 0.5], [1, 1, 1, 0]], [0.08], 1, 0, "", "", "",0]; 
bigWave3 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0]; 
bigWave3 setParticleCircle [0, [0, 0, 0]]; 
bigWave3 setDropInterval 0.03;

wake1 = "#particlesource" createVehicleLocal _bigwave1Pos;
wake1 setPosASL _bigwave1Pos;
wake1 setParticleParams [["\A3\data_f\cl_water.p3d", 1, 0, 1], "", "Billboard", 1, 4, [1.5, 1.5, 1.5], 
 [-10, -10, 3], 0, 10, 0.01, 0, [5, 10, 15], [[0.7, 0.7, 0.7, 0.01], [0.4, 0.4, 0.4, 0.4], [0.4, 0.4, 0.4, 0]], [0.08], 1, 0, "", "", "",0]; 
wake1 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0.5]; 
wake1 setParticleCircle [0, [0, 0, 0]]; 
wake1 setDropInterval 0.05;

wake2 = "#particlesource" createVehicleLocal _bigwave2Pos;
wake2 setPosASL _bigwave2Pos;
wake2 setParticleParams [["\A3\data_f\cl_water.p3d", 1, 0, 1], "", "Billboard", 1, 4, [1.5, 1.5, 1.5], 
[-10, -10, 3], 0, 10, 0.01, 0, [5, 10, 15], [[0.7, 0.7, 0.7, 0.01], [0.4, 0.4, 0.4, 0.4], [0.4, 0.4, 0.4, 0]], [0.08], 1, 0, "", "", "",0]; 
wake2 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0.5]; 
wake2 setParticleCircle [0, [0, 0, 0]]; 
wake2 setDropInterval 0.05;

wake3 = "#particlesource" createVehicleLocal _bigwave3Pos;
wake3 setPosASL _bigwave3Pos;
wake3 setParticleParams [["\A3\data_f\cl_water.p3d", 1, 0, 1], "", "Billboard", 1, 4, [1.5, 1.5, 1.5], 
 [-10, -10, 3], 0, 10, 0.01, 0, [5, 10, 15], [[0.7, 0.7, 0.7, 0.01], [0.4, 0.4, 0.4, 0.4], [0.4, 0.4, 0.4, 0]], [0.08], 1, 0, "", "", "",0]; 
wake3 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0.5]; 
wake3 setParticleCircle [0, [0, 0, 0]]; 
wake3 setDropInterval 0.05;


_gischt1Pos = [2892.04,3084.33,0];
_gischt2Pos = [2895.9,3080.52,0];
_gischt3Pos = [2900.03,3075.95,0];

gischt1 = "#particlesource" createVehicleLocal _gischt1Pos;
gischt1 setPosASL _gischt1Pos;
gischt1 setParticleParams [["\A3\data_f\cl_basic.p3d", 1, 0, 1], "", "Billboard", 1, 4, [1.5, 1.5, 1.5], 
 [-1, -1, 1], 0, 1, 0.01, 0, [5, 10, 15], [[0.7, 0.7, 0.7, 0.01], [0.3, 0.3, 0.3, 0.3], [0.2, 0.2, 0.2, 0]], [0.08], 1, 0, "", "", "",0]; 
gischt1 setParticleRandom [0, [0.25, 0.25, 0], [-0.1, -0.1, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0.5]; 
gischt1 setParticleCircle [0, [0, 0, 0]]; 
gischt1 setDropInterval 0.05;

gischt2 = "#particlesource" createVehicleLocal _gischt2Pos;
gischt2 setPosASL _gischt2Pos;
gischt2 setParticleParams [["\A3\data_f\cl_basic.p3d", 1, 0, 1], "", "Billboard", 1, 4, [1.5, 1.5, 1.5], 
 [-1, -1, 1], 0, 1, 0.01, 0, [5, 10, 15], [[0.7, 0.7, 0.7, 0.01], [0.3, 0.3, 0.3, 0.3], [0.2, 0.2, 0.2, 0]], [0.08], 1, 0, "", "", "",0]; 
gischt2 setParticleRandom [0, [0.25, 0.25, 0], [-0.1, -0.1, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0.5]; 
gischt2 setParticleCircle [0, [0, 0, 0]]; 
gischt2 setDropInterval 0.05;

gischt3 = "#particlesource" createVehicleLocal _gischt3Pos;
gischt3 setPosASL _gischt3Pos;
gischt3 setParticleParams [["\A3\data_f\cl_basic.p3d", 1, 0, 1], "", "Billboard", 1, 4, [1.5, 1.5, 1.5], 
 [-1, -1, 1], 0, 1, 0.01, 0, [5, 10, 15], [[0.7, 0.7, 0.7, 0.01], [0.3, 0.3, 0.3, 0.3], [0.2, 0.2, 0.2, 0]], [0.08], 1, 0, "", "", "",0]; 
gischt3 setParticleRandom [0, [0.25, 0.25, 0], [-0.1, -0.1, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0.5]; 
gischt3 setParticleCircle [0, [0, 0, 0]]; 
gischt3 setDropInterval 0.05;


subtle1 = "#particlesource" createVehicleLocal _gischt1Pos;
subtle1 setPosASL _gischt1Pos;
subtle1 setParticleParams [["\A3\data_f\cl_basic.p3d", 1, 0, 1], "", "Billboard", 1, 3, [1.5, 1.5, 1.5],  
 [-3, -3, 0.001], 0, 0.012, 0.01, 0, [9, 10, 15], [[0.3, 0.3, 0.3, 0.01], [0.8, 0.8, 0.8, 0.05], [0.3, 0.3, 0.3, 0.01]], [0.08], 1, 0, "", "", "",0]; 
subtle1 setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0.5]; 
subtle1 setParticleCircle [0, [0, 0, 0]]; 
subtle1 setDropInterval 0.1;

subtle2 = "#particlesource" createVehicleLocal _gischt2Pos;
subtle2 setPosASL _gischt2Pos;
subtle2 setParticleParams [["\A3\data_f\cl_basic.p3d", 1, 0, 1], "", "Billboard", 1, 3, [1.5, 1.5, 1.5],  
 [-3, -3, 0.001], 0, 0.012, 0.01, 0, [9, 10, 15], [[0.3, 0.3, 0.3, 0.01], [0.8, 0.8, 0.8, 0.05], [0.3, 0.3, 0.3, 0.01]], [0.08], 1, 0, "", "", "",0]; 
subtle2 setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0.5]; 
subtle2 setParticleCircle [0, [0, 0, 0]]; 
subtle2 setDropInterval 0.1;

subtle3 = "#particlesource" createVehicleLocal _gischt3Pos;
subtle3 setPosASL _gischt3Pos;
subtle3 setParticleParams [["\A3\data_f\cl_basic.p3d", 1, 0, 1], "", "Billboard", 1, 3, [1.5, 1.5, 1.5],  
 [-3, -3, 0.001], 0, 0.012, 0.01, 0, [9, 10, 15], [[0.3, 0.3, 0.3, 0.01], [0.8, 0.8, 0.8, 0.05], [0.3, 0.3, 0.3, 0.01]], [0.08], 1, 0, "", "", "",0]; 
subtle3 setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0.5]; 
subtle3 setParticleCircle [0, [0, 0, 0]]; 
subtle3 setDropInterval 0.1;



waitUntil {sleep 5; createPonds };

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