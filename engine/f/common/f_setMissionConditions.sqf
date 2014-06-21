// F2 - Mission Conditions Selector
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_timeOfDay","_weather","_MissionOvercast","_MissionFog", "_timeLimit","_deadCivilians","_aiSkill"];

// ====================================================================================

// WAIT FOR PARAMSARRAY TO BE PROCESSED

waitUntil { scriptDone f_processParamsArray };

// ====================================================================================

// SET KEY VARIABLES
// Conditions are set in the parameters screen (during mission set-up).

_timeOfDay = f_param_timeOfDay;
_weather = f_param_weather;
_timeLimit = time_limit;
_deadCivilians = dead_civies;
_aiSkill = ai_level;
_aceWoundTime = ace_woundtime;
_missionLives = mission_lives;
_missionRespawn = mission_respawn;
_setuptime = setup_time;
_cascap = cas_cap;
_staminaon = ace_stamina_p;
_tpveh = allow_tp_veh;

// ====================================================================================

// SELECT MISSION TIME OF DAY
// Using the value of _timeOfDay, a new date is set.

switch (_timeOfDay) do
{
// Dawn
	case 0:
	{
		setDate [2007, 5, 11, 4, 50];
	};
// Early Morning
	case 1:
	{
		setDate [2007, 5, 11, 5, 50];
	};
// Morning
	case 2:
	{
		setDate [2007, 5, 11, 9, 00];
	};
// Noon
	case 3:
	{
		setDate [2007, 5, 11, 12, 0];
	};
// Afternoon
	case 4:
	{
		setDate [2007, 5, 11, 15, 00];
	};
// Evening
	case 5:
	{
		setDate [2007, 5, 11, 17, 50];
	};
// Dusk
	case 6:
	{
		setDate [2007, 5, 11, 18, 50];
	};
// Night
	case 7:
	{
		setDate [2007, 5, 11, 0, 0];
	};
};

// ====================================================================================

// SELECT MISSION WEATHER
// Using the value of _weather, values for _MissionOvercast and _MissionFog are set.

switch (_weather) do
{
// Clear
	case 0:
	{
		_MissionOvercast = 00.00;
		_MissionFog = 00.00;
	};
// Overcast
	case 1:
	{
		_MissionOvercast = 00.60;
		_MissionFog = 00.10;
	};
// Light Fog
	case 2:
	{
		_MissionOvercast = 00.60;
		_MissionFog = 00.8125;
	};
// Heavy Fog
	case 3:
	{
		_MissionOvercast = 00.60;
		_MissionFog = 00.96;
	};
// Storm
	case 4:
	{
		_MissionOvercast = 01.00;
		_MissionFog = 00.00;
	};
};

// ====================================================================================

// SELECT MISSION TIME LIMIT
// When the time limit selected ends, the mission is over

switch (_timeLimit) do
{
	case 0:
	{
            TimerLimit = 999999999999;
	};
	case 1:
	{
            TimerLimit = 10800;
	};
	case 2:
	{
            TimerLimit = 7200;
	};
	case 3:
	{
            TimerLimit = 3600;
	};
	case 4:
	{
            TimerLimit = 2700;
	};
	case 5:
	{
            TimerLimit = 1800;
	};     
	case 6:
	{
            TimerLimit = 900;
	};
	case 7:
	{
            TimerLimit = 600;
	};
	case 8:
	{
            TimerLimit = 60;
	};         
};
publicvariable "TimerLimit";
// ====================================================================================

// CIVILIAN CASUALTY CAP
// Ends the mission whenever a certain number of civilians has been killed

switch (_deadCivilians) do
{
	case 0:
	{
            CivilianCap = 9999;
	};
	case 1:
	{
            CivilianCap = 3;
	};
	case 2:
	{
            CivilianCap = 10;
	};
	case 3:
	{
            CivilianCap = 30;
	};        
};
publicVariable "CivilianCap";
// ====================================================================================

// DAC AI SKILL
// Ends the mission whenever a certain number of civilians has been killed

switch (_aiSkill) do
{    
	case 0:
	{
            DAC_AI_Level = 1;
	};        
	case 1:
	{
            DAC_AI_Level = 1;
	};
	case 2:
	{
            DAC_AI_Level = 2;
	};
	case 3:
	{
            DAC_AI_Level = 3;
	};
	case 4:
	{
            DAC_AI_Level = 4;
	};        
};
publicVariable "DAC_AI_Level";
// ====================================================================================

