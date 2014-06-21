/*
// =============================================================================

NAME:
Synchronize time.

DESCRIPTION:
JIPs will synchronize several mission date related variables upon joining.

PARAMETERS:
None.

RETURNS:
Nothing.

EXAMPLE:
[] call fnc_sync_time

AUTHOR: 
Nife

// =============================================================================
*/

// Only JIPs should run this.
if !(playerIsJip) exitWith {};

waitUntil {!(isNil "current_server_time")};

setDate current_server_time;
0 setFog current_server_fog;
0 setOvercast current_server_overcast;
0 setRain current_server_rain;