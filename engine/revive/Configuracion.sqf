/***********************************************************************************************************************************/
/*************************************************Seccion de configuracion***********************************************************/
/***********************************************************************************************************************************/
//Disable IA wounding system for IA, seems to cause more desync.
ace_sys_wounds_noai = true;

//If true, spectator will be activated wile uncons, if false you will see a black screen while uncons.
ace_sys_wounds_withSpect = false;

//Stops this fucktard script from cluttering everyone with med supplies
ace_sys_wounds_no_medical_gear = true;

//Show team kill mesages
Colum_revive_TKcheck = true;

//Show enemy units when you are totally death, true= show all, false = only your side.
Colum_revive_VerEnemigos = true;

//Pvp enabled, markers and uncons mesages only will be seen by your teammates
Colum_revive_PvP = false;

//Heaiyly wound and enemy player would give the attacker +1 score, and -1 if he wound and ally. This is intented to be used on PvP games to have a better stat tracking, because without this feature enabled, you will only be credited when you kill a player that had no lifes left.
Colum_revive_WoundScoring = true;

//Medic rucksack. "" for disabled any other rucksack classname to enable
Colum_revive_MochilaMedico = "";

//Contents for the rucksack
// the contents are: [nº compress, nº morphine, nº ephinifrine, nº green smoke grenades]
Colum_revive_MochilaMedico_Contenido = [10,20,15,2,12];

//Uncoment(remove the // afther the line) any line bellow to enable specific side backpack or contents.
//Colum_revive_MochilaMedico_WEST = "ACE_VTAC_RUSH72_TT_MEDIC";
//Colum_revive_MochilaMedico_EAST = "ACE_VTAC_RUSH72_TT_MEDIC";
//Colum_revive_MochilaMedico_GUER = "ACE_VTAC_RUSH72_TT_MEDIC";
//Colum_revive_MochilaMedico_CIV = "ACE_VTAC_RUSH72_TT_MEDIC";


//Colum_revive_MochilaMedico_Contenido_WEST =[10,20,15,2,10];
//Colum_revive_MochilaMedico_Contenido_EAST = [10,20,15,2,10];
//Colum_revive_MochilaMedico_Contenido_GUER = [10,20,15,2,10];
//Colum_revive_MochilaMedico_Contenido_CIV =[10,20,15,2,10];

//Jip players wil have an option to teleport to his squadmates when conected. True = allow, False = not allow
Colum_revive_JIPTelep = true;

//The gear, heal status and position are stored on player disconnect and restored on conect. =true Enabled = false disabled. KNOWN ISUE: backpack contents and weapon on back are not saved because are local to the client :(.( that excludes the medical gear of the backpack that its added again for medics).
//NOTE: this feature is stil experimental, but should work
Colum_revive_DisconectSave = true;

//Side respawns . false= everybody has the same respawn. true= each side has his own respawn points
Colum_revive_Respawn_Side = true;

//Side lifes . false=everybody has the same number of lifes. true= each side has his own number of lifes
Colum_revive_Vidas_Side = false;

//Death map Markers, false= no markers, true= wounded units would be shown on the map.
Colum_revive_Death_Markers = false;

//Death Messages . false=no mesages. true= a mesage will be shown when someone falls uncons.
Colum_revive_Death_Messages = false;

//death people leave group . Recomended true, only false if you use a stupid script that uses the leader unit to get the group in the middle of the game.
Colum_revive_Death_LeaveGroup = true;

//Minimun damage left after been healed with the medkit.  0 disabled. Values recomended 0.01-0.08
ace_sys_wounds_leftdam = 0;

//On medic revive make full heal( so you don't need to use medkit after revive, only for normal healing). True enabled, false (Default) disabled
Colum_revive_Levanta_Heal = false;

//Penalice Respawn button with Death. If true, if you press the respawn button you are out of the game, if false, you will only lose a life
Colum_revive_RespawnButtonPunish = false;

//If server fails to send the number of lifes,  set it to 0. If set to false, if fails, you will get all the lifes
Colum_revive_KillOnConnectFail = true;

//If the player disconects while unconscious or heavy wounded, he will lose one life. This may avoid some posible exploits.= true enabled, =false disabled.
Colum_revive_DisconectPunish = true;

