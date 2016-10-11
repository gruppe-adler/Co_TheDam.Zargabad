	_pos = position player;
	_parray = [
	/* 00 */		["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 12, 8, 1],
	/* 01 */		"",
	/* 02 */		"Billboard",
	/* 03 */		1,
	/* 04 */		4,
	/* 05 */		[0,0,0],
	/* 06 */		[0,0,0],
	/* 07 */		1,
	/* 08 */		0.000001,
	/* 09 */		0,
	/* 10 */		1.4,
	/* 11 */		[0.05,0.05],
	/* 12 */		[[0.1,0.1,0.1,1]],
	/* 13 */		[0,1],
	/* 14 */		0.2,
	/* 15 */		1.2,
	/* 16 */		"",
	/* 17 */		"",
	/* 18 */		vehicle player
	];
	snow = "#particlesource" createVehicleLocal _pos;  
	snow setParticleParams _parray;
	snow setParticleRandom [0, [10, 10, 7], [0, 0, 0], 0, 0.01, [0, 0, 0, 0.1], 0, 0];
	snow setParticleCircle [0.0, [0, 0, 0]];
	snow setDropInterval 0.003;
	
	
	sleep panda_snowtimeout;
	deletevehicle snow;

	exit;