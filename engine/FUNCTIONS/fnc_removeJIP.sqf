/*
// =============================================================================

NAME:
Remove JIP

DESCRIPTION:
Checks if the player is a JIP and if the mission allows them to join - if not,
kick them out immediatelly.

PARAMETERS:
None.

RETURNS:
Nothing.

EXAMPLE:
[] call fnc_remove_jip

AUTHOR: 
Nife

// =============================================================================
*/

if (allowJIP) exitWith {};
if !(playerIsJip) exitWith {};

// Removes JIPs from the game.
//==============================================================================
removeAllWeapons player;
removeAllItems player;
[player] joinSilent grpNull;
player enableSimulation false;
player setpos [0,0,0];
titletext ["JIP not allowed in this mission - entering spectator mode.", "BLACK",0];
sleep 10;
//==============================================================================