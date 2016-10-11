/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
//private ["_pos"];
_pos = _this select 0;
//++++++++++++ visual efx
//"colorCorrections" ppEffectEnable true; 
//"chromAberration" ppEffectEnable true; 
//"radialBlur" ppEffectEnable true;
//"colorCorrections" ppEffectAdjust [1, 1, 0, [1.5,-1,-1.5,0.5], [5,3.5,-5,-0.5], [-3,5,-5,-0.5]]; 
//"colorCorrections" ppEffectCommit 1;
//"chromAberration" ppEffectAdjust [0.01,0.01,true]; 
//"chromAberration" ppEffectCommit 1;
//"radialBlur" ppEffectAdjust [0.02,0.02,0.15,0.15]; 
//"radialBlur" ppEffectCommit 1;
sleep 0.1;
//"wetDistortion" ppEffectEnable true;
//"wetDistortion" ppEffectAdjust [0.5, 0, 0, 4.1, 3.7, 2.5, 1.85, 0.0051, 0.0051, 0.0051, 0.0051, 0.5, 0.3, 10, 6.0];
//"wetDistortion" ppEffectCommit 0; 
sleep 0.1;

//"colorCorrections" ppEffectAdjust [1, 1.02, -0.005, [0.0, 0.0, 0.0, 0.0], [1, 0.8, 0.6, 0.65], [0.199, 0.587, 0.114, 0.0]];
//"colorCorrections" ppEffectCommit 0;
//"colorCorrections" ppEffectEnable true;
sleep 0.1;
wetdist1 = ppEffectCreate ["wetDistortion", 2006];
wetdist1 ppEffectAdjust [0, 0.16, 0.32, 0.56, 0.8, 0.64, 0.64, 0, 0, 0.08, 0.08, 0, 0, 0, 0.77];
wetdist1 ppEffectEnable true;
wetdist1 ppEffectCommit 0;
sleep 0.4;
ppEffectDestroy wetdist1;

"wetDistortion" ppEffectEnable false;
//"radialBlur" ppEffectEnable false;
//"chromAberration" ppEffectEnable false;

sleep 0.01;