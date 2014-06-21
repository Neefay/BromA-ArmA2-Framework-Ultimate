/*

NAME: Briefing Call

DESCRIPTION: Executes the mission briefing for all players according to their 
side.

PARAMETERS: None.

RETURNS: Nothing.

EXAMPLE: "[] execVM (BRIEFING_PATH+"briefingCall.sqf")"

AUTHOR: Nife

*/
// ====================================================================================
// BRIEFING GOES ON HERE
switch (side player) do
{
case WEST:
{
#include "briefingWest.sqf";
};
case EAST:
{
#include "briefingEast.sqf";
};
case RESISTANCE:
{
#include "briefingInd.sqf";
};
case CIVILIAN:
{
#include "briefingCiv.sqf";
};
};

//If you want to add missions that are specific to a single unit or a group of,
//add a condition that calls the following script below:
[] execVM CUSTOM_FILES_PATH+"credits.sqf";