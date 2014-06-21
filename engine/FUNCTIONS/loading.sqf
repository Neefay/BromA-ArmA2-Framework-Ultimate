/*
// =============================================================================

NAME:
Loading screen.

DESCRIPTION:
Stops players from moving and generating desync - will also call upon the intro
script.

PARAMETERS:
None.

RETURNS:
Nothing.

EXAMPLE:
[] call fnc_loading_screen

AUTHOR: 
Nife

// =============================================================================
*/

if (!(isNull player) && !(isMultiplayer)) exitWith {};
if (isServer) then { callIntro = false; }; publicVariable "callIntro";
introOver = false;
if (playerIsJip && !(allowJIP)) exitWith {};

//==============================================================================
// Makes players crouch and puts their weapons on safety.

player addWeapon "ACE_Safe";
player enableSimulation false;
player switchMove "amovpercmstpslowwrfldnon_player_idlesteady03";
player setVariable ["ace_sys_goggles_earplugs", true, false];
player setVariable ["ace_ear_protection", true, false];
player selectWeapon "ACE_Safe";

//==============================================================================
// Here we declare what text will be shown to the player when the game is loading.

if ( isnil "briefLoad" ) then { briefLoad =
"Please wait in order to allow the game to synchronize with all players.\n
\n 
Remember to ALWAYS read the briefing.\n
\n
Take your time to plan your tactics with your teammates.";
}; publicVariable "briefLoad";

titletext [format ["Loading mission \n\n 0%2 \n[-----------] \n\n%1", briefLoad, "%"], "BLACK FADED",0];
sleep 1;
titletext [format["Loading mission \n\n 25%2 \n[==--------] \n\n%1", briefLoad, "%"], "BLACK FADED",0];
sleep 2;
titletext [format["Loading mission \n\n 50%2 \n[=====-----] \n\n%1", briefLoad, "%"], "BLACK FADED",0];
sleep 1;
titletext [format["Loading mission \n\n 75%2 \n[=======---] \n\n%1", briefLoad, "%"], "BLACK FADED",0];
sleep 2;
titletext [format["Loading mission \n\n 100%2 \n[=========] \n\n%1", briefLoad, "%"], "BLACK FADED",0];
sleep 5;
titletext ["","PLAIN",0];
//==============================================================================
// Plays intro.
[] execVM (CUSTOM_FILES_PATH+"intro.sqf");

//==============================================================================
// Mission starts.
waitUntil{introOver};
titletext ["","PLAIN",0];
player enableSimulation true;