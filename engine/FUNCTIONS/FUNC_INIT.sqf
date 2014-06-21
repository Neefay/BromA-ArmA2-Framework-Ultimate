if (isNil"alpha_grp_blu") then {alpha_grp_blu = grpNull};if (isNil"bravo_grp_blu") then {bravo_grp_blu = grpNull};if (isNil"charlie_grp_blu") then {charlie_grp_blu = grpNull};if (isNil"delta_grp_blu") then {delta_grp_blu = grpNull};
if (isNil"alpha_grp_op") then {alpha_grp_op = grpNull};if (isNil"bravo_grp_op") then {bravo_grp_op = grpNull};if (isNil"charlie_grp_op") then {charlie_grp_op = grpNull};if (isNil"delta_grp_op") then {delta_grp_op = grpNull};
if (isNil"alpha_grp_ind") then {alpha_grp_ind = grpNull};if (isNil"bravo_grp_ind") then {bravo_grpind = grpNull};if (isNil"charlie_grp_ind") then {charlie_grp_ind = grpNull};if (isNil"delta_grp_ind") then {delta_grp_ind = grpNull};

// =============================================================================
INIT_ai_hears_acre = {[] execVM (ENGINE_FUNC_PATH+"init_aiHearsACRE.sqf")};
// =============================================================================

// =============================================================================
INIT_scramble_radios = {[] execVM (ENGINE_FUNC_PATH+"init_scrambleRadios.sqf")};
// =============================================================================

// =============================================================================
INIT_load_mission_settings = compile preprocessFileLineNumbers (CUSTOM_FILES_PATH+"settings-module.sqf");
// =============================================================================

// =============================================================================
INIT_player = compile preprocessFileLineNumbers (CUSTOM_FILES_PATH+"player_init.sqf");
// =============================================================================

// =============================================================================
INIT_debug = compile preprocessfilelinenumbers (ENGINE_FUNC_PATH+"init_debug.sqf");
// =============================================================================

// =============================================================================
FNC_stamp_time = {[] execVM (ENGINE_FUNC_PATH+"fnc_stampTime.sqf")};
// =============================================================================

// =============================================================================
FNC_isJIP = compile preprocessFileLineNumbers (ENGINE_FUNC_PATH+"fnc_isJIP.sqf");
// =============================================================================

// =============================================================================
FNC_swap_spec = compile preprocessfilelinenumbers (ENGINE_FUNC_PATH+"fnc_swapSpectators.sqf");
// =============================================================================

// =============================================================================
FNC_taskmaster = compile preprocessfilelinenumbers (ENGINE_FUNC_PATH+"fnc_taskmaster.sqf");
// =============================================================================

// =============================================================================
FNC_check_task = compile preprocessfilelinenumbers (ENGINE_FUNC_PATH+"fnc_checkTask.sqf");
// =============================================================================

// =============================================================================
FNC_loading_screen = compile preprocessfilelinenumbers (ENGINE_FUNC_PATH+"loading.sqf");
// =============================================================================

// =============================================================================
FNC_process_color = compile preprocessfilelinenumbers (ENGINE_FUNC_PATH+"fnc_processColor.sqf");
// =============================================================================

// =============================================================================
FNC_remove_jip = compile preprocessfilelinenumbers (ENGINE_FUNC_PATH+"fnc_removeJIP.sqf");
// =============================================================================

// =============================================================================
FNC_sync_time = compile preprocessfilelinenumbers (ENGINE_FUNC_PATH+"fnc_syncTime.sqf");
// =============================================================================