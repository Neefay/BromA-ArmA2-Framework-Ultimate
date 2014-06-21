/*
// =============================================================================

NAME:
Initializes the loadout script.

DESCRIPTION:
Initializes several functions used in the loadout scripts.

PARAMETERS:
None.

RETURNS:
Nothing.

EXAMPLE:
Include it in your missions by using
#include "mission\loadout\loadout_init.sqf"

AUTHOR: 
Nife and Royal.

// =============================================================================
*/
private ["_type", "_unit","_isLeader","_bandage","_morphine","_epi","_medkit","_wsmoke","_gsmoke","_rsmoke","_backpack","_addBinocs","_addRadio","_addAmmo","_addWeapon","_wep","_ammoamount"];

_type = _this select 0;
_unit = _this select 1;

_isMan = _unit isKindOf "Man";

// First we remove all the already existing items from the default units.

if (_isMan) then {
    removeallweapons _unit; 
    removeallitems _unit;
    clearMagazineCargo (unitBackpack _unit);
    removeBackpack _unit;
    _armyItems = [  "usm_dogtags","usm_militaryID","usm_bayonet_m7","usm_bayonet_m9","usm_fielddressing","usm_rifle_cleaning_kit","usm_mre",
                    "usm_earplugs","usm_flashlight","usm_etool","usm_gasmask_m17","usm_hygienekit","usm_sleepingbag","usm_socks","usm_lc2canteen_full"];				
    {_unit removeWeapon _x} forEach _armyItems;    
};  

// Medical and items stuff -----------------------------------------------------
_bandage = "ACE_LargeBandage";
_morphine = "ACE_MORPHINE";
_epi = "ACE_EPINEPHRINE";
_medkit = "ACE_Medkit";
_wsmoke = "SmokeShell";
_gsmoke = "SmokeShellGreen";
_rsmoke = "SmokeShellRed";
_chemIR = "ACE_Knicklicht_IR";

#include "weapon-list.sqf";

//             0               1            2 - SOFLAM          3
_optics = ["Binocular","Binocular_Vector","Laserdesignator","ACE_MX2A"];
//             0 Vector battery       1 SOFLAM battery
_battery = ["ACE_Battery_Rangefinder","Laserbatteries"];

// Some nifty functions to save time -------------------------------------------




// =============================================================================
//  DESCRIPTION: Adds optics and batteries when necessary.
//  PARAMETERS: *KIND* : Type of optics added.
//  EXAMPLE: ["vector"] call _addBinocs

_addBinocs = {
    _kind = _this select 0;
    if _isMan then {
        switch(_kind) do {
            case "binoc": { _unit addWeapon (_optics select 0)};
            case "vector": { _unit addWeapon (_optics select 1); _unit addMagazine (_battery select 0)};
            case "soflam": { _unit addWeapon (_optics select 2); _unit addMagazine (_battery select 1)};
        };
    } else {
        switch(_kind) do {
            case "binoc": { _unit addWeaponCargo (_optics select 0)};
            case "vector": { _unit addWeaponCargo (_optics select 1); _unit addMagazineCargo (_battery select 0)};
            case "soflam": { _unit addWeaponCargo (_optics select 2); _unit addMagazineCargo (_battery select 1)};
        };    
    };
};
// =============================================================================

// =============================================================================
//  DESCRIPTION: Adds basic medical supplies.
//  PARAMETERS: none.
//  EXAMPLE: [] call _addMedicBasics.

_addMedicBasics = {
    [_bandage,2] call _addAmmo;
    [_morphine,2] call _addAmmo;
    [_epi,2] call _addAmmo;
};
// =============================================================================

// =============================================================================
//  DESCRIPTION: Adds a radio to the object.
//  PARAMETERS: *KIND* : radio to be added.
//  EXAMPLE: [] call _addMedicBasics.

_addRadio = {
    _kind = _this select 0;
    if _isMan then {
        switch(_kind) do {
            case 343: { _unit addWeapon "ACRE_PRC343"};
            case 148: { _unit addWeapon "ACRE_PRC148"};
            case 117: { _unit removeWeapon _backpack; _unit addWeapon "ACRE_PRC117F"};
            case 119: { _unit removeWeapon _backpack; _unit addWeapon "ACRE_PRC119"};
        }; 
    } else {
        switch(_kind) do {
            case 343: { _unit addWeaponCargo "ACRE_PRC343"};
            case 148: { _unit addWeaponCargo "ACRE_PRC148"};
            case 117: { _unit addWeaponCargo "ACRE_PRC117F"};
            case 119: { _unit addWeaponCargo "ACRE_PRC119"};
        };    
    };
};
// =============================================================================


// =============================================================================
//  DESCRIPTION: Adds any magazine to the object.
//  PARAMETERS: *KIND* : Magazine to be added | *AMOUNT* : and how many.
//  EXAMPLE: [_AKM,5] call _addAmmo | ["30Rnd_556x45_Stanag",10] call _addAmmo

_addAmmo = {
    _kind = _this select 0;
    _amount = _this select 1;
    if _isMan then {
        if (typeName _kind == "ARRAY") then { for "_i" from 1 to _amount do { _unit addMagazine (_kind select 1); };
        } else { for "_i" from 1 to _amount do { _unit addMagazine _kind; }; };
    } else {
        if (typeName _kind == "ARRAY") then { _unit addMagazineCargo [(_kind select 1),_amount];
        } else { _unit addMagazineCargo [_kind,_amount] };
    };
};
// =============================================================================

// =============================================================================
//  DESCRIPTION: Adds any weapon to the object.
//  PARAMETERS: *KIND* : Magazine to be added | *AMOUNT* : and how many(if adding to cargo)
//  EXAMPLE: [_M16A2,5] call _addWeapon | ["M16A2",10] call _addWeapon
_addWeapon = {
    _kind = _this select 0;
    if _isMan then {    
        if (typeName _kind == "ARRAY") then { _unit addWeapon (_kind select 0); } 
        else { _unit addWeapon _kind; };
    } else {
        _amount = _this select 1;
        if (typeName _kind == "ARRAY") then { _unit addWeaponCargo [_kind select 0,_amount]; } 
        else { _unit addWeaponCargo [_kind,_amount] };
    };
};
// =============================================================================