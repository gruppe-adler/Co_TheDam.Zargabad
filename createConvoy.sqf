GRAD_setWaypoints = {
	params ["_group","_waypoints"];	

	{
		_wp = _group addWaypoint [_x, _foreachindex];
		_wp setWaypointCompletionRadius 100;
		_wp setWaypointType "MOVE";
		_wp setWaypointStatements ["true", ""];
		
		// delete all vehicles of group if they reach last wp
		if (_forEachIndex == (count _waypoints - 1)) then {
			_wp setWaypointStatements ["true", "
					{
						if (alive _x) then { 
							deleteVehicle _x;
						};
					} foreach thislist + [vehicle this]
				"];
		};
	} forEach _waypoints;
};

GRAD_spawnConvoyVehicles = {
	params ["_vehicleArray","_pos","_dir","_side"];

	// _vehicleArray is [_classname, _init, _inventory]

	

	_distanceBetweenVehicles = 30;
	_distanceFromFirst = 0;
	_group = createGroup _side;


	
	{

		
		_classname = _vehicleArray select _foreachindex select 0;
		_init = _vehicleArray select _foreachindex select 1;
		_inventory = _vehicleArray select _foreachindex select 2;

		diag_log format ["vehicle classname is %1, %2, %3", _classname, _init, _inventory];

		_distanceFromFirst = _distanceFromFirst + _distanceBetweenVehicles;
		_calculatedPos = [_pos, _distanceFromFirst, _dir] call BIS_fnc_relPos;
		_vehicle = createVehicle [_classname, _calculatedPos, [], 0, "NONE"];

		// make consistent group for whole convoy
		createVehicleCrew _vehicle;
		{ [_x] joinSilent _group; } forEach (crew _vehicle);

		// add everything to zeus
		{zeusModule addCuratorEditableObjects [[_x],true]} forEach crew _vehicle;
		zeusModule addCuratorEditableObjects [[_vehicle],true];

		// fill vehicle with reasonable stuff
		[_vehicle] call _inventory;
		sleep 0.1;

		// adjust vehicle (remove lamp covers and stuff)
		if (count _init > 0) then {
			[_vehicle, nil, _init] call BIS_fnc_initVehicle;
		};

		_vehicle setVehicleLock "UNLOCKED";
		// _vehicle forceFollowRoad true;

	} forEach _vehicleArray;

	// set convoy behaviour
	{	
		_x setSpeedMode "LIMITED";
		_x setCombatMode "SAFE";
		_x limitSpeed 5;
	} forEach units _group;

	[_group, [[3431.92,8180.26,0],[3178.58,2.20578,0]]] call GRAD_setWaypoints;

};


GRAD_clearInventory = {
	params ["_container"];

	clearWeaponCargoGlobal _container;
    clearItemCargoGlobal _container;
    clearBackpackCargoGlobal _container;
    clearMagazineCargoGlobal _container;
};

GRAD_fillCargoWithSoldiers = {
	params ["_vehicle","_isArmy"];

	// todo: find right group in afghan police
	_squad = (configFile >> "CfgGroups" >> "West" >> "LOP_AA" >> "Infantry" >> "LOP_AA_Rifle_squad");

	

	if (_isArmy) then {
		// todo: find right group in afghan army
		_squad = (configfile >> "CfgGroups" >> "West" >> "LOP_AA" >> "Infantry" >> "LOP_AA_Rifle_squad_ANP");
	};

	_soldiers = [[0,0,0], WEST, _squad] call BIS_fnc_spawnGroup;
	
	{_x assignAsCargo _vehicle; _x moveInCargo _vehicle;} forEach units _soldiers;

	// delete leftovers
	{if !(_x in _vehicle) then { deleteVehicle _x}; } forEach units _soldiers;
};

GRAD_addBombTruckProperties = {
	params ["_truck"];

	_truck setVariable ["GRAD_isBombTruck",true,true];
		
	_truck addEventHandler ["Explosion",{
		_veh = _this select 0;
		_dmg = _this select 1;

		diag_log format ["%1 vehicle bomb EH triggered",_veh];

		// if (!alive _veh) exitWith { _veh removeAllEventHandlers "Explosion"; };
		// if !("DemoCharge_Remote_Mag" in (getMagazineCargo _veh)) exitWith {};

		// if (_dmg > 0.3 || damage _veh > 0.3) then {

			_veh removeAllEventHandlers "Explosion"; 
			diag_log format ["%1 vehicle bomb activated",_veh];
			[_veh] spawn {
				params ["_veh"];
				_bomb = "Bo_GBU12_LGB_MI10" createVehicle (position _veh);
				_bomb setVelocity [0,0,-100];
				sleep 0.2;

				_bomb = "Cluster_120mm_AMOS" createVehicle (position _veh);
				_bomb setVelocity [0,0,-100];

				sleep 0.1;

				_bomb = "Sh_120mm_AMOS" createVehicle (position _veh);
				_bomb setVelocity [0,0,-100];
				sleep 0.1;

				_bomb = "SatchelCharge_Remote_Ammo" createVehicle (position _veh);
				_bomb setDamage 1;
				sleep 0.1;
				_bomb = "SatchelCharge_Remote_Ammo" createVehicle [position _veh select 0, position _veh select 1, 2];
				_bomb setDamage 1;
				sleep 0.1;

				_smoke = "BigDestructionSmoke";
				_emitterSmoke = "#particlesource" createVehicle (position _veh);
	            _emitterSmoke setParticleClass _smoke;
       	 };
		// };
	}];

};


/*

convoy:
UAZ/Car, M113, Ural Explosives, Ural Explosives, Ural Fuel, Ural Infantry, M1113?

*/

_vehicleArray = [

	[
		"LOP_AA_M1025_W_M2",
		["light_hide", 1],
		{
			_veh = _this select 0;
			_veh call GRAD_clearInventory;
		}
	],
	[
		"LOP_AA_M113_C",
		["light_hide", 1],
		{
			_veh = _this select 0;
			_veh call GRAD_clearInventory;
			[_veh,true] call GRAD_fillCargoWithSoldiers;
		}
	],
	[
		"LOP_AA_Ural",
		["light_hide", 1],
		{
			_veh = _this select 0;
			_veh call GRAD_clearInventory;
			_veh lockCargo true;
			_veh addWeaponCargoGlobal ['SatchelCharge_Remote_Ammo',100];
			[_veh] call GRAD_addBombTruckProperties;			
		}
	],
	[
		"LOP_AA_Ural_open",
		["light_hide", 1],
		{
			_veh = _this select 0;
			_veh call GRAD_clearInventory;
			[_veh,true] call GRAD_fillCargoWithSoldiers;
		}
	],
	[
		"LOP_AA_Ural_open",
		["light_hide", 1],
		{
			_veh = _this select 0;
			_veh call GRAD_clearInventory;
			[_veh,true] call GRAD_fillCargoWithSoldiers;
		}
	],
	[
		"rhsgref_cdf_b_ural_fuel",
		["light_hide", 1],
		{
			_veh = _this select 0;
			_veh call GRAD_clearInventory;	
		}
	],
	[
		"rhsgref_cdf_b_ural_fuel",
		["light_hide", 1],
		{
			_veh = _this select 0;
			_veh call GRAD_clearInventory;	
		}
	],
	[
		"LOP_AA_M113_C",
		["light_hide", 1],
		{
			_veh = _this select 0;
			_veh call GRAD_clearInventory;
			[_veh,true] call GRAD_fillCargoWithSoldiers;
		}
	]
];


[_vehicleArray, [3431.92,8180.26,0], 0, west] call GRAD_spawnConvoyVehicles;