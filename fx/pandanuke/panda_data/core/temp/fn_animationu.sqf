private ["_unit"];

_unit = _this select 0;

_unit setcaptive true;
_unit setbehaviour "careless";
_unit setcombatmode "blue";
_unit disableai "move";
//_unit setdamage 0.7;

removeallweapons _unit;
//[_unit] execvm "script\unit\removeitems.sqf";

_unit switchmove "AidlPercMstpSlowWrflDnon_G05";

_unit addeventhandler ["AnimDone", 
{
  private ["_anims"];
  _anims = ["AinvPknlMstpSnonWnonDnon_healed_2",
            "AmovPknlMstpSrasWpstDnon_AinvPknlMstpSnonWnonDnon_end",
	    "AdvePercMstpSnonWrflDnon_AdvePercMstpSnonWnonDnon",
	    "Acts_A_M02_briefing","Acts_ComingInSpeakingWalkingOut_6"];
  if ( alive (_this select 0) ) then
  {
    (_this select 0) switchmove (_anims select (floor (random (count _anims))));
  };
}];

_unit addeventhandler ["Killed", 
{
  (_this select 0) switchmove "";
}];