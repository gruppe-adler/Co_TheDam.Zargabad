//if ( (isServer) or (isDedicated) ) exitWith {};
//[["pandaH001", "class pandaH002"]] call BIS_fnc_advHint;

class CfgHints {
	class pandaH001 {
		displayName = "Panda News!";
		class pandaH002 {
			displayName = "Panda News!";
			displayNameShort = "Panda News!";
			description = "Thank you for testing the Addon. Press %11 to request attention from the Curator.";
			tip = "Website: http://makearmanotwar.com/entry/W2k3QV42PH";
			arguments[] = {{{"CuratorInterface"}}};
			image = "\panda_syndicate\panda_data\hints\images\moleb1.jpg";
			noImage = true;
		};
		class pandaH003 {
			displayName = "Server Setup";
			displayNameShort = "Server test";
			description = "ATOM MODUL";
			tip = "Website: http://makearmanotwar.com/entry/W2k3QV42PH";
			arguments[] = {{{"CuratorInterface"}}};
			image = "\panda_syndicate\panda_data\hints\images\moleb1.jpg";
			noImage = false;
		};
	};
	class pandaH004 {
		displayName = "Welcome Advanced Message";
		class pandaH005 {
			displayName = "EMP INFOS";
			displayNameShort = "EMP INFOS!";
			description = "EMP Pulse Infos. comes soon. Press %11 to request attention from the Curator.";
			tip = "Website: http://makearmanotwar.com/entry/W2k3QV42PH";
			arguments[] = {{{"CuratorInterface"}}};
			image = "\panda_syndicate\panda_data\hints\images\moleb1.jpg";
			noImage = false;
		};
	};
};