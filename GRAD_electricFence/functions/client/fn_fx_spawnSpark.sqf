params ["_pos"];


_sparks = "#particlesource" createVehicle _pos;
_sparks setPos _pos;
_sparks setParticleClass "AvionicsSparks";


_sparkSounds = selectRandom ["A3\Sounds_F\sfx\special_sfx\sparkles_wreck_1.wss","A3\Sounds_F\sfx\special_sfx\sparkles_wreck_5.wss"];

playSound3D [_sparkSounds, objNull, false, _pos, 10, 1 + random (0.1) - random (0.2), 50];

sleep 1.5;

deleteVehicle _sparks;

sleep 1.5;