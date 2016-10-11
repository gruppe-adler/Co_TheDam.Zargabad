/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_unit","_pos","_rad","_force","_xPos","_yPos","_xVel","_yVel","_zVel","_coef","_fi",
"_n","_fi","_dam","_vel","_vecUp","_nX","_nY","_nXX","_nYY","_leanF","_leanX","_leanY","_cyklus","_theta",
"_diference","_fXX","_fYY","_fZZ","_xxF","_yyF","_zzF","_spread","_omega","_heatRad","_timeAfter","_plus","_radRad",
"_material","_intenzity","_Sound","_soundPos","_SoundWave","_SoundTurbolence","_lenght","_height","_width","_weight",
"_weakness1","_weakness2","_weakness3","_cubature","_acc","_steel","_blastDir","_burnUnit","_kappa","_zMaxima","_zChange",
"_crossXUp","_crossZUp","_crossXInter","_crossZInter","_k1","_k2","_q1","_q2","_x0","_xAcc","_yAcc","_zAcc","_crewInside",
"_shockWavePassed","_fakeBlast","_heatDamage","_markerArray","_density","_xP","_yP","_pD","_densRad","_luckyDay","_house",
"_nObject","_mortality","_getStance","_result","_animState","_animStateChars","_animP","_lowerAngle","_upperAngle",
"_nObjects","_insider","_behinder","_survivor","_stander","_priorityB","_priorityM","_bParams","_bParamsM","_bPa","_bPb","_bPc"];

// -- Declaration
_unit = _this select 0; 			// unit affected by shockwave
_pos = _this select 1;  			// centre of explosion


_shockWavePassed = false; 	// Check if the shockwave already passed unit


_blastDir = 0;	// Angle which is Unit pointed to a Center of Explosion (BI system)
_theta = 0;		// Lean Angle
_omega = 0;		// Velocity Angle (Cartesian system)
_n = 0;			// coef
_coef = 0;		// Coeficient defining type of unit
_density = 0;	// Ammount of Radiation Cloud points in close area of Unit
_fi = 0;		// Angle which is Unit pointed to a Center of Explosion (Cartesian system)
_k1 = 0;		// Escalation of function Underline
_k2 = 0;		// Escalation of function Interline
_q1 = 0;		// Y movement of function Underline
_q2 = 0;		// Y movement of function Interline
_x0 = 0;		// Point where Unit cross Ground to define Overpressure in any place in space
_xP = 0;		// X position of Radiation Cloud point
_yP = 0;		// Y position of Radiation Cloud point
_pD = 0;		// Distnace between Unit and point
_leaner = 0.04; // Intensity of Push and Lean it self 0.01 means lot of CPU computing (recommend for 0.03)
_house = 1;		// Basic Coeficient for Man class defining if he is outside of house or inside or behind it

// -- vehicle properties
_lenght = 0;	// Lenght of Unit	\
_height = 0;	// Height of Unit	-- Modified to be not filled in full shape of cuboid
_width = 0;		// Width of Unit	/
_weight = 0;	// Weight of Unit
_weakness1 = ""; //	I\
_weakness2 = ""; // I-- Weak parts of Unit 
_weakness3 = ""; // I/
_steel = 0; 	// Robustness of Unit
//  | 5 - Human , 2 - Cars , 3 - Trucks,Choppers,Planes, 4 - HMMWV,Jackal, 8 - T34,T55,APC, 10 - M1A1,T72,T90

_crewInside = crew _unit; // Array of units inside of vehicle



