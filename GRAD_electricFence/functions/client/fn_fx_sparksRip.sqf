// this execVM "\A3\Structures_F\Wrecks\Scripts\Wreck_Heli_Attack_01.sqf"

// extract sparks only

// --- avionics sparks 1 (gunner's display) ---

[_v] spawn {

	_v = _this select 0;

	sleep (5 + random 20);

	while {!(isNull _v)} do {

		_sparks = "#particlesource" createVehicleLocal getpos _v;

		_sparks attachTo [_v,[0,0,0],"avionics_effect_4"];

		_pos = getPos _sparks;

		deleteVehicle _sparks;

		_posV = getPos _v;

		

		while {(_posV distance (getPos _v)) < 0.5} do {

			_sparks = "#particlesource" createVehicleLocal getpos _v;

			_sparks setPos _pos;

			_sparks setParticleClass "AvionicsSparks";

			playSound3D ["A3\Sounds_F\sfx\special_sfx\sparkles_wreck_1.wss", objNull, false, _pos, 10, 1 + random (0.1) - random (0.2), 50];

			sleep 1.5;

			deleteVehicle _sparks;

			

			sleep (5 + random 20);

		};

	};

};



// --- avionics sparks 2 (gunner's controls) ---

[_v] spawn {

	_v = _this select 0;

	sleep (5 + random 20);

	while {!(isNull _v)} do {

		_sparks = "#particlesource" createVehicleLocal getpos _v;

		_sparks attachTo [_v,[0,0,0],"avionics_effect_6"];

		_pos = getPos _sparks;

		deleteVehicle _sparks;

		_posV = getPos _v;

		

		while {(_posV distance (getPos _v)) < 0.5} do {			

			_sparks = "#particlesource" createVehicleLocal getpos _v;

			_sparks setPos _pos;

			_sparks setParticleClass "AvionicsSparks";

			

			_smoke = "#particlesource" createVehicleLocal getpos _v;

			_smoke setPos _pos;

			_smoke setParticleClass "AvionicsSmoke";

			playSound3D ["A3\Sounds_F\sfx\special_sfx\sparkles_wreck_2.wss", objNull, false, _pos, 10, 1 + random (0.1) - random (0.2), 50];

			

			sleep 1.5;

			deleteVehicle _sparks;

			sleep 1.5;

			

			deleteVehicle _smoke;

			

			sleep (5 + random 20);

		};

	};

};



// --- avionics sparks 3 (pilot's controls) ---

[_v] spawn {

	_v = _this select 0;

	sleep (5 + random 20);

	while {!(isNull _v)} do {

		_sparks = "#particlesource" createVehicleLocal getpos _v;

		_sparks attachTo [_v,[0,0,0],"avionics_effect_5"];

		_pos = getPos _sparks;

		deleteVehicle _sparks;

		_posV = getPos _v;

		

		while {(_posV distance (getPos _v)) < 0.5} do {			

			_sparks = "#particlesource" createVehicleLocal getpos _v;

			_sparks setPos _pos;

			_sparks setParticleClass "AvionicsSparks";

			

			_smoke = "#particlesource" createVehicleLocal getpos _v;

			_smoke setPos _pos;

			_smoke setParticleClass "AvionicsSmoke";

			playSound3D ["A3\Sounds_F\sfx\special_sfx\sparkles_wreck_1.wss", objNull, false, _pos, 10, 1 + random (0.1) - random (0.2), 50];

			

			sleep 1.5;

			deleteVehicle _sparks;

			sleep 1.5;

			deleteVehicle _smoke;

			

			sleep (5 + random 20);

		};

	};