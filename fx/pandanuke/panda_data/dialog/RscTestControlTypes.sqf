#include "defines.hpp"

_display = _this select 0;

_CTR_STATIC = _display displayctrl CTR_STATIC;

_CTR_EDIT = _display displayctrl CTR_EDIT;

_CTR_SLIDER = _display displayctrl CTR_SLIDER;
	_display = ctrlParent _CTR_SLIDER;
	_ctrl = _display displayCtrl CTR_SLIDER;
	_ctrl sliderSetRange [10, 1000];
	_ctrl sliderSetPosition 100;
	_ctrl ctrlSetTooltip "100";
	_ctrl ctrlCommit 0.5;

	
	
_CTR_TOOLBOX = _display displayctrl CTR_TOOLBOX;

_CTR_PROGRESS = _display displayctrl CTR_PROGRESS;




_CTR_HTML = _display displayctrl CTR_HTML;
_CTR_ACTIVETEXT = _display displayctrl CTR_ACTIVETEXT;




_CTR_XBUTTON = _display displayctrl CTR_XBUTTON;

_CTR_XSLIDER = _display displayctrl CTR_XSLIDER;

// _CTR_SLIDER
_CTR_SLIDER slidersetposition 5;



// CTR_PROGRESS
_CTR_PROGRESS progresssetposition 0.5;


// CTR_XSLIDER
_CTR_XSLIDER slidersetposition 5;

_CTR_SHORTCUTBUTTON = _display displayctrl CTR_SHORTCUTBUTTON;
_CTR_SHORTCUTBUTTON ctrlAddEventHandler ["buttonclick", {
	_display = ctrlParent _CTR_SLIDER;
	_ctrl = _display displayCtrl CTR_SLIDER;
	uinamespace setVariable ["CTR_SLIDER_value", (sliderPosition _ctrl)];
	hint format["%1",_ctrl];
}];