//This parameter determines wath to do if someone dies in the water, the posible options are:
//0 : Do nothing . if deep water, it will be no chance to save him, escept if there is respawn :P, if not, you may be able to drag out of the water
//1 : Direct death ( lifes=0 if respawn not enabled, and -1 life if respawn enabled) if the player dies and sinks in deep water
//2 : The dead player floats over the water, there is 2 ways to save him. Go with a vehicle really close to him and he will get onboard automaticaly, also you can swing to him to grab him and carry him to the coast.
//3 : The player is moved to the nearest coast, using norrin script.
Colum_revive_WaterAction = 3;

//life persistance:
//-1 : always persistent. Lifes will only be reseted on mision restart or using Colum_Revive_Funcion_Reset_Data function(default)
//0 : non persistan lifes, players that JIP will have the max number of lifes
//>1 :The lifes of the players will be reseted after some amount of time(seconds). For example if you set it to (30*60) a player that runs out of lifes when 30 mins have passed after his death, if he reconnects he will have max lifes
Colum_revive_LifesPersist = -1;

//Been inside or near medical vehicles/structures grants extra time to the revive counter
colum_revive_medicalExtraTime = true;

// Fixes some errors that may end you stuck on spectator. Added as an option because its hardcoded nature can cause troubles in future  ACE spectator script changes
Colum_spect_workaround = true;


if (Colum_revive_Respawn) then {
//Text of the respawn buttons, a text must be defined for each respawn point. There is no limit for the number of respawn points.
	Colum_revive_RespawnButton_text = ["respawn1", "respawn2", "respawn3", "respawn4"];
	//other example : Colum_revive_RespawnButton_text = ["respawn1", "respawn2"]; 
//Name of the markers for the respawn( could be diferent from the button text, used the same just for this example)
//NOTE: you can easy create a movile respawn by creating a marker and updating its position
	Colum_revive_RespawnMarkers = ["respawn1", "respawn2", "respawn3", "respawn4"];
//offset for the respawn point. Usefull for example to define respawn inside buildings or in the carrier.
	Colum_revive_RespawnOffset= [0,0,0,0];
	
//Time to appear the respawn buttons when you are wounded, in seconds
	ace_sys_spectator_RevShowButtonTime = 2;
	
	if (Colum_revive_Respawn_Side) then {
		// Side respawns if you use Colum_revive_Respawn_Side and you comment the respawn buttons markers and offsets( by placing // before them) of a side, that side will have respawn disabled. 
		//So that way you can enable respawn only to one side
		//Bluefor
		Colum_revive_RevButtons_WEST = ["respawn_west", "respawn2_WEST", "respawn3_WEST", "respawn4_WEST"];
		Colum_revive_RespawnMarkers_WEST= ["respawn_west", "respawn2_WEST", "respawn3_WEST", "respawn4_WEST"];
		Colum_revive_RespawnOffset_WEST=[0,0,0,0];
		
		//oppfor
		Colum_revive_RevButtons_EAST = ["respawn_east", "respawn2_EAST", "respawn3_EAST", "respawn4_EAST"];
		Colum_revive_RespawnMarkers_EAST= ["respawn_east", "respawn2_EAST", "respawn3_EAST", "respawn4_EAST"];
		Colum_revive_RespawnOffset_EAST=[0,0,0,0];
		
		//Independ
		Colum_revive_RevButtons_GUER = ["respawn_resistance", "respawn2_GUER", "respawn3_GUER", "respawn4_GUER"];
		Colum_revive_RespawnMarkers_GUER= ["respawn_resistance", "respawn2_GUER", "respawn3_GUER", "respawn4_GUER"];
		Colum_revive_RespawnOffset_GUER=[0,0,0,0];
			
		//Civil
		Colum_revive_RevButtons_CIV = ["respawn_civilian", "respawn2_CIV", "respawn3_CIV", "respawn4_CIV"];
		Colum_revive_RespawnMarkers_CIV= ["respawn_civilian", "respawn2_CIV", "respawn3_CIV", "respawn4_CIV"];
		Colum_revive_RespawnOffset_CIV=[0,0,0,0];
		
	};
};

if (Colum_revive_Vidas_Side) then {
// life number if Colum_revive_Vidas_Side= true;
	//lifes for bluefor team / west side
	Colum_revive_VidasMax_WEST = 2;
	
	//lifes for opfor team / east side
	Colum_revive_VidasMax_EAST = 3;
	
	//lifes for indepen team / guer side
	Colum_revive_VidasMax_GUER = 4;
	
	//lifes for civilian team / CIV side
	Colum_revive_VidasMax_CIV = 10;
};



/***********************************************************************************************************************************/
/****************************************************FIN configuracion**************************************************************/
/***********************************************************************************************************************************/