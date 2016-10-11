class RscTestControlTypes
{

	idd = 999; // Display identification
	enableSimulation = 1; // 1 (true) to allow world simulation to be running in the background, 0 to freeze it
	enableDisplay = 0; // 1 (true) to allow scene rendering in the background

	onLoad = "_this call compile preprocessFileLineNumbers '\panda_syndicate\panda_data\dialog\RscTestControlTypes.sqf';";
	onUnload = "systemChat str ['onUnload',_this]; false";
	onChildDestroyed = "systemChat str ['onChildDestroyed',_this]; false";

	class ControlsBackground // Background controls (placed behind Controls)
	{
		class Background
		{
			idc = -1;
			type = CTR_STATIC;
			style = ST_LEFT;
			x = GUI_GRID_CENTER_X;
			y = GUI_GRID_CENTER_Y;
			w = GUI_GRID_CENTER_WAbs;
			h = GUI_GRID_CENTER_HAbs;
			colorBackground[] = {0.5,0.5,0.5,1};
			colorText[] = {0,0,0,0};
			font = GUI_FONT_NORMAL;
			sizeEx = GUI_GRID_CENTER_H;
			text = "";
			moving = 0;
		};
	};
	class Controls // Main controls
	{
		class _CTR_STATIC
		{
			access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
			idc = CTR_STATIC; // Control identification (without it, the control won't be displayed)
			type = CTR_STATIC; // Type
			style = ST_LEFT + ST_MULTI; // Style
			default = 0; // Control selected by default (only one within a display can be used)
			blinkingPeriod = 1; // Time in which control will fade out and back in. Use 0 to disable the effect.

			x = 1 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 1 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 10 * GUI_GRID_CENTER_W; // Width
			h = 1 * GUI_GRID_CENTER_H; // Height

			colorBackground[] = {0.2,0.2,0.2,1}; // Fill color

			text = "CTR_STATIC"; // Displayed text
			sizeEx = GUI_GRID_CENTER_H; // Text size
			font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
			shadow = 1; // Shadow (0 - none, 1 - directional, color affected by colorShadow, 2 - black outline)
			lineSpacing = 1; // When ST_MULTI style is used, this defines distance between lines (1 is text height)
			fixedWidth = 1; // 1 (true) to enable monospace
			colorText[] = {1,1,1,1}; // Text color
			colorShadow[] = {0,0,0,0.5}; // Text shadow color (used only when shadow is 1)

			tooltip = "CTR_STATIC"; // Tooltip text
			tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
			tooltipColorText[] = {1,1,1,1}; // Tooltip text color
			tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

			moving = 0; // 1 (true) to allow dragging the whole display by the control

			autoplay = 0; // Play video automatically (only for style ST_PICTURE with text pointing to an .ogv file)
			loops = 0; // Number of video repeats (only for style ST_PICTURE with text pointing to an .ogv file)

			tileW = 1; // Number of tiles horizontally (only for style ST_TILE_PICTURE)
			tileH = 1; // Number of tiles vertically (only for style ST_TILE_PICTURE)

			onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
			onDestroy = "systemChat str ['onDestroy',_this]; false";
			onMouseEnter = "systemChat str ['onMouseEnter',_this]; false";
			onMouseExit = "systemChat str ['onMouseExit',_this]; false";
			onSetFocus = "systemChat str ['onSetFocus',_this]; false";
			onKillFocus = "systemChat str ['onKillFocus',_this]; false";
			onKeyDown = "systemChat str ['onKeyDown',_this]; false";
			onKeyUp = "systemChat str ['onKeyUp',_this]; false";
			onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
			onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
			onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
			onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
			onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
			onMouseMoving = "";
			onMouseHolding = "";

			onVideoStopped = "systemChat str ['onVideoStopped',_this]; false";
		};
		
		class _CTR_EDIT
		{
			access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
			idc = CTR_EDIT; // Control identification (without it, the control won't be displayed)
			type = CTR_EDIT; // Type
			style = ST_LEFT; // Style
			default = 0; // Control selected by default (only one within a display can be used)
			blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

			x = 1 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 5 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 10 * GUI_GRID_CENTER_W; // Width
			h = 1 * GUI_GRID_CENTER_H; // Height

			text = "CTR_EDIT"; // Displayed text
			sizeEx = GUI_GRID_CENTER_H; // Text size
			font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
			shadow = 0; // Shadow (0 - none, 1 - N/A, 2 - black outline)
			colorText[] = {0,0,0,1}; // Text and frame color
			colorDisabled[] = {1,1,1,0.5}; // Disabled text and frame color
			colorSelection[] = {1,0.5,0,1}; // Text selection color

			tooltip = "CTR_EDIT"; // Tooltip text
			tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
			tooltipColorText[] = {1,1,1,1}; // Tooltip text color
			tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

			canModify = 1; // True (1) to allow text editing, 0 to disable it
			autocomplete = "scripting"; // Text autocomplete, can be "scripting" (scripting commands) or "general" (previously typed text)

			onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
			onDestroy = "systemChat str ['onDestroy',_this]; false";
			onSetFocus = "systemChat str ['onSetFocus',_this]; false";
			onKillFocus = "systemChat str ['onKillFocus',_this]; false";
			onKeyDown = "systemChat str ['onKeyDown',_this]; false";
			onKeyUp = "systemChat str ['onKeyUp',_this]; false";
			onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
			onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
			onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
			onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
			onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
			onMouseMoving = "";
			onMouseHolding = "";
		};
		class _CTR_SLIDER_Value: _CTR_STATIC // Slider value (see below)
		{
			idc = 1200;
			style = ST_CENTER;
			blinkingPeriod = 0;
			x = 8 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 6.75 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 3 * GUI_GRID_CENTER_W; // Width
			h = 1 * GUI_GRID_CENTER_H; // Height
			colorBackground[] = {0,0,0,0};
			fixedWidth = 0;
		};
		class _CTR_SLIDER
		{
			access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
			idc = CTR_SLIDER; // Control identification (without it, the control won't be displayed)
			type = CTR_SLIDER; // Type
			style = SL_HORZ; // Style
			default = 0; // Control selected by default (only one within a display can be used)
			blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

			x = 1 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 7 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 7 * GUI_GRID_CENTER_W; // Width
			h = 1 * GUI_GRID_CENTER_H; // Height

			color[] = {0,0,0,1}; // Text color
			colorDisabled[] = {1,1,1,0.5}; // Disabled text color
			colorActive[] = {1,0.5,0,1}; // Text selection color

			tooltip = "CTR_SLIDER"; // Tooltip text
			tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
			tooltipColorText[] = {1,1,1,1}; // Tooltip text color
			tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

			class Title // Link to a title (obsolete?)
			{
				idc = -1; // Control IDC (has to be defined ABOVE the slider control)
				colorBase[] = {1,1,1,1}; // Text color
				colorActive[] = {1,0.5,0,1}; // Text color when the slider is active
			};
			class Value // Link to a control which will show slider value
			{
				idc = 1200; // Control IDC (has to be defined ABOVE the slider control)
				format = "%.f"; // Text format, value is represented by variable %g (float) or %.f (integer)
				type = SPTPlain; // Format, can be SPTPlain or SPTPercents (multiplies the value by 100)
				colorBase[] = {1,1,1,1}; // Text color
				colorActive[] = {1,0.5,0,1}; // Text color when the slider is active
			};

			onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
			onDestroy = "systemChat str ['onDestroy',_this]; false";
			onSetFocus = "systemChat str ['onSetFocus',_this]; false";
			onKillFocus = "systemChat str ['onKillFocus',_this]; false";
			onKeyDown = "systemChat str ['onKeyDown',_this]; false";
			onKeyUp = "systemChat str ['onKeyUp',_this]; false";
			onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
			onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
			onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
			onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
			onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
			onMouseMoving = "";
			onMouseHolding = "";

			onSliderPosChanged = "systemChat str ['onSliderPosChanged',_this]; false";
		};

		class _CTR_TOOLBOX
		{
			access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
			idc = CTR_TOOLBOX; // Control identification (without it, the control won't be displayed)
			type = CTR_TOOLBOX; // Type
			style = ST_CENTER; // Style
			default = 0; // Control selected by default (only one within a display can be used)
			blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

			x = 1 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 15 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 10 * GUI_GRID_CENTER_W; // Width
			h = 2 * GUI_GRID_CENTER_H; // Height

			colorSelectedBg[] = {1,0.5,0,1}; // Fill color

			sizeEx = GUI_GRID_CENTER_H; // Text size
			font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
			shadow = 0; // Shadow (0 - none, 1 - N/A, 2 - black outline)
			colorText[] = {1,1,1,1}; // Text color
			colorTextSelect[] = {1,1,1,1}; // Selected text color

			tooltip = "CTR_TOOLBOX"; // Tooltip text
			tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
			tooltipColorText[] = {1,1,1,1}; // Tooltip text color
			tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

			rows = 2; // Number of rows
			columns = 2; // Number of columns
			strings[] = {$STR_A3_RADIO_A,$STR_A3_RADIO_B,$STR_A3_RADIO_C,$STR_A3_RADIO_D}; // Options (added row by row)
			values[] = {1,2,3,4};

			color[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
			colorSelect[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
			colorTextDisable[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
			colorDisable[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown

			onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
			onDestroy = "systemChat str ['onDestroy',_this]; false";
			onMouseEnter = "systemChat str ['onMouseEnter',_this]; false";
			onMouseExit = "systemChat str ['onMouseExit',_this]; false";
			onSetFocus = "systemChat str ['onSetFocus',_this]; false";
			onKillFocus = "systemChat str ['onKillFocus',_this]; false";
			onKeyDown = "systemChat str ['onKeyDown',_this]; false";
			onKeyUp = "systemChat str ['onKeyUp',_this]; false";
			onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
			onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
			onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
			onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
			onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
			onMouseMoving = "";
			onMouseHolding = "";

			onToolBoxSelChanged = "systemChat str ['onToolBoxSelChanged',_this]; false";
		};
		
		class _CTR_PROGRESS
		{
			access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
			idc = CTR_PROGRESS; // Control identification (without it, the control won't be displayed)
			type = CTR_PROGRESS; // Type
			style = ST_LEFT; // Style
			default = 0; // Control selected by default (only one within a display can be used)
			blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

			x = 1 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 21 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 10 * GUI_GRID_CENTER_W; // Width
			h = 1 * GUI_GRID_CENTER_H; // Height

			texture = "#(argb,8,8,3)color(1,1,1,1)"; // Bar texture
			colorBar[] = {1,1,1,1}; // Bar color
			colorFrame[] = {0,0,0,1}; // Frame color

			tooltip = "CTR_PROGRESS"; // Tooltip text
			tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
			tooltipColorText[] = {1,1,1,1}; // Tooltip text color
			tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

			onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
			onDestroy = "systemChat str ['onDestroy',_this]; false";
		};
		class _CTR_HTML
		{
			access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
			idc = CTR_HTML; // Control identification (without it, the control won't be displayed)
			type = CTR_HTML; // Type
			style = ST_LEFT; // Style
			default = 0; // Control selected by default (only one within a display can be used)
			blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

			x = 1 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 23 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 10 * GUI_GRID_CENTER_W; // Width
			h = 1.5 * GUI_GRID_CENTER_H; // Height

			colorBackground[] = {0.2,0.2,0.2,1}; // Fill color

			colorText[] = {1,1,1,1}; // Text color
			colorBold[] = {1,1,1,1}; // <b> text color
			colorLink[] = {1,1,1,1}; // <a> text color
			colorLinkActive[] = {1,0.5,0,1}; // Active <a> text color
			colorPicture[] = {1,1,1,1}; // Picture color
			colorPictureBorder[] = {0,0,0,0}; // Picture border color
			colorPictureLink[] = {1,1,1,1}; // <a> picture color
			colorPictureSelected[] = {1,1,1,1}; // Active <a> picture color

			prevPage = "\A3\ui_f\data\gui\rsccommon\rschtml\arrow_left_ca.paa"; // Pagination arrow for previous page
			nextPage = "\A3\ui_f\data\gui\rsccommon\rschtml\arrow_right_ca.paa"; // Pagination arrow for next page

			tooltip = "CTR_HTML"; // Tooltip text
			tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
			tooltipColorText[] = {1,1,1,1}; // Tooltip text color
			tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

			filename = "\panda_syndicate\panda_data\html\RscFeedback.html";

			class P // Paragraph style
			{
				font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
				fontBold = GUI_FONT_BOLD; // Vold font from CfgFontFamilies
				sizeEx = GUI_GRID_CENTER_H; // Text size
				align = "left"; // Text align (can be "left", "center" or "right")
			};
			class H1:P{}; // Header 1 style (uses same attributes as P)
			class H2:P{}; // Header 2 style (uses same attributes as P)
			class H3:P{}; // Header 3 style (uses same attributes as P)
			class H4:P{}; // Header 4 style (uses same attributes as P)
			class H5:P{}; // Header 5 style (uses same attributes as P)
			class H6:P{}; // Header 6 style (uses same attributes as P)

			onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
			onDestroy = "systemChat str ['onDestroy',_this]; false";
			onMouseEnter = "systemChat str ['onMouseEnter',_this]; false";
			onMouseExit = "systemChat str ['onMouseExit',_this]; false";
			onSetFocus = "systemChat str ['onSetFocus',_this]; false";
			onKillFocus = "systemChat str ['onKillFocus',_this]; false";
			onKeyDown = "systemChat str ['onKeyDown',_this]; false";
			onKeyUp = "systemChat str ['onKeyUp',_this]; false";
			onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
			onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
			onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
			onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
			onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
			onMouseMoving = "";
			onMouseHolding = "";

			onHTMLLink = "systemChat str ['onHTMLLink',_this]; false";
		};
		
		class _CTR_SHORTCUTBUTTON
		{
			access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
			idc = CTR_SHORTCUTBUTTON; // Control identification (without it, the control won't be displayed)
			type = CTR_SHORTCUTBUTTON; // Type
			style = ST_LEFT; // Style
			default = 0; // Control selected by default (only one within a display can be used)
			blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

			x = 12 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 13 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 10 * GUI_GRID_CENTER_W; // Width
			h = 1 * GUI_GRID_CENTER_H; // Height

			colorBackground[] = {0.2,0.2,0.2,1}; // Fill color
			colorBackground2[] = {0,0,0,1}; // Selected fill color
			colorBackgroundFocused[] = {1,0.5,0,1}; // Selected fill color (oscillates between this and colorBackground2)
			colorBackgroundActive[] = {0,0,0,1}; // Mouse hover fill color

			text = "CTR_SHORTCUTBUTTON"; // Displayed text
			size = GUI_GRID_CENTER_H; // Text size
			font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
			shadow = 1; // Shadow (0 - none, 1 - directional, color cannot be changed, 2 - black outline)
			color[] = {1,1,1,1}; // Text color
			color2[] = {1,1,1,1}; // Selected fill color
			colorFocused[] = {1,1,1,1}; // Selected text color (oscillates between this and color2)
			colorDisabled[] = {1,1,1,0.5}; // Disabled text color

			animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)"; // Background texture
			animTextureOver = "#(argb,8,8,3)color(1,1,1,1)"; // Mouse over background texture
			animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)"; // Mouse pressed background texture
			animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)"; // Focused background texture
			animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)"; // Disabled background texture
			animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)"; // Unknown?

			tooltip = "CTR_SHORTCUTBUTTON"; // Tooltip text
			tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
			tooltipColorText[] = {1,1,1,1}; // Tooltip text color
			tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

			period = 1; // Oscillation time between color2/colorBackground2 and colorFocused/colorBackgroundFocused when selected
			periodFocus = 1; // Oscillation time between color2/colorBackground2 and colorFocused/colorBackgroundFocused when focused
			periodOver = 0.5; // Oscillation time between color2/colorBackground2 and colorFocused/colorBackgroundFocused during mouse hover

			//shortcuts[] = {KEY_XBOX_A}; // DIK codes of keyoboard shortcuts
			textureNoShortcut = "#(argb,8,8,3)color(1,1,1,1)"; // Icon displayed on ShortcutPos position when no shortcut key is found

			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1}; // Sound played after control is activated in format {file, volume, pitch}
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1}; // Sound played when mouse cursor enters the control
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1}; // Sound played when the control is pushed down
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1}; // Sound played when the control is released after pushing down

			class Attributes
			{
				align = "left"; // Text align
				color = "#ffffff"; // Text color
				font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
				shadow = 0; // Shadow (0 - none, 1 - directional, color affected by colorShadow, 2 - black outline)
			};
			class HitZone // Clickable area
			{
				left = 0; // Left border
				top = 0; // Top border
				right = 0; // Right border
				bottom = 0; // Bottom border
			};
			class TextPos // Text position inside button
			{
				left = GUI_GRID_CENTER_W; // Left border
				top = 0; // Top border
				right = 0; // Right border
				bottom = 0; // Bottom border
			};
			class ShortcutPos // Shortcut icon position (e.g., XboX A button), based on keys in shortcuts[] attribute
			{
				left = 0; // Horizontal coordinates
				top = 0; // Horizontal coordinates
				w = GUI_GRID_CENTER_W; // Width
				h = GUI_GRID_CENTER_H; // Height
			};

			onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
			onDestroy = "systemChat str ['onDestroy',_this]; false";
			onMouseEnter = "systemChat str ['onMouseEnter',_this]; false";
			onMouseExit = "systemChat str ['onMouseExit',_this]; false";
			onSetFocus = "systemChat str ['onSetFocus',_this]; false";
			onKillFocus = "systemChat str ['onKillFocus',_this]; false";
			onKeyDown = "systemChat str ['onKeyDown',_this]; false";
			onKeyUp = "systemChat str ['onKeyUp',_this]; false";
			onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
			onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
			onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
			onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
			onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
			onMouseMoving = "";
			onMouseHolding = "";

			onButtonClick = "systemChat str ['onButtonClick',_this]; false";
			onButtonDown = "systemChat str ['onButtonDown',_this]; false";
			onButtonUp = "systemChat str ['onButtonUp',_this]; false";
		};
		//class CTR_HITZONES not implemented in class Controls
		//class CTR_XKEYDESC not implemented in class Controls
		class _CTR_XBUTTON
		{
			access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
			idc = CTR_XBUTTON; // Control identification (without it, the control won't be displayed)
			type = CTR_XBUTTON; // Type
			style = ST_LEFT; // Style
			default = 0; // Control selected by default (only one within a display can be used)
			blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

			x = 12 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 15 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 10 * GUI_GRID_CENTER_W; // Width
			h = 1 * GUI_GRID_CENTER_H; // Height

			colorBackground[] = {0,0,0,0}; // Fill color
			colorActiveBackground[] = {1,0.5,0,1}; // Selected fill color (rendered below colorBackground)
			colorActiveBackground2[] = {0,0,0,1}; // Selected fill color (oscillates between this and colorActiveBackground)
			colorDisabled[] = {0,1,1,1};

			text = "CTR_XBUTTON"; // Displayed text
			size = GUI_GRID_CENTER_H; // Text size
			font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
			shadow = 0; // Shadow (0 - none, 1 - N/A, 2 - black outline)
			color[] = {1,1,1,1}; // Text color
			colorActive[] = {1,1,1,1}; // Selected text color
			colorActive2[] = {1,1,1,1}; // Selected text color (oscillates between this and colorActive)

			tooltip = "CTR_XBUTTON"; // Tooltip text
			tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
			tooltipColorText[] = {1,1,1,1}; // Tooltip text color
			tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

			period = 1; // Oscillation time between colorBackground and colorFocused when selected

			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1}; // Sound played after control is activated in format {file, volume, pitch}
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1}; // Sound played when mouse cursor enters the control
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1}; // Sound played when the control is pushed down
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1}; // Sound played when the control is released after pushing down

			onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
			onDestroy = "systemChat str ['onDestroy',_this]; false";
			onMouseEnter = "systemChat str ['onMouseEnter',_this]; false";
			onMouseExit = "systemChat str ['onMouseExit',_this]; false";
			onSetFocus = "systemChat str ['onSetFocus',_this]; false";
			onKillFocus = "systemChat str ['onKillFocus',_this]; false";
			onKeyDown = "systemChat str ['onKeyDown',_this]; false";
			onKeyUp = "systemChat str ['onKeyUp',_this]; false";
			onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
			onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
			onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
			onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
			onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
			onMouseMoving = "";
			onMouseHolding = "";

			onButtonClick = "systemChat str ['onButtonClick',_this]; false";
			onButtonDown = "systemChat str ['onButtonDown',_this]; false";
			onButtonUp = "systemChat str ['onButtonUp',_this]; false";
		};

		class _CTR_XSLIDER
		{
			access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
			idc = CTR_XSLIDER; // Control identification (without it, the control won't be displayed)
			type = CTR_XSLIDER; // Type
			style = SL_HORZ; // Style
			default = 0; // Control selected by default (only one within a display can be used)
			blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

			x = 12 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 19 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 10 * GUI_GRID_CENTER_W; // Width
			h = 1 * GUI_GRID_CENTER_H; // Height

			color[] = {1,1,1,1}; // Text and arrow color
			colorDisabled[] = {1,1,1,0.5}; // Disabled text and arrow color
			colorActive[] = {1,0.5,0,1}; // Text selection color

			tooltip = "CTR_XSLIDER"; // Tooltip text
			tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
			tooltipColorText[] = {1,1,1,1}; // Tooltip text color
			tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

			arrowEmpty = "\A3\ui_f\data\gui\cfg\slider\arrowEmpty_ca.paa"; // Arrow
			arrowFull = "\A3\ui_f\data\gui\cfg\slider\arrowFull_ca.paa"; // Arrow when clicked on
			border = "\A3\ui_f\data\gui\cfg\slider\border_ca.paa"; // Fill texture
			thumb = "#(argb,8,8,3)color(1,1,1,1)"; // Dragging element (stretched vertically)


			class Title // Link to a title (obsolete?)
			{
				idc = -1; // Control IDC (has to be defined ABOVE the slider control)
				colorBase[] = {1,1,1,1}; // Text color
				colorActive[] = {1,0.5,0,1}; // Text color when the slider is active
			};
			class Value // Link to a control which will show slider value
			{
				idc = -1; // Control IDC (has to be defined ABOVE the slider control)
				format = "%.f"; // Text format, value is represented by variable %g (float) or %.f (integer)
				type = SPTPlain; // Format, can be SPTPlain or SPTPercents (multiplies the value by 100)
				colorBase[] = {1,1,1,1}; // Text color
				colorActive[] = {1,0.5,0,1}; // Text color when the slider is active
			};

			onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
			onDestroy = "systemChat str ['onDestroy',_this]; false";
			onSetFocus = "systemChat str ['onSetFocus',_this]; false";
			onKillFocus = "systemChat str ['onKillFocus',_this]; false";
			onKeyDown = "systemChat str ['onKeyDown',_this]; false";
			onKeyUp = "systemChat str ['onKeyUp',_this]; false";
			onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
			onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
			onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
			onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
			onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
			onMouseMoving = "";
			onMouseHolding = "";

			onSliderPosChanged = "systemChat str ['onSliderPosChanged',_this]; false";
		};

		class _CTR_CHECKBOX
		{
			access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
			idc = CTR_CHECKBOX; // Control identification (without it, the control won't be displayed)
			type = CTR_CHECKBOX; // Type
			style = ST_LEFT + ST_MULTI; // Style
			default = 0; // Control selected by default (only one within a display can be used)
			blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

			x = 29 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 20 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 1 * GUI_GRID_CENTER_W; // Width
			h = 1 * GUI_GRID_CENTER_H; // Height

			//Colors
			color[] = {1,1,1,0.7}; // Texture color
			colorFocused[] = {1,1,1,1}; // Focused texture color
			colorHover[] = {1,1,1,1}; // Mouse over texture color
			colorPressed[] = {1,1,1,1}; // Mouse pressed texture color
			colorDisabled[] = {1,1,1,0.2}; // Disabled texture color

			//Background colors
			colorBackground[] = {0,0,0,0}; // Fill color
			colorBackgroundFocused[] = {0,0,0,0}; // Focused fill color
			colorBackgroundHover[] = {0,0,0,0}; // Mouse hover fill color
			colorBackgroundPressed[] = {0,0,0,0}; // Mouse pressed fill color
			colorBackgroundDisabled[] = {0,0,0,0}; // Disabled fill color

			//Textures
			textureChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";		//Texture of checked CheckBox.
			textureUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";		//Texture of unchecked CheckBox.
			textureFocusedChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";	//Texture of checked focused CheckBox (Could be used for showing different texture when focused).
			textureFocusedUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";	//Texture of unchecked focused CheckBox.
			textureHoverChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
			textureHoverUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
			texturePressedChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
			texturePressedUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
			textureDisabledChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
			textureDisabledUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";

			tooltip = "CTR_CHECKBOX"; // Tooltip text
			tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
			tooltipColorText[] = {1,1,1,1}; // Tooltip text color
			tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

			//Sounds
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1}; // Sound played after control is activated in format {file, volume, pitch}
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1}; // Sound played when mouse cursor enters the control
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1}; // Sound played when the control is pushed down
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1}; // Sound played when the control is released after pushing down

			onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
			onDestroy = "systemChat str ['onDestroy',_this]; false";
			onMouseEnter = "systemChat str ['onMouseEnter',_this]; false";
			onMouseExit = "systemChat str ['onMouseExit',_this]; false";
			onSetFocus = "systemChat str ['onSetFocus',_this]; false";
			onKillFocus = "systemChat str ['onKillFocus',_this]; false";
			onKeyDown = "systemChat str ['onKeyDown',_this]; false";
			onKeyUp = "systemChat str ['onKeyUp',_this]; false";
			onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
			onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
			onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
			onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
			onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
			onMouseMoving = "";
			onMouseHolding = "";
		};
	};

};
class RscTestControlTypes2 : RscTestControlTypes
{
	idd = 9980; // Display identification
	
