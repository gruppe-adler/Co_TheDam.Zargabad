"colorCorrections" ppEffectAdjust [2, 30, 0, [0.0, 0.0, 0.0, 0.0], [0.8*2, 0.5*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];
"colorCorrections" ppEffectCommit 0;
"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0.8*2, 0.5*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];
"colorCorrections" ppEffectAdjust [1, 0.8, -0.001, [0.0, 0.0, 0.0, 0.0], [0.8*2, 0.5*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];  
"colorCorrections" ppEffectCommit 1.5;
"colorCorrections" ppEffectEnable true;
//"filmGrain" ppEffectEnable true; 
//"filmGrain" ppEffectAdjust [0.02, 1, 1, 0.1, 1, false];
//"filmGrain" ppEffectCommit 3;
sleep 10;
// -- color correction into red blasted one
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust[ 1, 1, 0, [0, 0, 0, 0.5],[1.2, 0.05, -0.12, 0.5],[0.2, 0.59, 0.11, 0]];
//_hndl ppEffectCommit 4;
sleep 10;
// -- color correction into almost origin
//_hndl = ppEffectCreate ["colorCorrections", 1501];
//_hndl ppEffectEnable true;
//_hndl ppEffectAdjust[ 1, 1, 0, [0, 0, 0, 0.71],[0.48, 1.19, 0.4, 1.09],[0.2, 0.69, 0.11, 0]];
//_hndl ppEffectCommit 280; //280

//sleep 300; //300


//"filmGrain" ppEffectEnable false;
sleep 10;
//"colorCorrections" ppEffectEnable false;