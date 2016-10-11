private ["_dcol","_unit"];

//sleep 1;
_unit = _this select 0;
//_unit switchmove "AmovPercMstpSnonWnonDnon_smoking";

//{_x dowatch position argt_fireman} foreach [argt_doctor, argt_doger, argt_rev5, argt_rev11, argt_razved, argt_divers,argt_eger, argt_lesnik, argt_prokofev, argt_rev4, argt_patriot];

sleep 1;

for "_i" from 1 to 6 do
{
  _dcol = random 0.2;  
  drop [
         "\a3\Data_f\Cl_basic", // 1
         "", // 2
         "Billboard", // 3
         1, // 4
         12, // 5
         [0, 0.2, 1.6], // 6
         [0, 0.01, 0.01], // 7
         1, // 8
         1.27, // 9
         1, // 10
         0.1, // 11
         [0.1, 1], // 12
         [[_dcol + 0.4, _dcol + 0.4, _dcol + 0.4, 1],
          [_dcol + 0.7, _dcol + 0.7, _dcol + 0.7, 0]], // 13
         [0, 1], // 14
         1, // 15
         0.01, // 16
         "", // 17
         "", // 18
         _unit // 19
       ];
    sleep (3 + random 1);
};

_unit switchmove "";
//_unit playmovenow "ActsPercMstpSnonWnonDnon_DancingStefan";

//_unit kbtell [player, "argt_talk", "fireman15"];

//argt_radio2 say ["dance", 100];

sleep 5;

//_unit switchmove "c7a_bravoTOerc_idle24";


sleep 90;


{
  _x switchmove "";
  _x dowatch objnull;
} foreach [_unit];


if ( alive player ) then
{
  {_x dowatch position player} foreach [_unit];
};

sleep 10;
_unit setunitpos "auto";