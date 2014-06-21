/*











                      Welcome to the BromA Framework.
                      
             In order to get started, open the folder named
                      "[mission\customize_these_files]",
          start editing the files inside, and you're pretty much set!
                      
         That means you're completely free to ignore the rest of this.         











*/

// Wait until players load the game.
startTime = diag_tickTime;
if (not isDedicated) then { waitUntil { not isNull player }};

// =============================================================================
//        Initalizes the framework engine with the essential scripts           |
//                                                                             |
//                         DO NOT DISABLE THIS!                                |
// =============================================================================
               _initHandle = [] execVM "engine\engine-init.sqf";
                     waitUntil{scriptDone(_initHandle)};
// =============================================================================
//        Some basic scripts that are run for both new players and JIP         |
// =============================================================================              
                            [] call INIT_player;

//==============================================================================
//       Everything below this point will run after the mission begins.        |
//                                                                             |
                               sleep 0.1;
//                           v      v      v                                   |
//==============================================================================

//==============================================================================
//             BromA - Server saves the current game time                      |
//==============================================================================
                          [] call FNC_stamp_time;

//==============================================================================
//             BromA - Simple loading screen to avoid people                   |
//                    moving around and generating desync                      |
//==============================================================================
                        [] call FNC_loading_screen;

//==============================================================================
// PLAYERS WHO HAVE A PISTOL CAN KILL THEMSELVES, WHY THE FUCK NOT?
waitUntil {!isNil "CBA_ui_fnc_add"};
[ "player", [ace_sys_interaction_key_self], -100, [OPTIONAL_PATH+"suicide_script\killyoureself.sqf", "main"] ] call CBA_ui_fnc_add;
//==============================================================================