// ACE Wounds prevtime
// Amount of time it takes for someone to die after going unconcious

switch (_aceWoundTime) do
{
	case 0:
	{
            ace_wounds_prevtime = 10;
	};
	case 1:
	{
           ace_wounds_prevtime = 60;
	};
	case 2:
	{
            ace_wounds_prevtime = 120;
	};
	case 3:
	{
            ace_wounds_prevtime = 300;
	};   
	case 4:
	{
            ace_wounds_prevtime = 600;
	};         
};
publicVariable "ace_wounds_prevtime";
// ====================================================================================
// Mission lives

switch (_missionLives) do
{
	case 0:
	{
           Colum_revive_Conf_Lifes = 1;
	};
	case 1:
	{
           Colum_revive_Conf_Lifes = 2;
	};
	case 2:
	{
           Colum_revive_Conf_Lifes = 4;
	};
	case 3:
	{
            Colum_revive_Conf_Lifes = 6;
	};  
	case 4:
	{
            Colum_revive_Conf_Lifes = 11;
	}; 
	case 5:
	{
            Colum_revive_Conf_Lifes = 1000;
	};         
};
publicVariable "Colum_revive_Conf_Lifes";
// ====================================================================================

// ====================================================================================
// Casualty Cap

switch (_cascap) do
{
	case 0:
	{
           CasualtyCapParam = 80;
	};
	case 1:
	{
           CasualtyCapParam = 90;
	};
	case 2:
	{
           CasualtyCapParam = 95;
	};
	case 3:
	{
           CasualtyCapParam = 100;
	};       
};
publicVariable "CasualtyCapParam";
// ====================================================================================

// ====================================================================================
// Setup time

switch (_setuptime) do
{
	case 0:
	{
           MissionSetup = 60;
	};
	case 1:
	{
           MissionSetup = 180;
	};
	case 2:
	{
           MissionSetup = 300;
	};
	case 3:
	{
            MissionSetup = 600;
	};         
};
publicVariable "MissionSetup";
// ====================================================================================

// Respawning enabled
//allow respawn . false= if uncons time runs out you will DIE PERMANENTLY, EVEN IF YOU HAD LIFES LEFT. true= if you get out of time you will respawn on the designated respawn if you had lives left

switch (_missionRespawn) do
{
	case 0:
	{
           Colum_revive_Respawn = false;
	};
	case 1:
	{
           Colum_revive_Respawn = true;
	};        
};
publicVariable "Colum_revive_Respawn";
// ====================================================================================

// Respawning enabled
//allow respawn . false= if uncons time runs out you will DIE PERMANENTLY, EVEN IF YOU HAD LIFES LEFT. true= if you get out of time you will respawn on the designated respawn if you had lives left

switch (_staminaon) do
{
	case 0:
	{
           mission_ACE_Stamina = false;
	};
	case 1:
	{
           mission_ACE_Stamina = true;
	};        
};
publicVariable "mission_ACE_Stamina";

// ====================================================================================

// Third Person allowed for passengers inside vehicles

switch (_tpveh) do
{
	case 0:
	{
           allowVehThirdPerson = false;
	};
	case 1:
	{
           allowVehThirdPerson = true;
	};        
};
publicVariable "allowVehThirdPerson";
// ====================================================================================

// ENABLE DEBUG MODE
// If either _timeOfDay or _weather is set to 99, debug mode is enabled; in this case
// conditions are set to Noon, Clear.

if ((_timeOfDay == 99) || (_weather == 99)) then 
{
	setDate [2007, 5, 11, 12, 0];
	_MissionOvercast = 00.00;
	_MissionFog = 00.00;
};

// ====================================================================================

// SET MISSION CONDITIONS
// Use new values for _MissionTime, _MissionOvercast and _MissionFog to set
// mission conditions on server and all clients (including JIP clients).

0 setOvercast _MissionOvercast;
0 setFog _MissionFog;

// DEBUG
if (f_var_debugMode == 1) then
{
	player sideChat format ["DEBUG (engine\f\common\f_setMissionConditions.sqf): _MissionOvercast: %1",_MissionOvercast];
	player sideChat format ["DEBUG (engine\f\common\f_setMissionConditions.sqf): _MissionFog: %1",_MissionFog];
};

// ====================================================================================

// ====================================================================================
// SYNCHRONIZE TIME FOR JIPS
[] call FNC_sync_time;

if (true) exitWith {};