_object = _this select 0;
_PS = "#particlesource" createVehicle getPos _object;
_PS setParticleCircle [0, [0, 0, 0]];
_PS setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_PS setParticleParams [["\A3\data_f\rainbow", 1, 0, 1], "", "SpaceObject", 1, 12.5, [0, 0, 0], [0, 0, 0.75], 0, 10, 7.9, 0.075, [1.2, 0.02, 4], [[0.1, 0.1, 0.1, 1], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.8], 1, 0, "", "", _object];
_PS setDropInterval 0.0057;


_source = "#particlesource" createVehicle getPos _object;
_source setParticleCircle [10, [1, 1, 1]];
_source setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_source setParticleParams [["\A3\data_f\blesk2", 1, 0, 1], "", "SpaceObject", 1, 20, [0, 0, 0], [0, 0, 0.6], 0, 1, 10, 0, [0.05, 2, 4], [[0.1, 0.1, 0.1, 1], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.008], 0.2, 0, "", "", _object];
_source setDropInterval 0.0005;