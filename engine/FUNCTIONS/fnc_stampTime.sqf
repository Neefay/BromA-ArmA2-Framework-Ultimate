/*
// =============================================================================

NAME:
Stamp mission time.

DESCRIPTION:
Every 30 seconds server will broadcast mission date related variables for players.

PARAMETERS:
None.

RETURNS:
Nothing.

EXAMPLE:
[] call fnc_stamp_time

AUTHOR: 
Nife

// =============================================================================
*/

if !(isServer) exitWith {};
while {true} do {
    current_server_time = date; publicVariable "current_server_time";
    current_server_fog = fog; publicVariable "current_server_fog";
    current_server_overcast = overcast; publicVariable "current_server_overcast";
    current_server_rain = rain; publicVariable "current_server_rain";
    sleep 30;
};