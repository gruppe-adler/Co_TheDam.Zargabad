//_interval = if(count _this > 0) then {_this select 0} else {10};

disableSerialization;
waitUntil {!isNull findDisplay 46};
sleep 0.1;
//while {isNull (findDisplay 46)} do {
//	sleep _interval;
//};