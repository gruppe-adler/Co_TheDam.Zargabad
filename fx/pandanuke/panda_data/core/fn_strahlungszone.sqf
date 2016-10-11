/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_target","_marker","_marker2","_radius"];

sleep 5;
//[player,-1,0.8,false] call panda_fnc_sandstorm;

_target = _this select 0;
_radius = test_size;
nukeNumber = nukeNumber + 1; 		// +1

//_marker = createMarkerLocal [(format ["radiationmarker1_%1",nukeNumber]), position _target];
//_marker setMarkerShapeLocal "ELLIPSE";
//_marker setMarkerSizeLocal [_radius, _radius];
//_marker setMarkerColorLocal "ColorRed";

//_marker2 = createMarkerLocal [(format ["radiationmarker2_%1",nukeNumber]), position _target];
//_marker2 setMarkerShapeLocal "Icon";
//_marker2 setMarkerTypeLocal "hd_Dot";
//_marker2 setMarkerColorLocal "ColorRed";

[_target] Spawn {
	Private ["_dammageable","_target","_finalText","_radunita","_radunitb"];
	_target = _this select 0;
	_range = 0;

	_radi30pic = "\panda_syndicate\panda_data\data\icons\256_radio2_w.paa";
	_radi20pic = "\panda_syndicate\panda_data\data\icons\256_radio2_y.paa";
	_radi10pic = "\panda_syndicate\panda_data\data\icons\256_radio2_r.paa";	
		
	
for [{_x = 0},{_x < (radTime / 3)},{_x = _x + 1}] do {
		//if (player distance _target < test_size) then {
				
		//hintsilent parseText "<t color='#ff3300' size='2.0' shadow='1' shadowColor='#000000' align='center'>RADIOACTIVER BEREICH</t>";
		//playsound ["snd_geigerfull001",true];
		/*
		playsound ["snd_geigerclick002",true];
					
		_radunita = player distance _target; 
		_radunitb = round (test_size - _radunita)/ (10 ^ 2); //µSv/h;
		_finalText = format ["<t size='0.75' color='#ff0000' align='right'>%1<br /></t><t size='0.6' color='#ffffff' align='right'>µSv/h<br /></t>", _radunitb];
		[_finalText,[safezoneX + safezoneW - 0.55,0.48],[safezoneY + safezoneH - 0.78,0.7],99,0,3100] spawn BIS_fnc_dynamicText;
					
		['<img align=''right'' size=''1.8'' shadow=''1'' image='+(str(_radi20pic))+' />',[safezoneX + safezoneW - 0.62,0.48],[safezoneY + safezoneH - 0.8,0.7],99,0,3201] spawn bis_fnc_dynamicText;
					};
		*/
		//[_target,test_size] spawn panda_fnc_geiger;

		_range = _range + 300;
		sleep (2.5 + random 1);
	};
	//deleteVehicle _target;
	//deletemarkerlocal "radiationmarker";
	//deletemarkerlocal "radiationmarker2";
	"dynamicBlur" ppEffectEnable false;
	"colorCorrections" ppEffectEnable false;
	nukev=true;
};