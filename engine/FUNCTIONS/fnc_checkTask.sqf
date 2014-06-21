/*
// =============================================================================

NAME:
Check task completion.

DESCRIPTION:
Constantly check for the tasks contained within the issued array and then triggers
the desired ending.

PARAMETERS:

    *TASKS ARRAY* - An array containing all tasks you wish to check for.
    *FAILURE ENDING* - Ending activated if any task is failed.
    *WIN ENDING* - Ending triggered when all tasks are succeeded.    

RETURNS:
Nothing.

EXAMPLE:
[myTaskArray,2,3] call fnc_check_task

AUTHOR: 
Nife

// =============================================================================
*/

if !(isServer) exitWith {};

_arraycheck = _this select 0;
_failending = _this select 1;
_winending = _this select 2;

_running = true;

while {_running} do {
    sleep 10;
    _count = 0;
    
    {
        if (_x call SHK_Taskmaster_getState == "failed") exitWith {
            myEnd = [_failending] execVM (ENGINE_PATH+"f\server\f_mpEndBroadcast.sqf");
            _running = false;
        };
        if (_x call SHK_Taskmaster_getState == "succeeded") then {
            _count = _count + 1;
        };        
    } forEach _arraycheck;
    
    if (_count == count _arraycheck) exitWith {
        myEnd = [_winending] execVM (ENGINE_PATH+"f\server\f_mpEndBroadcast.sqf");
        _running = false;
    };
};