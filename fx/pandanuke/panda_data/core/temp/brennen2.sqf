private ["_vfxstate","_dmg","_pdmg","_dstate","_epicenter","_chance","_objects","_DynamicBlur","_FilmGrain"];
_epicenter = _this select 0;
_range = _this select 1;
_chance = _this select 2; 
_vfxstate=0;
_dstate=0;

_artefacts = ["panda_TEARS","panda_SPIKES","panda_FIRE"];

if (isNil("_chance")) then {_chance=0.15;};

while {true} do 
{
	if ((isServer) or (isDedicated)) then 
	{
		_objects=list _epicenter;
	
		{if ((!(alive _x)) or (_x isKindOf "panda_ARTEFACT") or (_x isKindOf "Air")) then {_objects=_objects-[_x];};}ForEach _objects;

		if (count _objects>0) then 
		{
			{
			if ((_x distance _epicenter)<_range)then 
			{ 		
				_x setDammage 1;
				
				[nil, nil, rSPAWN, [_x,_epicenter], 
				{
					_victim = _this select 0;
					_anomaly = _this select 1;
				
 					_anomaly say "Explosion1";
 					
 					setWind [0,0,true];
					
					 _anomaly say "Explosion1";
					 
					[_victim] execVM "pandaANOMALIES\Scripts\Flame.sqf";

					sleep 5;
					
					setWind [0,0,false];

				}] call RE;		
			
				if (!(_x isKindOf "panda_BOLT")) then {[_epicenter,_range,_artefacts,_chance] execVM "pandaANOMALIES\Scripts\ArtefactSpawn.sqf";};
			};
	
			}ForEach _objects;
		
		};
	};
	
	_pos = (_epicenter modelToWorld [0,0,0]);
	_manpos = (player modelToWorld [0,0,0]);
	_dist=(player distance [_pos select 0, _pos select 1, _manpos select 2]);

	if (_dist<=(_range+25) and (player hasWeapon "panda_DETECTOR") and (_dstate==0)) then 
	{
		_epicenter setVariable ["panda_DETECTOR_STATE",1]; 
		[_epicenter,_range,0] execVM "pandaANOMALIES\Scripts\Detector.sqf";
		_dstate=1;
	};
	
	if (_dist>(_range+25) and (player hasWeapon "panda_DETECTOR") and (_dstate==1)) then 
	{
		_epicenter setVariable ["panda_DETECTOR_STATE",0];
		_dstate=0;
	};
	
	if ((_dist<=(_range+25)) and (player isKindOf "bloodsucker")) then 
	{
		if (_vfxstate==0) then 
		{
			_DynamicBlur = ppEffectCreate ["dynamicBlur", 465];
			_FilmGrain = ppEffectCreate ["filmGrain", 2005];
			
			_DynamicBlur ppEffectEnable true;
			_FilmGrain ppEffectEnable true;
			_FilmGrain ppEffectCommit 0.5;
			
			_vfxstate=1;
		
		};
		_fxb=((((_range+25)-_dist)/10)*3);
		_DynamicBlur ppEffectAdjust [_fxb]; 
		_DynamicBlur ppEffectCommit 0.1;
		_FilmGrain ppEffectAdjust [0.1, -1, 0.1, 0.05, 2, false];
		
	};
	
	if ((_dist>(_range+25)) and (player isKindOf "bloodsucker") and (_vfxstate==1)) then 
	{
		ppEffectDestroy  _DynamicBlur;
		ppEffectDestroy  _FilmGrain;
		
		_vfxstate=0;
	};
	sleep 1;
};