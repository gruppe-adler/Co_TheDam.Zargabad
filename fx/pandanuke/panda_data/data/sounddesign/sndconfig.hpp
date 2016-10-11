class CfgSounds
{
	sounds[]={};
	
	
	//class snd_beispiel1
	//{
	// how the sound is referred to in the editor (e.g. trigger effects)
	//	name = "name_referenz_sound";
	// filename, volume, pitch
	//	sound[] = {"\wo\wo.wss", 1, 1};
	// subtitle delay in seconds, subtitle text 
	//	titles[] = {1, "*sub text*"};
	//};	
	
	
	//class snd_beispiel2
	//{
	// how the sound is referred to in the editor (e.g. trigger effects)
	// name="name des Sounds (long)";
	// sound[]=
	//  {
	//	"\wo\wo.wss",	//filename
	//	10,				//volume
	//	1,				//pitch
	//	50	//länge?
	//  };
	// subtitle delay in seconds, subtitle text 
	// titles[]={1, "*sub text*"};
	//};
	
	
	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	//class schneesturm
	//{
	//	name = "schneesturm";
	//	sound[] = {"\panda_syndicate\panda_data\data\sounddesign\schneesturm.wss",db-8,1.0}; 
	//	titles[]={};
	//};
	class hust1
	{
		name = "hust1";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\hust1.wss", db+5, 1.0};	//hust 1 +5db
		titles[] = {};
	};
	class hust2
	{
		name = "hust2";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\hust1.wss", db+10, 1.0};	//hust 1 +10db
		titles[] = {};
	};
	class hust3
	{
		name = "hust3";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\hust1.wss", db+15, 1.0};	//hust 1 +15db
		titles[] = {};
	};
	class hust4
	{
		name = "hust4";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\hust1.wss", db+20, 1.0}; //hust 1 +20db
		titles[] = {};
	};

	class frieren1
	{
		name = "frieren1";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\frieren1.wss", db+20, 1.0};
		titles[] = {};
	};
	class frieren2
	{
		name = "frieren2";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\frieren2.wss", db+20, 1.0};
		titles[] = {};
	};   
	class frieren3
	{
		name = "frieren3";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\frieren3.wss", db+20, 1.0};
		titles[] = {};
	};   
	class schnief1
	{
		name = "schnief1";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\schnief1.wss", db+20, 1.0};
		titles[] = {};
	};
	class schnief2
	{
		name = "schnief2";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\schnief2.wss", db+20, 1.0};
		titles[] = {};
	};    
	class schnief3
	{
		name = "schnief3";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\schnief3.wss", db+20, 1.0};
		titles[] = {};
	};
	class schnief4
	{
		name = "schnief4";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\schnief4.wss", db+20, 1.0};
		titles[] = {};
	};
	class schnief5
	{
		name = "schnief5";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\schnief5.wss", db+20, 1.0};
		titles[] = {};
	};    
	class schnief6
	{
		name = "schnief6";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\schnief6.wss", db+20, 1.0};
		titles[] = {};
	};
	class schnief7
	{
		name = "schnief7";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\schnief7.wss", db+20, 1.0};
		titles[] = {};
	};	
	class schnief8
	{
		name = "schnief8";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\schnief8.wss", db+20, 1.0};
		titles[] = {};
	};
	class schnief9
	{
		name = "schnief9";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\schnief9.wss", db+20, 1.0};
		titles[] = {};
	};
	class schnief10
	{
		name = "schnief10";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\schnief10.wss", db+20, 1.0};
		titles[] = {};
	};	
	
	class sndintro_1
	{
		name="sndintro_1";
		sound[]=
		{
			"\panda_syndicate\panda_data\data\sounddesign\sndintro_1.wss",
			5,
			1,
			10
		};
		titles[]={};
	};	
	class sndintro_2
	{
		name="sndintro_2";
		sound[]=
		{
			"\panda_syndicate\panda_data\data\sounddesign\sndintro_1.wss",
			15,
			1,
			20
		};
		titles[]={};
	};	

	class siren_long
	{
		name="Tempest SIREN (long)";
		sound[]=
		{
			"\panda_syndicate\panda_data\data\sounddesign\snd_alarm.wss",	//
			30,
			1,
			50	//länge?
		};
		titles[]={};
	};
	class hornA
	{
		name="Horn (long)";
		sound[]=
		{
			"\panda_syndicate\panda_data\data\sounddesign\snd_tempesthorn.wss",
			30,
			1,
			30
		};
		titles[]={};
	};

	class sndnuke001
	{
		name = "sndnuke001"; 
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\boom_explosion01.wss", db + 10, 1.0};
		titles[] = {}; 
	};	
	class sndnuke002
	{
		name = "sndnuke002"; 
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\boom_explosion02.wss", db + 10, 1.0};
		titles[] = {}; 
	};	
	class sndnuke003
	{
		name = "sndnuke003"; 
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\boom_explosion03.wss", db + 10, 1.0};
		titles[] = {}; 
	};	
	class sndnuke004
	{
		name = "sndnuke004"; 
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\boom_explosion01.wss", db + 10, 1.0};
		titles[] = {}; 
	};	
	class sndnuke005
	{
		name = "sndnuke005"; 
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\boom_explosion05.wss", db + 10, 1.0};
		titles[] = {}; 
	};		
	//++++++++++++++++++++++
	//obs
	class atomtest1
	{
		name = "atomtest1"; 
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\boom_explosion01.wss", db + 0, 1.0};
		titles[] = {}; 
	};
	//++++++++++++++++++++++++
	class atomsoundweit1
	{
		name = "atomsoundweit1"; 
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\boom_explosion02.wss", db + 0, 1.0};
		titles[] = {}; 
	};
	class atomsoundweit2
	{
		name = "atomsoundweit2"; 
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\boom_deep3.wss", db + 0, 1.0};
		titles[] = {}; 
	};
	class nuke2s
	{
		name = "nuke2s"; 
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\boom_explosion02.wss", db + 10, 1.0};
		titles[] = {}; 
	};
	class snd_boom001
	{
		name = "snd_boom001";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\boom_explosion02.wss", db+10, 1};
		titles[] = {};
	};
	class atomtest_weit_a
	{
		name = "atomtest_weit_a";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\boom_deep2.wss", db+20, 1};
		titles[] = {};
	};
	
	class snd_geigerfull001
	{
		name = "snd_geigerfull001";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\radi_geigerfull.wss", db-10, 1};
		titles[] = {};
	};
	class snd_geigerclick001
	{
		name = "snd_geigerclick001";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\radi_1geigerclick.wss", db-5, 1};
		titles[] = {};
	};
	class snd_geigerclick002
	{
		name = "snd_geigerclick002";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\radi_3geigerclick.wss", db-6, 1};
		titles[] = {};
	};
	class snd_geigerclick003
	{
		name = "snd_geigerclick003";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\radi_9geigerclick.wss", db-8, 1};
		titles[] = {};
	};
	class snd_heartbeat001
	{
		name = "snd_heartbeat001";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\heartbeatnew.wss", db+10, 1}; //checked
		titles[] = {};
	};
	class snd_heartbeat
	{
		name = "snd_heartbeat";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\heartbeat.wss", db+0, 1}; //checked
		titles[] = {};
	};
	//+++++++++++++++++++++++++++++++++++
	class emp_long
	{
		name="emp (long)";
		sound[]=
		{
			"\panda_syndicate\panda_data\data\sounddesign\emp_midwave.wss",
			10,
			1,
			5
		};
		titles[]={};
	};
	class emp_short
	{
		name="emp (short)";
		sound[]=
		{
			"\panda_syndicate\panda_data\data\sounddesign\emp_nearunit.wss",
			5,
			1,
			1
		};
		titles[]={};
	};
	class emp_far
	{
		name="emp (far)";
		sound[]=
		{
			"\panda_syndicate\panda_data\data\sounddesign\emp_fizzle.wss",
			5,
			1,
			5
		};
		titles[]={};
	};
	class emp_far2
	{
		name="emp (far2)";
		sound[]=
		{
			"\panda_syndicate\panda_data\data\sounddesign\emp_midwave.wss",
			5,
			1,
			5
		};
		titles[]={};
	};
	class emp_near
	{
		name="emp (near)";
		sound[]=
		{
			"\panda_syndicate\panda_data\data\sounddesign\emp_midwave.wss",
			5,
			1,
			1
		};
		titles[]={};
	};
	
	class button_click {
		name = "";
		sound[] = {"\panda_syndicate\panda_data\defcons\codex\sounds\click.ogg", 0.8, 1};
		titles[] = {};
	};
	class button_close {
		name = "";
		sound[] = {"\panda_syndicate\panda_data\defcons\codex\sounds\close.ogg", 0.8, 1};
		titles[] = {};
	};
	class button_wrong {
		name = "";
		sound[] = {"\panda_syndicate\panda_data\defcons\codex\sounds\wrong.ogg", 0.8, 1};
		titles[] = {};
	};
	
	//++++++
	class snd_impfull001
	{
		name = "snd_impfull001"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_full1.wss", db + 2, 1.0};
		titles[] = {0, ""};
	};
	class impactMetalHardClose
	{
		name = "impactMetalHardClose"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_metal2.wss", db + 6, 0.8};
		titles[] = {0, ""};
	};
	class impactMetalHardStandard
	{
		name = "impactMetalHardStandard"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_metal2.wss", db - 2, 0.6};
		titles[] = {0, ""};
	};
	class impactMetalHardFar
	{
		name = "impactMetalHardFar"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_metal2.wss", db - 10, 0.4};
		titles[] = {0, ""};
	};
	class impactBodyHardClose
	{
		name = "impactBodyHardClose"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_metal2.wss", db + 5, 0.8};
		titles[] = {0, ""};
	};
	class impactBodyHardStandard
	{
		name = "impactBodyHardStandard"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_unitlow1.wss", db - 2, 0.9};
		titles[] = {0, ""};
	};
	class impactBodyHardFar
	{
		name = "impactBodyHardFar"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_unitlow1.wss", db - 10, 1.0};
		titles[] = {0, ""};
	};
	class impactMetalSoftClose
	{
		name = "impactMetalSoftClose"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_metal1.wss", db + 10, 0.8};
		titles[] = {0, ""};
	};
	class impactMetalSoftStandard
	{
		name = "impactMetalSoftStandard"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_metal1.wss", db + 0, 0.7};
		titles[] = {0, ""};
	};
	class impactMetalSoftFar
	{
		name = "impactMetalSoftFar"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_metal1.wss", db - 10, 0.6};
		titles[] = {0, ""};
	};
	class impactBodySoftClose
	{
		name = "impactBodySoftClose"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_metal1.wss", db + 10, 1.0};
		titles[] = {0, ""};
	};
	class impactBodySoftStandard
	{
		name = "impactBodySoftStandard"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_metal1.wss", db + 0, 1.0};
		titles[] = {0, ""};
	};
	class impactBodySoftFar
	{
		name = "impactBodySoftFar"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_metal1.wss", db - 10, 1.0};
		titles[] = {0, ""};
	};
	class snd_impdeep3
	{
		name = "snd_impdeep3"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\boom_deep3.wss", db + 0, 1.0};
		titles[] = {0, ""};
	};
	class interiorTurbolanceClose
	{
		name = "interiorTurbolanceClose"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_vec1.wss", db + 0, 1.0};
		titles[] = {0, ""};
	};
	class interiorTurbolanceStandard
	{
		name = "interiorTurbolanceStandard"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_vec2.wss", db - 5, 1.0};
		titles[] = {0, ""};
	};
	class interiorTurbolanceFar
	{
		name = "interiorTurbolanceFar"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_vec3.wss", db-5, 1.0};
		titles[] = {0, ""};
	};
	class shockwaveClose
	{
		name = "shockwaveClose"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_unithigh1.wss", db+0, 0.4};
		titles[] = {0, ""};
	};
	class shockwaveStandard
	{
		name = "shockwaveStandard"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\missle_full.wss", db-0, 1};
		titles[] = {0, ""};
	};
	class shockwaveFar
	{
		name = "shockwaveFar"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\missle_full.wss", db - 0, 1};
		titles[] = {0, ""};
	};
	
	class wind
	{
		name= "wind";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\ambi_wind1_1.wss", db-18, 1};
		titles[] = {}; 
	};
	class wind_1
	{
		name= "wind_1";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\ambi_wind1_2.wss", db-18, 1};
		titles[] = {}; 
	};
	class wind_2
	{
		name= "wind_2";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\ambi_wind1_3.wss", db -18, 1};
		titles[] = {}; 
	};
	class wind_3
	{
		name= "wind_3";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\ambi_wind1_1.wss", db -18, 1};  //wind1_1 
		titles[] = {}; 
	};
	class empfizz
	{
		name = "empfizz"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\emp_fizzle.wss", db+0, 0.6};
		titles[] = {0, ""};
	};
	class explsoft
	{
		name = "explsoft"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\explsoft.wss", db+10, 0.6};
		titles[] = {0, ""};
	};
	class explimpact
	{
		name = "explsoft"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\explimpact.wss", db+10, 0.6};
		titles[] = {0, ""};
	};
	class shockcom
	{
		name = "shockcom"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\emp_midwave.wss", db+10, 0.6};
		titles[] = {0, ""};
	};
	class heatimp
	{
		name = "heatimp"; // Name for mission editor
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\emp_fizzle.wss", db+0, 0.6};
		titles[] = {0, ""};
	};
	
	class  explosion
	{
		name = "explosion";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\boom_explosion01.wss", db+5,1.0};
		titles[] = { };
	};

	class  empdistort
	{
		name = "empfizz";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\emp_distort.wss", db+0,1.0};
		titles[] = { };
	};

	class empnear
	{
		name = "empnear";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\emp_near3unit.wss", db+0,1.0};
		titles[] = { };
	};

	class heatimpact
	{
		name = "heatimpact";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\imp_unithigh1.wss", db+5,1.0};
		titles[] = { };
	};
	
	class windimpact
	{
		name = "windimpact";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\explsoft.wss", db+0,1.0};
		titles[] = { };
	};
};

