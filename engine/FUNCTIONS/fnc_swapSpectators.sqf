/*
// =============================================================================

NAME:
Swap Spectators

DESCRIPTION:
If the player joins a spectator slot, properly sends him into it.

PARAMETERS:
None.

RETURNS:
Nothing.

EXAMPLE:
[] call fnc_swap_spec

AUTHOR: 
Nife

// =============================================================================
*/

//==============================================================================
// Place the spectators in their respective places
//==============================================================================

// Wait until we are in-game
sleep 0.1;

// Case for the Cameraman
if (player == spec1) then {
    	maxViewDist = 10;
	setViewDistance maxViewDist;
        titletext ["Entering spectator mode...", "BLACK",0];
        sleep 3;
        _this exec "camera.sqs";
    	maxViewDist = 5000;
	setViewDistance maxViewDist;  
        deleteVehicle spec1;
};

// And these are for the spectators
if (player == spec2) then {
    	maxViewDist = 10;
	setViewDistance maxViewDist;
        titletext ["Entering spectator mode...", "BLACK",0];
        sleep 3;
        _this call ace_fnc_startSpectator;
    	maxViewDist = 5000;
	setViewDistance maxViewDist;          
        deleteVehicle spec2;        
};
if (player == spec3) then {
    	maxViewDist = 10;
	setViewDistance maxViewDist;
        titletext ["Entering spectator mode...", "BLACK",0];
        sleep 3;
        _this call ace_fnc_startSpectator;
    	maxViewDist = 5000;
	setViewDistance maxViewDist;        
        deleteVehicle spec3;        
};