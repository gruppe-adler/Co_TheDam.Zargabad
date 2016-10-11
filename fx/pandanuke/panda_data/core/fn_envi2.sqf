
//"filmGrain" ppEffectEnable true; 
//"filmGrain" ppEffectAdjust [0.02, 1, 1, 0.1, 1, false];
//"filmGrain" ppEffectCommit 3;
//sleep 10;

//Photo 2

//"colorCorrections" ppEffectAdjust[ 0.186280, 12, 0, [17.32, 10.57, 15.71, 0.0],[1.39, 1.3211, 1.1, 0.807],[ -1.24, 5.03, -1.78, -5.19]] ; 
//"colorCorrections" ppEffectCommit 0; 
//"colorCorrections" ppEffectEnable true;


// -- color correction into red blasted one
_hndl = ppEffectCreate ["colorCorrections", 1501];
_hndl ppEffectEnable true;
_hndl ppEffectAdjust[ 1, 1, 0, [0, 0, 0, 0.5],[1.2, 0.05, -0.12, 0.5],[0.2, 0.59, 0.11, 0]];
_hndl ppEffectCommit 4;
sleep 10;
/*

// -- color correction into almost origin
_hndl = ppEffectCreate ["colorCorrections", 1501];
_hndl ppEffectEnable true;
_hndl ppEffectAdjust[ 1, 1, 0, [0, 0, 0, 0.71],[0.48, 1.19, 0.4, 1.09],[0.2, 0.69, 0.11, 0]];
_hndl ppEffectCommit 280; //280
sleep 1;
*/
//sleep 300; //300
_hndl ppEffectEnable false;

//"filmGrain" ppEffectEnable false;
//sleep 10;
//"colorCorrections" ppEffectEnable false;
