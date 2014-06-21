//by Bon_Inf*

if(isDedicated) exitWith{};

bon_settings_maxallowed_viewdist = 10000;

vpos=viewdistance;
GrassLayer=1;

bon_func_keyspressed = compile preprocessFileLineNumbers (OPTIONAL_PATH+"view_distance\bon_func_keyspressed.sqf");
sleep 0.1;

WaitUntil{not isNull player};
(findDisplay 46) displayAddEventHandler ["KeyDown","_this call bon_func_keyspressed"];

if(true) exitWith{};