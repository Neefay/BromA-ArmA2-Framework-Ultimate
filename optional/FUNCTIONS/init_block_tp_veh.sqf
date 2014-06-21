/*
// =============================================================================

NAME:
Blocks third person

DESCRIPTION:
Makes sure only those allowed in the mission parameters can use third person.

PARAMETERS:
None.

RETURNS:
Nothing.

EXAMPLE:
[] call init_block_tp_veh

AUTHOR: 
Nife

// =============================================================================
*/

if !(isPlayer player) exitWith {};

if (difficultyEnabled "3rdPersonView") then {
    while {!allowVehThirdPerson} do {
        _veh = (vehicle player);
        _inVeh = (_veh != player);
        _isTP = (cameraView == "EXTERNAL");
        _isPassenger = !((player == commander _veh) || (player == driver _veh));

        if ((_inVeh) && (_isPassenger) && (_isTP)) then {
            _veh switchCamera "INTERNAL";
        };
        sleep 0.1;
    };
};