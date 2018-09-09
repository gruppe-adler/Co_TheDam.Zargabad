params ["_pos", "_fence", "_timeout"];


_light = "#lightpoint" createVehicleLocal [0,0,0]; 
_light lightAttachObject [player,[0,0,1.5]];
_light setLightUseFlare true; 
_light setLightFlareMaxDistance 1000;
_light setLightFlareSize 40;

_light setLightBrightness 0.1; 
_light setLightColor [1,1,1];
_light setLightAmbient [1,1,1];

_light say3D ["GRAD_electricFence_sound_buzz", 300];

[{deleteVehicle _this;}, _light, _timeout] call CBA_fnc_waitAndExecute;