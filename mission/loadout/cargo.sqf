/*

NAME:
Cargo loadout script.

DESCRIPTION:
Adds certain equipment to a vehicle's cargo.

PARAMETERS:

    *TYPE* : The kind of loadout assigned - add and modify below.
    *UNIT* : Unit to be assigned - usually just "this".
    *SIDE* : Side of the unit - east, west, resistance.

RETURNS:
Nothing.

EXAMPLE:

id = ["ammo",this,west] execVM "mission\loadout\cargo.sqf";

AUTHOR: 
Royal and Nife.

*/

#include "loadout_init.sqf";
private ["_object","_type"];
_object = _unit; _type = _this select 0; _side = _this select 2;

// =============================================================================
clearMagazineCargo _object;
clearWeaponCargo _object;

_object addMagazineCargo ["ACE_Rope_TOW_M_5",1];
// =============================================================================

// =============================================================================
// BLUFOR GEAR
_westrifle = _M16A2;
_westMG = _M249;
_westcommonAT = _AT4;
_westAT = _SMAW;
// =============================================================================

// =============================================================================
// OPFOR GEAR
_eastrifle = _AK103;
_eastMG = _RPK74M;
_eastcommonAT = _RPG18;
_eastAT = _RPG7PGO;
// =============================================================================

// =============================================================================
// INDEPENDENT GEAR
_indrifle = _AKS74;
_indMG = _M60A4;
_indcommonAT = _RPG18;
_indAT = _RPG7;
// =============================================================================

switch (_side) do
{
// =============================================================================
//                           BLUFOR CARGO LOADOUT
// =============================================================================    
	case west:
	{
		switch(_type) do
		{
			case "ammo":
			{
				[_westrifle,10] call _addAmmo;
                                [_westMG,5] call _addAmmo;
				[_grenadeWest,5] call _addAmmo;
                                [_wsmoke, 5] call _addAmmo;
                                [_gsmoke, 5] call _addAmmo;
                                [_rsmoke, 5] call _addAmmo;
                                [_morphine,3] call _addAmmo;
                                [_bandage,3] call _addAmmo;
                                [_epi,3] call _addAmmo;
                                [_medkit,2] call _addAmmo;
				[_westrifle, 3] call _addWeapon;
				[_westcommonAT, 3] call _addWeapon;
			};
                        
			case "ammo_big":
			{
				[_westrifle,25] call _addAmmo;
                                [_westMG,20] call _addAmmo;
				[_grenadeWest,10] call _addAmmo;
                                [_wsmoke, 15] call _addAmmo;
                                [_gsmoke, 15] call _addAmmo;
                                [_rsmoke, 15] call _addAmmo;
                                [_morphine,10] call _addAmmo;
                                [_bandage,10] call _addAmmo;
                                [_epi,10] call _addAmmo;
                                [_medkit,10] call _addAmmo;
				[_westrifle, 5] call _addWeapon;
				[_westcommonAT, 5] call _addWeapon;
			};                        
			
			case "medical":
			{
                                [_morphine,20] call _addAmmo;
                                [_bandage,30] call _addAmmo;
                                [_epi,20] call _addAmmo;
                                [_medkit,15] call _addAmmo;   
                                ["ACE_Stretcher",2] call _addWeapon;
			};
			
			case "at":
			{				
				[_westcommonAT, 5] call _addWeapon;
                                [_westAT,2] call _addAmmo;
			};
		};
	};       

// =============================================================================
//                           OPFOR CARGO LOADOUT
// =============================================================================    
	case east:
	{
		switch(_type) do
		{
			case "ammo":
			{
				[_easttrifle,10] call _addAmmo;
                                [_eastMG,5] call _addAmmo;
				[_grenadeEast,5] call _addAmmo;
                                [_wsmoke, 5] call _addAmmo;
                                [_gsmoke, 5] call _addAmmo;
                                [_rsmoke, 5] call _addAmmo;
                                [_morphine,3] call _addAmmo;
                                [_bandage,3] call _addAmmo;
                                [_epi,3] call _addAmmo;
                                [_medkit,2] call _addAmmo;
				[_eastrifle, 3] call _addWeapon;
				[_eastcommonAT, 3] call _addWeapon;
			};
                        
			case "ammo_big":
			{
				[_eastrifle,25] call _addAmmo;
                                [_eastMG,20] call _addAmmo;
				[_grenadeEast,10] call _addAmmo;
                                [_wsmoke, 15] call _addAmmo;
                                [_gsmoke, 15] call _addAmmo;
                                [_rsmoke, 15] call _addAmmo;
                                [_morphine,10] call _addAmmo;
                                [_bandage,10] call _addAmmo;
                                [_epi,10] call _addAmmo;
                                [_medkit,10] call _addAmmo;
				[_eastrifle, 5] call _addWeapon;
				[_eastcommonAT, 5] call _addWeapon;
			};                        
			
			case "medical":
			{
                                [_morphine,20] call _addAmmo;
                                [_bandage,30] call _addAmmo;
                                [_epi,20] call _addAmmo;
                                [_medkit,15] call _addAmmo;   
                                ["ACE_Stretcher",2] call _addWeapon;
			};
			
			case "at":
			{				
				[_eastcommonAT, 5] call _addWeapon;
                                [_eastAT,2] call _addAmmo;
			};
		};
	};
	
// =============================================================================
//                       INDEPENDENT CARGO LOADOUT
// =============================================================================        
	case resistance:
	{
		switch(_type) do
		{
			case "ammo":
			{
				[_indrifle,10] call _addAmmo;
                                [_indMG,5] call _addAmmo;
				[_grenadeWest,5] call _addAmmo;
                                [_wsmoke, 5] call _addAmmo;
                                [_gsmoke, 5] call _addAmmo;
                                [_rsmoke, 5] call _addAmmo;
                                [_morphine,3] call _addAmmo;
                                [_bandage,3] call _addAmmo;
                                [_epi,3] call _addAmmo;
                                [_medkit,2] call _addAmmo;
				[_indrifle, 3] call _addWeapon;
				[_indcommonAT, 3] call _addWeapon;
			};
                        
			case "ammo_big":
			{
				[_indrifle,25] call _addAmmo;
                                [_indMG,20] call _addAmmo;
				[_grenadeWest,10] call _addAmmo;
                                [_wsmoke, 15] call _addAmmo;
                                [_gsmoke, 15] call _addAmmo;
                                [_rsmoke, 15] call _addAmmo;
                                [_morphine,10] call _addAmmo;
                                [_bandage,10] call _addAmmo;
                                [_epi,10] call _addAmmo;
                                [_medkit,10] call _addAmmo;
				[_indrifle, 5] call _addWeapon;
				[_indcommonAT, 5] call _addWeapon;
			};                        
			
			case "medical":
			{
                                [_morphine,20] call _addAmmo;
                                [_bandage,30] call _addAmmo;
                                [_epi,20] call _addAmmo;
                                [_medkit,15] call _addAmmo;   
                                ["ACE_Stretcher",2] call _addWeapon;
			};
			
			case "at":
			{				
				[_indcommonAT, 5] call _addWeapon;
                                [_indAT,2] call _addAmmo;
			};
		};
	};
};