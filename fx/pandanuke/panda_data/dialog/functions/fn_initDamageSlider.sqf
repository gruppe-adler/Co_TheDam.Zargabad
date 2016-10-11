/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
_control = _this select 0;

_control ctrlRemoveAllEventHandlers "setFocus";

_display = ctrlParent _control;

//Configure the slider in the dialog
_ctrlDamage = _display displayCtrl 63022;
//_ctrlDamage sliderSetRange [0, 10];
_ctrlDamage sliderSetRange [500, 5000];
_ctrlDamage sliderSetPosition 500;
_ctrlDamage ctrlCommit 100;

//Setup handler when OK is clicked
_ctrlButtonOK = _display displayCtrl RscDisplayControlsNuke001_ButtonOK;
_ctrlButtonOK ctrlAddEventHandler ["buttonclick", {
	_display = ctrlParent (_this select 0);
	_ctrlDamage = _display displayCtrl 63022;
	uinamespace setVariable ["RscDisplayControlsNuke001_DamageValue", 1 - ((sliderPosition _ctrlDamage) * 0.1)];
}];

//Setup handler when Cancel is clicked
_ctrlButtonCancel = _display displayCtrl RscDisplayControlsNuke001_ButtonCancel;
_ctrlButtonCancel ctrlAddEventHandler ["buttonclick", {
	//Blank out any existing value
	uinamespace setVariable ["RscDisplayAttributeAtommini_DamageValue", nil];
}];