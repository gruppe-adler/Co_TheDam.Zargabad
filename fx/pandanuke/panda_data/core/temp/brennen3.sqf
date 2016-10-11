//   [Center, Intensity, Burn Time, <Object>, <Damage Time>, <Object Array>] execvm "fireEffect.sqf"
//Center - [x,y,z] Location where you want the fire to be centered.
//   If the optional <object> parameter is being used, then this will
//   be the location relative to the object (as with the drop command)
//Intensity - Number above 0 representing how big the fire will be. Best between 0-1.
//   A 1 makes a fire 10m in diameter// big enough to be a house fire. A 0.1 makes a fire
//   0.1m in diameter, a 2 makes a 20m fire, and so on.
//Burn Time - Approximate time the fire will burn for, in seconds. Fire will gradually become  
//   less intense as it burns out. A time of 0 will make the fire burn forever. You can stop  
//   the fire at any time by deleting the passed <object>.
//<Object> - Optional. This will be the object that the fire is centered on. As this object
//   moves, the fire will move. While moving, the fire will be less intense the faster the 
//   object is moving.
//<Damage Time> - Optional. Approximate time it will take for the fire to destroy/kill the 
//   object it is attatched to (if it starts out with maximum health), in seconds. If 
//   this time is longer than Burn Time, then object will stop taking damage after the fire
//   burns out. Suggested value is about half of Burn Time.
//<Object Array> - Optional. An array of objects that will also be damaged, if they are close enough 
//   to the object the fire is centered on. Damage depends on <Damage Time>, above.
//-------------------------------------------------------------------------------------

_center = _this select 0;

_size = _this select 1;
if ( _size == 0 ) then { _size = 0.01};

_dur = _this select 2;
// convert into number to be subtracted from _power
if ( _dur != 0 ) then { _dur = 1/(_dur*7)};

// object to center fire on. If nothing, create logic for sound to come from
private["_obj"];
if(count _this >= 4) then {_obj = _this select 3} else {_obj = "logic" createvehicle [0,0,0];  // _obj setpos _center// _center = [0,0,0]}

// Cause damage to objectif ( If so, determine how much to cause
_dmg = 0;
if(count _this >= 5) then {_dmg = 1/((_this select 4)*7)};

// Use array of units to damageif (
_list = [];
if(count _this >= 6) then {_list = _this select 5};


//Z velocity of particles. When _size is large, this is large to spread particles apart more.
_zVel = 3*_size + _size^1.5;
//Decreased over time as script runs. As _power decreases, so does intensity of fire
_power = 1;
//used to count loops
_i = 0;


//#loop
if ( _i >= 30 ) then { _obj say "fire"};// _i = 0
_dist = random (5*_size*_power);
_dir = random 360;
drop [["\A3\data_f\cl_fire",16,0,16,0],"","Billboard",100,6*_power/((0.1*(abs speed _obj))+1),[(_center select 0) + _dist * cos _dir,(_center select 1) + _dist * sin _dir, _center select 2],[0,0.3*(speed _obj),_zVel*_power],0,34*_size*_power,27*_size*_power,0.05,[5*_size*_power,7*_size*_power,14*_size*_power,22*_size*_power],[[1,1,1,0.1+0.8*_power],[0.07,0,0,0.1+0.7*_power],[0,0,0,0.1+0.5*_power],[0,0,0,0]],[0,1*_power,0,0.33*_power,0.66*_power],0.2,(_zVel/10)*_power,"","",_obj]
sleep 0.1;
_power = _power - _dur;
_i = _i + 1;
if ( _dmg > 0 ) then { _obj setdammage (getdammage _obj + _dmg)};// {if((_x distance _obj) <= (7*_size*_power)) then {_x setdammage (getdammage _x + _dmg)}} foreach _list
if ( _power > 0.2 AND _obj == _obj ) then { goto "loop"};


//#end
if ( typeof _obj == "logic" ) then { deletevehicle _obj};
//exit
true
