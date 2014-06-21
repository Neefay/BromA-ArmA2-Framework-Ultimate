/*
// =============================================================================

NAME:
Setup ending handler

DESCRIPTION:
Calls for the point assessement as soon an ending is reached.

PARAMETERS:
None.

RETURNS:
Nothing.

EXAMPLE:
None.

AUTHOR: 
beta

// =============================================================================
*/

sleep 1;
fnc_EndingAssessment = compile preprocessFileLineNumbers (ENGINE_PATH+"ending\pointAssessment.sqf");
["ending_assessment", fnc_EndingAssessment] call CBA_fnc_addEventHandler;