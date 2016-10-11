if (!isServer) exitWith {};
DAM_BLOWN = true;

deleteVehicle dam_clutter_1;
deleteVehicle dam_clutter_2;
deleteVehicle dam_clutter_3;
deleteVehicle dam_clutter_4;
deleteVehicle dam_clutter_5;
deleteVehicle dam_clutter_6;
deleteVehicle dam_clutter_7;
deleteVehicle dam_clutter_8;

bigWave2 say3D "explosion";

dam_bomb_1 setDamage 1;
dam_bomb_2 setDamage 1;
dam_bomb_3 setDamage 1;
dam_bomb_4 setDamage 1;

bigWave1 setPosASL bigwave1Pos_2;
wake1 setPosASL bigwave1Pos_2;

bigWave2 setPosASL bigwave2Pos_2;
wake2 setPosASL bigwave1Pos_2;

gischt3 setPosASL gischt1Pos_2;
subtle3 setPosASL gischt1Pos_2;

deleteVehicle bigWave3;
deleteVehicle wake3;
deleteVehicle gischt3;
deleteVehicle subtle3;

sleep 0.01;



_part1 = [0,0,0] nearestObject 7888; 
_part1 hideObjectGlobal true; 
_part1 enableSimulation false; 
_part1 allowDamage false; 

_part2 = [0,0,0] nearestObject 7883; 
_part2 hideObjectGlobal true;
_part2 enableSimulation false; 
_part2 allowDamage false;


_rocks1 = createVehicle ["Land_SharpRock_monolith", [2892.27,3103.36,-12], [], 0, "CAN_COLLIDE"];
_rocks1 setDir 133.739;
_rocks2 = createVehicle ["Land_SharpRock_monolith", [2908.54,3090.74,-12], [], 0, "CAN_COLLIDE"];
_rocks2 setDir 133.739;

_boulder1 = createVehicle ["CUP_R_Boulder_01_EP1", [2912.34,3088.45,4.54199], [], 0, "CAN_COLLIDE"];
_boulder1 setDir 2;
// _boulder1 setPosATL [2912.34,3088.45,4.54199];

_boulder2 = createVehicle ["CUP_R_Boulder_01_EP1", [2904.37,3093.92,2.49749], [], 0, "CAN_COLLIDE"];
_boulder2 setDir 184.211;
// _boulder2 setPosATL [2904.37,3093.92,2.49749];

_boulder3 = createVehicle ["CUP_R_tk_Boulder_02_EP1", [2887.51,3110.86,1.75353], [], 0, "CAN_COLLIDE"];
_boulder3 setDir 232.016;
// _boulder3 setPosATL [2887.51,3110.86,1.75353];

_boulder4 = createVehicle ["CUP_R_tk_Boulder_03_EP1", [2895.99,3098.27,2.71361], [], 0, "CAN_COLLIDE"];
_boulder4 setDir 0;
// _boulder4 setPosATL [2895.99,3098.27,2.71361];

_stone1 = createVehicle ["Land_SharpStone_02", [2881.53,3109.29,4.5], [], 0, "CAN_COLLIDE"];
// _stone1 setPosATL [2881.53,3109.29,4.5];

 _stone2 = createVehicle ["CUP_R_tk_Stone_01_EP1", [2882.79,3109.77,5.27581], [], 0, "CAN_COLLIDE"];
// _stone2 setPosATL [2882.79,3109.77,5.27581];

dummybox setmass 100;
dummybox setCenterOfMass [[0,-1,0],1];


dummybox say3D "splash";

sleep 10;
// turn off lights
[0.97, getPos dummybox, 4000] execVM "fx\server\switchLights.sqf";
