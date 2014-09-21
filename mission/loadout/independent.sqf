/*

Modular Gear Script made by Nife and Royal.

*/
#include "loadout_init.sqf";

// =============================================================================
// Declares the weapons for the positions of the teams.
// remember that you can add more weapons in the "weapons-list.sqf" file

_commonrifle = _AKS74;
_commonrifleGL = _AK74GL;
_commonrifleRCOGL = _AK74GLK;
_commonmg = _M60A4;
_commonmarksman = _AK74K;
_specmarksman = _AKS74PSO;
_commonAT = _RPG18;
_specAT = _RPG7;
_commonsniper = _SVD;
_commonsmg = _AK74U;

_backpack = "ACE_Coyote_Pack";

// =============================================================================
// Adds essential items.

_unit addWeapon "ItemMap";
_unit addWeapon "ItemGPS";
_unit addWeapon "ItemCompass";
_unit addWeapon "ItemWatch";
_unit addWeapon "ACE_Earplugs";
[343] call _addRadio;
_unit addWeapon _backpack;
_unitBackWeapon = [_unit, _backpack] call ACE_fnc_PutWeaponOnBack;

_unit addWeapon "NVGoggles";
// =============================================================================

// Now we start checking for the class names and giving them their loadout accordingly.
switch (_type) do
{
// =============================================================================
//                          COMMANDING OFFICER                    
// =============================================================================        
        case "CO":
        {
            [_specmarksman,3] call _addAmmo;
            [_specmarksman] call _addWeapon;
            [_wsmoke,2] call _addAmmo;
            ["soflam"] call _addBinocs;
            [117] call _addRadio;
            [148] call _addRadio;
            _unit setVariable ["ACE_RuckMagContents",[[_chemIR,1],
                                                     [_bandage,2],
                                                     [_morphine,2],[_epi,2],[_gsmoke,3]]];
        };

// =============================================================================
//                              SQUAD LEADER                   
// ============================================================================= 
        case "SL":
        {
            [_specmarksman,9] call _addAmmo;
            [_specmarksman] call _addWeapon;
            [_wsmoke,2] call _addAmmo;
            ["vector"] call _addBinocs;
            [117] call _addRadio;
            [148] call _addRadio;
            _ammoamount = 0;
            [] call _addMedicBasics;
            _unit setVariable ["ACE_RuckMagContents",[[_chemIR,1],
                                                     [_bandage,2],[(_specmarksman select 1),_ammoamount],
                                                     [_morphine,2],[_epi,2],[_gsmoke,3]]];
        };
        
// =============================================================================
//                            FIRE-TEAM LEADER
// =============================================================================         
        case "FTL":
        {
            [_commonrifle,9] call _addAmmo;
            [(_commonrifleGL select 2), 8] call _addAmmo;
            [_commonrifleGL] call _addWeapon;
            [_wsmoke,2] call _addAmmo;
            [_commonAT] call _addWeapon;            
            ["vector"] call _addBinocs;
            [148] call _addRadio;
            _ammoamount = 5;
            _unit setVariable ["ACE_RuckMagContents",[[_chemIR,1],
                                                     [_bandage,2],[(_commonrifle select 1),_ammoamount],[(_commonrifleGL select 2),4],
                                                     [_morphine,2],[_epi,2]]];
        };              
        
// =============================================================================
//                                RIFLEMAN
// =============================================================================         
        case "rifleman":
        {
            [_commonrifle,9] call _addAmmo;
            [_commonrifle] call _addWeapon;
            [_wsmoke,3] call _addAmmo;
            [_commonAT] call _addWeapon;
            [] call _addMedicBasics;
            _unit setVariable ["ACE_RuckMagContents",[[_chemIR,1],
                                                     [(_commonrifle select 1),10],[_bandage,2],
                                                     [_morphine,2],[_epi,2]]];
        };
        
// =============================================================================
//                               JTAC / FAC
// =============================================================================         
        case "JTAC":
        {
            [_commonrifle,6] call _addAmmo;
            [_commonrifle] call _addWeapon;
            [_wsmoke,2] call _addAmmo;
            ["soflam"] call _addBinocs;
            [117] call _addRadio;
            [148] call _addRadio;
            _unit setVariable ["ACE_RuckMagContents",[[_chemIR,1],
                                                     [(_commonrifle select 1),3],[_bandage,2],
                                                     [_morphine,2],[_epi,2]]];
        };         
      
// =============================================================================
//                                MARKSMAN        
// =============================================================================       
        case "marksman":
        {
            [_commonmarksman,9] call _addAmmo;
            [_commonmarksman] call _addWeapon;
            [_wsmoke,3] call _addAmmo;
            [] call _addMedicBasics;
            _unit setVariable ["ACE_RuckMagContents",[[_chemIR,1],[(_commonmarksman select 2),5],
                                                     [(_commonmarksman select 1),10],[_bandage,2],
                                                     [_morphine,2],[_epi,2]]];
        };              
        
// =============================================================================
//                              MACHINEGUNNER      
// =============================================================================         
        case "MG":
        {
            [_commonmg,3] call _addAmmo;
            [_commonmg] call _addWeapon;
            [_wsmoke,3] call _addAmmo;
            _unit setVariable ["ACE_RuckMagContents",[[_chemIR,1],
                                                     [(_commonmg select 1),3],[_bandage,2],
                                                     [_morphine,2],[_epi,2]]];
        };                  
        
// =============================================================================
//                                ANTI-TANK
// =============================================================================         
        case "AT":
        {
            [_commonrifle,6] call _addAmmo;
            [_commonrifle] call _addWeapon;
            [_specAT,2] call _addAmmo;
            [_specAT] call _addWeapon;
            [] call _addMedicBasics;
            _unit setVariable ["ACE_RuckMagContents",[[_chemIR,1],
                                                     [(_commonrifle select 1),3],
                                                     [(_specAT select 1),1],[(_specAT select 2),1]]];
        }; 
        
// =============================================================================
//                                 MEDIC
// =============================================================================         
        case "medic":
        {
            [_commonrifle,9] call _addAmmo;
            [_commonrifle] call _addWeapon;
            [_gsmoke,3] call _addAmmo;	
            [] call _addMedicBasics;
            _unit setVariable ["ACE_RuckMagContents",[[_chemIR,1],
                                                     [_gsmoke,5],[_bandage,10],
                                                     [_morphine,10],[_epi,10],
                                                     [_medkit,10]]];
        };

// =============================================================================
//                                  SNIPER
// ============================================================================= 
        case "sniper":
        {
            if (_isLeader) then {                
                ["vector"] call _addBinocs;
                [117] call _addRadio; 
                _ammoamount = 0;
            } else {
                ["soflam"] call _addBinocs;                                
                _ammoamount = 5;
            };
            _wep = _commonsniper;
            [_wep,9] call _addAmmo;
            [_wep] call _addWeapon; 
            [_wsmoke,2] call _addAmmo;
            [148] call _addRadio;
            [] call _addMedicBasics;
            _unit setVariable ["ACE_RuckMagContents",[[_bandage,2],[_morphine,2],
                                                     [_epi,2],[_chemIR,1],
                                                     [(_wep select 1),_ammoamount],[_rsmoke,3]]];
        };

// =============================================================================
//                          DEMOLITIONS SPECIALIST
// ============================================================================= 
        case "demo":
        {
            [_commonrifle,9] call _addAmmo;
            [_commonrifle] call _addWeapon;
            [_wsmoke,3] call _addAmmo;
            [] call _addMedicBasics;
            _unit setVariable ["ACE_RuckMagContents",[[_chemIR,1],
                                                     ["PipeBomb",3]]];
        };
        
        
// =============================================================================
//                           CREW COMMANDER
// ============================================================================= 		
        case "crew_c":
        {
            [_commonsmg,9] call _addAmmo;
            [_commonsmg] call _addWeapon;
            [_wsmoke,3] call _addAmmo;
            [148] call _addRadio;
            [] call _addMedicBasics;
        };

        case "crew":
        {
            [_commonsmg,9] call _addAmmo;
            [_commonsmg] call _addWeapon;
            [_wsmoke,3] call _addAmmo;
            [] call _addMedicBasics;
        };	
};