	class ControlsBackground : ControlsBackground// Background controls (placed behind Controls)
	{
		class Background
		{
			idc = 9970;
			colorBackground[] = {0.5,0.5,0.4,1};

		};
	};
	class Controls : Controls // second controls
	{
		class _CTR_SLIDERradius_Value: _CTR_SLIDER_Value 
		{
			idc = 9960;
			style = ST_CENTER;
			blinkingPeriod = 0;
			x = 8 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 6.75 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 3 * GUI_GRID_CENTER_W; // Width
			h = 1 * GUI_GRID_CENTER_H; // Height
			colorBackground[] = {0,0,0,0};
			fixedWidth = 0;
		};
		class _CTR_HTMLtest : _CTR_HTML
		{
			idc = 9950; // Control identification (without it, the control won't be displayed)
			tooltip = "MAKEARMANOTWAR.COM"; // Tooltip text
			text = "SUPPORT"; // Displayed text
		};
	};
};
class RscText;
class CA_Title;
class RscShortcutButton;
class RscListBox;
class RscPicture;
class RscDisplayAddonActions
{
	idd=156;
	class controlsBackground
	{
		class Mainback: RscPicture
		{
			idc=1104;
			x=0.204;
			y=0.17;
			w=0.627451;
			h=0.83660132;
			text="\A3\ui_f\data\ui_gameoptions_background_ca.paa";
		};
	};
	class Controls
	{
		delete T_Background;
		delete T_Title;
		delete T_Actions;
		delete C_Actions;
		delete B_Cancel;
		//delete B_NewMod;
		delete B_OK;
		class CA_T_Title: CA_Title
		{
			idc=1002;
			moving=1;
			x=0.225803;
			y=0.192;
			text="ATOM ACTION MENU";
		};
		class CA_T_Actions: RscText
		{
			idc=1003;
			x=0.225803;
			y="(0.367549 + -2*0.0523905)";
			text="2014 | ARMAIII";
		};
		class CA_C_Actions: RscListBox
		{
			idc=101;
			x=0.235;
			y=0.31999999;
			w=0.52999997;
			h=0.41;
		};
		class CA_B_OK: RscShortcutButton
		{
			idc=1;
			x=0.59100002;
			y=0.76249999;
			text="$STR_DISP_OK";
			default=1;
		};
		class CA_B_NewMod: RscShortcutButton
		{
			idc=102;
			x=0.405;
			y=0.76249999;
			text="a3\ui_f\data\igui\rsctitles\static\feedstatic_00_ca.paa";
			default=0;
		};
		class CA_B_Cancel: RscShortcutButton
		{
			idc=2;
			x=0.21699999;
			y=0.76249999;
			text="$STR_DISP_CANCEL";
			default=0;
		};
	};
};