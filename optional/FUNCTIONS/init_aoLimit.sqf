/*
// =============================================================================

NAME:
AO Limiter

DESCRIPTION:
Stops players from leaving the area of operations. AO is delimited by a 
rectangular marker named "ao" in the map.

PARAMETERS:
None.

RETURNS:
Nothing.

EXAMPLE:
None.

AUTHOR: 
beta, ideas from Sandiford

// =============================================================================
*/

private ["_sleep", "_pos", "_aoPos", "_player"];
sleep 5;  //wait until mission starts

_pos = [0,0,0];
_aoPos = [(getMarkerPos "ao") select 0, (getMarkerPos "ao") select 1, 0];
_sleep = 0.25;

while {(alive player)} do {
    _player = vehicle player;
    if (_player isKindOf "Land") then {

        if (!([getPos _player, "ao"] call CBA_fnc_inArea)) then {
            hintSilent "You cannot leave the AO.";
            _pos = [getPos _player, 1, ([_player, _aoPos] call BIS_fnc_dirTo)] call BIS_fnc_relPos;
            _player setPos _pos;
            _sleep = 0;
        }
        else { _sleep = 0.25; };
    };

    sleep _sleep;
};