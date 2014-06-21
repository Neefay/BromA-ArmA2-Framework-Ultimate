/*
// =============================================================================

NAME:
Initialize Engine

DESCRIPTION:
This script is responsible for initializing all main engine assets in the
framework - needless to say but don't disable anything here unless you know
what you're doing.

PARAMETERS:
None.

RETURNS:
Nothing.

EXAMPLE:
None.

AUTHOR: 
Nife

// =============================================================================
*/

#include "folder_path.sqf"

[] call compile preprocessFileLineNumbers (ENGINE_FUNC_PATH+"func_init.sqf");
[] call compile preprocessFileLineNumbers (OPTIONAL_FUNC_PATH+"func_init.sqf");

// Determine if player is JIP or not.
playerIsJip = [] call FNC_isJIP;

// =============================================================================
[] call INIT_load_mission_settings;

// Common Local Variables - WARNING: DO NOT DISABLE THIS COMPONENT
f_script_setLocalVars = [] execVM (ENGINE_PATH+"f\common\f_setLocalVars.sqf");

waitUntil{settingsLoad};
// =============================================================================

// Inits color var.
color = "white";

// Max viewdistance.
bon_settings_maxallowed_viewdist = 20000;

// =============================================================================
// Disables saving and auto-saving.
enableSaving [false, false];
// =============================================================================

// =============================================================================
// Disable BIS conversations
player setVariable ["BIS_noCoreConversations", true];
// =============================================================================

// =============================================================================
// F2 - Process ParamsArray
f_processParamsArray = [] execVM (ENGINE_PATH+"f\common\f_processParamsArray.sqf");
// =============================================================================

// =============================================================================
// F2 - Mission Maker Teleport
if !(isMultiplayer) then { [] execVM (ENGINE_PATH+"f\common\f_missionMakerTeleport.sqf") };
// =============================================================================

// =============================================================================
// BromA - Executes the briefing
[] execVM (BRIEFING_PATH+"briefingCall.sqf");
// =============================================================================

// =============================================================================
// F2 - Mission Conditions Selector
[] execVM (ENGINE_PATH+"f\common\f_setMissionConditions.sqf");
// =============================================================================

// =============================================================================
// F2 - Multiplayer Ending Controller
f_endSelected = -1; [] execVM (ENGINE_PATH+"f\common\f_mpEndSetUp.sqf");
// =============================================================================

// =============================================================================
// BromA - Points assessment
[] execVM ENGINE_PATH+"ending\setupEnding.sqf";
[] execVM ENGINE_PATH+"ending\registerPoints.sqf";
// =============================================================================

// =============================================================================
// BoN - Initializes the Crew Overlay system
[] execVM (OPTIONAL_PATH+"crewoverlay\crewoverlay.sqf");
// =============================================================================

// =============================================================================
// BoN - Initalizes the Distance View Draw system
if !(missionGameMode == "tvt") then {
[] execVM (OPTIONAL_PATH+"view_distance\bon_settings_init.sqf") };
// =============================================================================

// =============================================================================
// Enables the Revive System + Spectator script 
[] execVM (ENGINE_PATH+"revive\ReviveAceWounds.sqf");
// =============================================================================

// =============================================================================
// Call the mission tasks
[] execVM (CUSTOM_FILES_PATH+"call_main_tasks.sqf");
// =============================================================================

// =============================================================================
// Loads the Optional Modules
call compile preprocessFileLineNumbers (OPTIONAL_PATH+"optional-modules.sqf");
// =============================================================================

// =============================================================================
// AI hears players
[] execVM (ENGINE_FUNC_PATH+"init_aiHearsACRE.sqf");
// =============================================================================

// =============================================================================
// Initializes the platoon roster
[] execVM (OPTIONAL_PATH+"team_roster\init.sqf");
// =============================================================================

// =============================================================================    
// Testing and debugging
[] call INIT_debug;
// =============================================================================

// =============================================================================
// BromA - Put spectator units on spectator mode
[] call FNC_swap_spec;
// =============================================================================