/*
// =============================================================================

NAME:
Single player debugging.

DESCRIPTION:
Initializes parameter related variables and handy functions to help you test
your mission in the editor.

PARAMETERS:
None.

RETURNS:
Nothing.

EXAMPLE:
[] call INIT_debug

AUTHOR: 
Nife

// =============================================================================
*/

if (isServer) then {
    DAC_AI_Level = 4; publicVariable "DAC_AI_Level"; 
    if (isNil "f_var_init") then { f_var_init = 0 }; publicVariable "f_var_init";
    if (isNil "allowVehThirdPerson") then { allowVehThirdPerson = false }; publicVariable "allowVehThirdPerson";    
    if (isNil "mission_ACE_Stamina") then { mission_ACE_Stamina = false }; publicVariable "mission_ACE_Stamina";    
    if (isNil "MissionSetup") then { MissionSetup = 10 }; publicVariable "MissionSetup";
    if (isNil "CasualtyCapParam") then { CasualtyCapParam = 100 }; publicVariable "CasualtyCapParam";
    if (isNil "CivilianCap") then { CivilianCap = 9999 }; publicVariable "CivilianCap";
    if (isNil "ace_wounds_prevtime") then { ace_wounds_prevtime = 10 }; publicVariable "ace_wounds_prevtime";
    ace_sys_tracking_markers_enabled = false; publicVariable "ace_sys_tracking_markers_enabled";
    
    
    // Convenient way to end your missions on Singeplayer
    endMissionTrg = createTrigger["EmptyDetector",[0,0]]; 
    endMissionTrg setTriggerText "[End mission]";
    endMissionTrg setTriggerActivation["ALPHA","PRESENT",true];
    endMissionTrg setTriggerStatements["this", "myEnd = [1] execVM '"+ENGINE_PATH+"f\server\f_mpEndBroadcast.sqf'", ""];        
    
    // Stops the AI and saves you frames.
    stopAI = createTrigger["EmptyDetector",[0,0]]; 
    stopAI setTriggerText "[Disable the AI]";
    stopAI setTriggerActivation["JULIET","PRESENT",true];
    stopAI setTriggerStatements["this", "{ _x stop true } forEach allUnits", ""];
};
if !(isMultiplayer) then {             
    DAC_Marker = 7;
    DAC_Fast_Init = true;
    DAC_Com_Values = [1,2,0];
    player allowDamage false;
    player addAction ["Start Camera","camera.sqs",[],2,false,true,"","driver _target == _this"];    
} else {
    deleteVehicle endMissionTrg;
    deleteVehicle stopAI;
};
// =============================================================================    