class CfgRadio
{
	sounds[] = {emp_short_r};

	class emp_short_r
	{ 
		name = "emp_short_r"; 
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\emp_near3unit.wss", db+15, 1.0}; 
		title = "EMP";
	};
};

class CfgMusic
{
	class empshort1
	{
		name = "empshort1";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\emp_fizz.wss",1.0,1.0};
		duration = 3;
	};
	class empshort2
	{
		name = "empshort2";
		sound[] = {"\panda_syndicate\panda_data\data\sounddesign\emp_distort.wss",1.0,1.0};
		duration = 2;
	};
};


class CfgEnvSounds
{
	sounds[]={explimpactE,emp_fizzleE};

	class exp_limpactE
		{
			name="exp_limpactE";
			sound[]={"\panda_syndicate\panda_data\data\sounddesign\explimpact.wss",db+0,0,1};
			soundNight[]={"\panda_syndicate\panda_data\data\sounddesign\explimpact.wss",db+0,0,1};
		};
	class emp_fizzleE
		{
			name="emp_fizzleE";
			sound[]={"\panda_syndicate\panda_data\data\sounddesign\emp_fizzle.wss",db+0,0,1};
			soundNight[]={"\panda_syndicate\panda_data\data\sounddesign\emp_fizzle.wss",db+0,0,1};
		};
};