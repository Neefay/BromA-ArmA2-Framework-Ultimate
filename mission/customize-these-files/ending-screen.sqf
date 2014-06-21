if (isServer) then {    
    [-1, {
    msg1 = format [
// =============================================================================    
    
// =============================================================================        
"<t size='1.0' color='%3'>%1</t><br/><t size='0.8' color='#FFFFFF'>- %2 -</t>"
// =============================================================================    
    ,victoryReason2,margin,color];    
// =============================================================================
    [msg1,-1,-1,10,1] spawn BIS_fnc_dynamicText;
    sleep 10;
    titleText [format [        
// =============================================================================
//                            Ending message:                                  |
//   Note: the "\n\n" symbols are used to break the message into a new line,   |
//              and the "+" are used to concatenate them.                      | 
// =============================================================================

                    "=======  MISSION OVER  =======" + "\n\n"
    +                         "%1" + "\n\n"                                   // The victory reason.
    +                         "%2" + "\n\n"                                   // The margin.
    + "%3 casualties: " + "%4" + "  ||  " + "%5 casualties: " + "%6" + "\n\n" // Here we take the each side name and the number of casualties
    +            "TIME PLAYED: " + "%7h %8m %9s" + "\n\n"                     // Now we show the time played with the hours, minutes and seconds
    +                 "===========================",
    
// =============================================================================    
//              Variables being used:
// Note: If you want to add more variables to be used, remember that after declaring
// it below, it'll become %x, x being the current number of variables +1.

//       %1           %2            %3             %4                 %5                %6          %7     %8        %9
    victoryReason2, margin,playerFactionName, pointsEnemySide, enemyFactionName, pointsPlayerSide, hours, minutes, seconds], 
// =============================================================================    
    "BLACK"]}] call CBA_fnc_globalExecute; // Now we call the ending globally    
};