if (_unit isKindOf "Car") then {_coef = 140; _lenght = 4.5; _height = 1.3; _width = 1.6; _weight = 800; _steel = 2; _weakness1 = "kola"; _weakness2 = "svetla";};
if (_unit isKindOf "APC") then {_coef = 120; _lenght = 7.94; _height = 3.26; _width = 3.27; _weight = 29100; _steel = 9;};
//if (_unit isKindOf "Planes") then {_coef = 140; _lenght = 5.50; _height = 2.35; _width = 2.30; _weight = 5300; _steel = 8; _weakness1 = "kanon"; _weakness2 = "elektronika";};
if (_unit isKindOf "Motorcycle") then {_coef = 150; _lenght = 1.33; _height = 0.83; _width = 0.3; _weight = 105;};
if (_unit isKindOf "Tank") then {_coef = 120; _lenght = 9.82; _height = 2.72; _width = 3.79; _weight = 48200; _steel = 10; _weakness1 = "pasy"; _weakness2 = "kanon"; _weakness3 = "elektronika";};
if (_unit isKindOf "Man") then {_coef = 180; _lenght = 0.30; _height = 1.77; _width = 0.40; _weight = 120; _steel = 1; _weakness1 = "ruce"; _weakness2 = "nohy";};
if (_unit isKindOf "Air") then {_coef = 150; _lenght = 18.00; _height = 4.5; _width = 2.5; _weight = 4000; _steel = 4; _weakness1 = "elektronika"; _weakness2 = "motor";};
if (_unit isKindOf "StaticWeapon") then {_coef = 10; _lenght = 1.05; _height = 1.07; _width = 1.00; _weight = 100; _steel = 4;};
if (_unit isKindOf "Ship") then {_coef = 100; _lenght = 5.35; _height = 3.27; _width = 2.5; _weight = 395; _steel = 3;};
//if (_unit isKindOf "Thing") then {_coef = 10;};
if (_unit isKindOf "Building") then {_coef = 8;};
if (_unit isKindOf "Strategic") then {_coef = 5;};
if (_unit isKindOf "Nonstrategic") then {_coef = 5;};
// -- Final Declaration of Shockwave impact into a car
if (panda_schockausbreitung < panda_schockdistanz) then
{
//deleteVehicle _burnUnit; // blowing out the fire by a shockwave
	// -- Overpressure in air
	_xPos = ((position _unit select 0) - (position _pos select 0));
	_yPos = ((position _unit select 1) - (position _pos select 1));
	_zPos = ((position _unit select 2) - (position _pos select 2));

	_GR = sqrt(_xPos^2 + _yPos^2); // GR = Ground radius
	_zMaxima = 8 * _GR^0.5;
	_zChange = 15 * _GR^0.5;
	
	// IF VEHICLE IS ABOVE CHANGING CURVE y = 15*x^0.5 AND IS IN y = sqrt(R^2 - x^2)
	if (_zPos > _zChange) then
		{
		_rad = _unit distance _pos;
		_crossXUp = 1/2*(sqrt(4*_rad^2+50625)-225);
		_crossZUp = 15 * _crossXUp^0.5;
		_k2 =(_crossZUp + 300)/(_crossXUp - 4000);
		_q2 = _crossZUp - _crossXUp*_k2;
		_crossXInter = (- _k2*_q2-8*sqrt(16-_k2*_q2)+32)/_k2^2;
		_crossZInter = 8 * _crossXInter^0.5;
		_k1 =(_crossZInter + 500)/(_crossXInter - 150);										
		_x0 = (500 + _k1*150)/ _k1;
		};	
	// IF VEHICLE IS BETWEEN CHANGING CURVE y = 15*x^0.5 AND MAXIMUM CURVE y = 8*x^0.5 AND IS IN y = -kx + q
	if (_zPos > _zMaxima and _zPos <= _zChange) then
		{
		_k2 =(_zPos + 300)/(_GR - 4000);
		_q2 = _zPos - _GR*_k2;
		_crossXInter = (- _k2*_q2-8*sqrt(16-_k2*_q2)+32)/_k2^2;
		_crossZInter = 8 * _crossXInter^0.5;
		_k1 =(_crossZInter + 500)/(_crossXInter - 150);										
		_x0 = (500 + _k1*150)/ _k1;
		};
	// IF VEHICLE IS BELLOW MAXIMUM CURVE y = 8*x^0.5 AND IS IN y = kx + q
	if (_zPos <= _zMaxima) then
		{
		_k1 =(_zPos + 500)/(_GR - 150);
		_x0 = (500 + _k1*150)/ _k1;
		};
	//FOR MORE INFO ABOUT THESE APROXIMATED FUNCTIONS VISIT http://en.wikipedia.org/wiki/Effects_of_nuclear_explosions

_overPressure =(((15.071*mT^0.5131)*(_x0/1000)^(-0.016*ln(mT) - 1.4113))*3); // Result in kPa

if (_xPos >= 0 and _yPos >= 0) then {_fi = 0  + atan (abs(_yPos / _xPos));};
if (_xPos >= 0 and _yPos < 0) then {_fi = 270 + atan (abs(_xPos / _yPos));};
if (_xPos < 0 and _yPos < 0) then {_fi = 180 + atan (abs(_yPos / _xPos));};
if (_xPos < 0 and _yPos >= 0) then {_fi = 90 + atan (abs(_xPos / _yPos));};

if (_fi <= 90) then {_blastDir = 90 - _fi;};
if (_fi > 90) then {_blastDir = 450 - _fi;};	

_kappa = atan(abs(_zPos / _GR));

// -- Definining position of vehicle in space, count of impact force and its own accelaration after impact
_dir = getDir _unit;
_diference = abs(_blastDir - _dir);

// -- Check in what position unit stands: UP / MIDDLE / DOWN	(By Muzzleflash)
// -- Reducing Height if is Unit in Crouch or Prone
_result = 1;
/*
if (_unit isKindOf "Man") then
					{
					_animState = animationState _unit;
					_animStateChars = toArray _animState;
					_animP = toUpper (toString [_animStateChars select 5,_animStateChars select 6,_aniMStateChars select 7]);
					switch (_animP) do
						{
						case "ERC": {_result = 1};	// "UP"
						case "KNL": {_lenght = _lenght*1.7; _height = _height * 0.62; _result = 1.18};	// "MIDDLE"
						case "PNE": {_lenght = _lenght*5.1; _height = _height * 0.19; _result = 1.42};	// "DOWN"
						default {_result = 1};		// "UP"
						};
					};
*/
_cubature = (abs(_lenght* sin(_diference)) + abs(_width * cos(_diference))*_height); // Result in m^2
_force = _overpressure * _cubature; // Result in kN

_acc = 100*(_force / _weight);

// -- Defining damage to a vehicle + extra damage to its own weak parts like Engine,Electronics
_dam = _overPressure / (_steel * 8);

/*		// -- Check All Physical atributes impacting unit -- Be sured that if you use this check your vehicle wont be damaged (Bug?)
				if ((isPlayer _unit or player in _unit)) then
					{
					hintC format ["Overpressure: %1\nCubature: %2\nForce: %3\nAccelaration: %4\nDamage: %5",
					_overPressure,_cubature,_force,_acc,_dam];
					};
		 // --	
*/

			_luckyDay = 0;
			_insider = 0;	// Maximal distance for Inside area of building.
			_behinder = 0;	// Maximal distance for building where it can act like "Behind" cover.
			_survivor = 0;	// Multiplier of how much is building able to survive Blast (Standard is Brick small house: Inside=3/Behind=1.5)
			_stander = 0;	// Can Unit survive while stands inside/behind certain buidling? (1 = best chances > 0.1 = reallz poor chances)
			_nObject = "";
			_priorityM = 320;
			_bParamsM = [];
			
if (_dam > 1) then {_dam = 1;};


// -- Attempt to make some randomness in mortality of Soldier Unit
		if (_unit isKindOf "Man") then
			{
			_nObjects = nearestObjects [_unit, ["Building","House","Strategic","NonStrategic"], 40];
		
			if (count _nObjects > 0) then
			{
				{
					_bPa = _unit distance _x;
					_bPb = _pos distance _x;
					_bPc = _unit distance _pos;
					_priorityB = 0;
					_bParams = [_x,0,0,0,0];
//[_x,0,0,0,0] call panda_fnc_schutzgebaude;
					
					//player sidechat format ["%1, bPa:%2, bPb: %3, bPc: %4",_bParams,_bPa,_bPb,_bPc]; // zeigt alle gebäude im umkreis von 40 metern
					
					if (_bParams select 1 != 0 and _bParams select 2 != 0) then
					{
						if (_bParams select 1 >= _bPa) then {_priorityB = _priorityB + 100;};
						if (_bParams select 1 < _bPa and _bParams select 2 >= _bPa) then {_priorityB = _priorityB + 200;};
						if (_bParams select 2 < _bPa) then {_priorityB = _priorityB + 300;};
						if (_bPc < _bPb) then {_priorityB = _priorityB + 10;};
						_priorityB = _priorityB - (_bParams select 3);
						if (_priorityB < _priorityM) then {_priorityM = _priorityB; _bParamsM = _bParams;};
					};
				} forEach _nObjects;
			} else {_nObject = nearestObject [_unit,"Building"]; _insider = 0; _behinder = 0; _survivor = 0; _stander = 0;};

			if (count _bParamsM > 0) then
				{
				_nObject = _bParamsM select 0; _insider = _bParamsM select 1; _behinder = _bParamsM select 2; _survivor = _bParamsM select 3; _stander = _bParamsM select 4;
				}
			else {_nObject = nearestObject [_unit,"Building"]; _insider = 0; _behinder = 0; _survivor = 0; _stander = 0;};
	
			// Debug for if building is inside of list > If Ins and Behind has some value except 0, its in list	
			//hint format ["nObj: %3\nIns: %1\nBehind: %2\nPrior: %4",_insider,_behinder,_nObject,_priorityM];			
		
				if (_unit distance _nObject <= _insider and _unit distance _pos <= _nObject distance _pos) then
					{
					_house = 2.41*_survivor;
					_acc = _acc / 60;
					_luckyDay = _luckyDay + 14*_survivor;
					};
				
				if (_unit distance _nObject <= _insider and _unit distance _pos > _nObject distance _pos) then
					{
					_house = 3.03*_survivor;
					_acc = _acc / 60;
					_luckyDay = _luckyDay + 18*_survivor;
					};	
								
				if (
					_unit distance _nObject > _insider
					and
					_unit distance _nObject <= _behinder
					and
					_unit distance _pos > _nObject distance _pos
					) then
						{
						_house = 1.47*_survivor;
						_acc = _acc/(36/mT + ceil random (24/mT));
						_luckyDay = _luckyDay + 9*_survivor;
						};
			_house = _house * _result;
			_mortality = (_overPressure^2.3 / ((ln(_house)+1)*111));
			_luckyDay = _luckyDay + ceil random 100;

			if (_luckyDay > _mortality and _unit distance _nObject <= 15) then 
				{
				_acc = _acc/((50/mT)+ ceil random (50/mT));
				};

			if (_luckyDay > _mortality) then
				{
				_dam = (_dam / (1 + 10/mT + ceil random (10/mT)));
				_acc = _acc/((22/mT + ceil random (9/mT)));	
				};
			};
// -- End of Random Mortality to Man units

if (_unit isKindOf "Air") then
	{
	_dam = (_dam / (ln(_x0)/(ln(_x0-_x0/1.3))));
	_acc = _acc/(2/(ln(mT)+1));
	};

			
/*		// -- Check where player is
				if ((isPlayer _unit or player in _unit)) then
					{
					hintC format ["Object: %1\nUDistO: %2\n - DistU: %4\nCoef: %5\nMort: %8 - Luck? %6\nDam: %7\nOP: %3\nAcc: %9\nInside Coef: %10\nBehind Coef: %11",
					_nObject,_nObject distance _unit,_overPressure,_GR,_house,_LuckyDay,_dam,_mortality,_acc,_insider,_behinder];
					};
		// --						
	*/
	
_unit setDamage ((Damage _unit) + _dam);

if (!(_unit isKindOf "Man")) then
	{
	{_x setDamage ((Damage _x) + (_dam*(0.3+(random 0.6))))} forEach crew _unit;
	};

	//if (_weakness1 != "") then {_unit setHit [_weakness1,((Damage _unit) + _dam + _heatDamage)];};
	//if (_weakness2 != "") then {_unit setHit [_weakness2,((Damage _unit) + _dam + _heatDamage)];};
	//if (_weakness3 != "") then {_unit setHit [_weakness3,((Damage _unit) + _dam + _heatDamage)];};

	if (_weakness1 != "") then {_unit setHit [_weakness1,((Damage _unit) + _dam + 0.1)];};
	if (_weakness2 != "") then {_unit setHit [_weakness2,((Damage _unit) + _dam + 0.2)];};
	if (_weakness3 != "") then {_unit setHit [_weakness3,((Damage _unit) + _dam + 0.3)];};		
	
// -- Part which is counting with Shock Force and Leaning of vehicle or unit

if (_coef > 10) then
	{
	if (_force < 0) then {_force = 0;};

	// Debug if speed and lean of vehicle is equal to zero
	_vel = velocity _unit;
	if (_vel select 0 == 0) then {_vel = [0.0001,_vel select 1, _vel select 2];};
	if (_vel select 1 == 0) then {_vel = [_vel select 0,0.0001, _vel select 2];};
	if (_vel select 2 == 0) then {_vel = [_vel select 0,_vel select 1, 0.0001];};	
	_vecUp = vectorUp _unit;
	if (_vecUp select 0 == 0) then {_vecUp = [0.0001,_vecUp select 1, _vecUp select 2];};
	if (_vecUp select 1 == 0) then {_vecUp = [_vecUp select 0,0.0001, _vecUp select 2];};
	if (_vecUp select 2 == 0) then {_vecUp = [_vecUp select 0,_vecUp select 1, 0.0001];};

	_xVel = _vel select 0;
	_yVel = _vel select 1;
	_zVel = _vel select 2;
	// Check in which way is vehicle moving and some speed correction of it
	if (_xVel >= 0 and _yVel >= 0) then {_omega = 0  + atan (abs(_yVel / _xVel));};
	if (_xVel >= 0 and _yVel < 0) then {_omega = 270 + atan (abs(_xVel / _yVel));};
	if (_xVel < 0 and _yVel < 0) then {_omega = 180 + atan (abs(_yVel / _xVel));};
	if (_xVel < 0 and _yVel >= 0) then {_omega = 90 + atan (abs(_xVel / _yVel));};
	_diferencial = abs(_omega - _fi);
	if (_diferencial > 90 and _diferencial < 270) then
		{
		_xVel = _xVel * (cos(_diferencial)+2)/ ln(_coef/7.77);
		_yVel = _yVel * (cos(_diferencial)+2)/ ln(_coef/7.77);
		};
		
	// -- Setting up for Leaning
	_nY = 0; _nX = 0; _nXX = 0; _nYY = 0; _fXX = 0; _fYY = 0; _fZZ = 0;	_n = 0;
	_nX = _leaner * cos (_fi);
	_nY = _leaner * sin (_fi);
	_cyklus = _acc^0.4 / 4;
	if (_cyklus < _leaner) then {_cyklus = _leaner;};

	_zAcc = _acc * sin(_kappa) + (3 * _acc) / ln(_GR);
	
	if (((_diference > 60 and _diference < 120)or(_diference > 240 and _diference < 300))
		and(_unit isKindOf "LandVehicle")) then
		{
		_acc = _acc * 0.36;
		};
	
	_xAcc = _acc * cos(_fi);
	_yAcc = _acc * sin(_fi);

	_xxF = _xAcc / _cyklus;
	_yyF = _yAcc / _cyklus;
	_zzF = _zAcc / _cyklus;
	
	// -- Finding out on what side unit should lean
	if ((_vecUp select 0) >= 0 and (_vecUp select 1) >= 0) then {_theta = 0  + atan (abs((_vecUp select 1) / (_vecUp select 0)));};
	if ((_vecUp select 0) >= 0 and (_vecUp select 1) < 0) then {_theta = 270 + atan (abs((_vecUp select 0) / (_vecUp select 1)));};
	if ((_vecUp select 0) < 0 and (_vecUp select 1) < 0) then {_theta = 180 + atan (abs((_vecUp select 1) / (_vecUp select 0)));};
	if ((_vecUp select 0) < 0 and (_vecUp select 1) >= 0) then {_theta = 90 + atan (abs((_vecUp select 0) / (_vecUp select 1)));};
	_diference = abs(_theta - _fi);

	if (_diference < 270 and _diference > 90 and _unit isKindOf "Air") then {_nX = - _nX; _nY = - _nY;};
	
	// -- Cycle which will Lean unit and push it in wright way

	// -- Locking vehicle	
	{_x disableAI "MOVE";} forEach crew _unit;
	_unit lock true;
	
	// -- Push and Lean it self

	while {_n < _cyklus} do
		{
		    _unit setvectorup [(_vecUp select 0)+_nXX,(_vecUp select 1)+_nYY,(_vecUp select 2)];
			_n = _n + _leaner;
			_nXX = _nXX + _nX; _nYY = _nYY + _nY;
			_unit setVelocity [(_xVel+_fXX),(_yVel+_fYY),((_vel select 2)+_zAcc)];
			_fXX = _fXX + _xxF; _fyy = _fyy + _yyF; _fzz = _fzz + _zzF; 
			sleep _leaner;
      	};
	// -- Opening vehicle
	{_x enableAI "MOVE";} forEach crew _unit;
	_unit lock false;
	};
sleep 2;
_densRad = 0;
};

