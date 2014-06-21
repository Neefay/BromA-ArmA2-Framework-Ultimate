/*
// =============================================================================

NAME:
Player JIP check.

DESCRIPTION:
Checks if the mission has already started thus returning if the player is a JIP.

PARAMETERS:
None.

RETURNS:
Boolean - JIP or not.

EXAMPLE:
playerIsJip = [] call fnc_isJip;

AUTHOR: 
Nife

// =============================================================================
*/

if (time > 10) then
{ true } 
else 
{ false };