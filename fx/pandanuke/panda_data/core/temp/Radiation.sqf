private ["_vfxstate","_dmg","_pdmg","_dstate","_epicenter","_DynamicBlur","_ColorCorrections"];
_epicenter = _this select 0;
_range = _this select 1;

_vfxstate = 0;
_dstate = 0;
_pdmg = 0;
_dmg = 0;

while {true} do 
{
	_objects=list _epicenter;
	if (count _objects>0) then 
	{
		{if ((!alive _x) or (!(_x isKindOf "MAN")) or (_x isKindOf "bloodsucker") or (_x isKindOf "gsc_scientist1")or (_x isKindOf "gsc_scientist2"))then {_objects=_objects-[_x];};}ForEach _objects;
		{
			if ((_x distance _epicenter)<_range) then 
			{
				if (local _x) then 
				{
					_dmg = (_x getVariable "panda_RADIATION_DAMAGE");
					if (isNil("_dmg")) then {_dmg = 0; _x setVariable ["panda_RADIATION_DAMAGE",0];};

					_dmg = (_dmg + 0.025);
					if (_x == player) then {_pdmg = _pdmg + 0.025};
				
					_x setVariable ["panda_RADIATION_DAMAGE",_dmg];
					_x setDammage ((damage _x)+0.025);
				};
			};
		
		}ForEach _objects;
	};
	
	_pos = (_epicenter modelToWorld [0,0,0]);
	_manpos = (player modelToWorld [0,0,0]);
	_dist=(player distance [_pos select 0, _pos select 1, _manpos select 2]);

	if (_dist<=(_range+25) and (player hasWeapon "panda_DETECTOR") and (_dstate==0)) then 
	{
		_epicenter setVariable ["panda_DETECTOR_STATE",1]; 
		[_epicenter,_range,1] execVM "pandaANOMALIES\Scripts\Detector.sqf";
		_dstate=1;
	};
	
	if (_dist>(_range+25) and (player hasWeapon "panda_DETECTOR") and (_dstate==1)) then 
	{
		_epicenter setVariable ["panda_DETECTOR_STATE",0];
		_dstate=0;
	};

	if ((_dist<=_range) and (!(player isKindOf "panda_MutantBase")) and (!(player isKindOf "panda_ZombieBase"))) then 
	{
		if (_vfxstate==0) then 
		{
			_ColorCorrections = ppEffectCreate ["colorCorrections", 1565];
			_DynamicBlur = ppEffectCreate ["dynamicBlur", 465];
			_FilmGrain = ppEffectCreate ["filmGrain", 2005];
			
			_ColorCorrections ppEffectEnable true;
			_DynamicBlur ppEffectEnable true;
			
			_FilmGrain ppEffectEnable true;
			
			_DynamicBlur ppEffectCommit 0.1;
			_FilmGrain ppEffectCommit 0.5;
			_vfxstate=1;
		
		};
		_FilmGrain ppEffectAdjust [0.1, -1, 0.1, 0.05, 2, false];
		_pfx = player getVariable "panda_PSYEFFECT";
		
		_fxb=(_pdmg*3);
		_DynamicBlur ppEffectCommit 0.1;
		_DynamicBlur ppEffectAdjust [_fxb];
		_ColorCorrections ppEffectAdjust [1, 1, 0, [0,0,0,-0.1], [1,1,0,_fxc], [0,1,1,_fxc]]; 
		_ColorCorrections ppEffectCommit 0.1;
	};
	
	if ((_dist>_range) and (!(player isKindOf "panda_MutantBase"))and (!(player isKindOf "panda_ZombieBase")) and (_vfxstate==1)) then 
	{
//			ppEffectDestroy _DynamicBlur;
			_vfxstate = 0;
			_pdmg = 0;
	};
	
	sleep 1;
};