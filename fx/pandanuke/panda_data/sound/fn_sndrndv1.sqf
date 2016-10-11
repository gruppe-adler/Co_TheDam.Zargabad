//_units = if (!isMultiplayer) then {switchableUnits} else {playableUnits};
//{[_x] spawn panda_fnc_sndrndv1;} foreach _units;



_unit = _this select 0;
while {true} do 
{

			sleep 10;
			_sounds = ["frieren1","frieren2","frieren3","hust1","schnief1","schnief2","schnief3","schnief4","schnief5","schnief6","schnief7","schnief8","schnief9","schnief10"];
			sleep (random 60);
			sleep (random 30);
			_rand = random (count _sounds);
			_random_Sound = _sounds select _rand;
			_unit say3D _random_Sound;
			sleep 10;

};

	
		