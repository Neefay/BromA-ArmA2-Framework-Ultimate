/*
// =============================================================================

NAME:
Process color

DESCRIPTION:
Takes the color value and translates it according from pre-established hex codes.

PARAMETERS:
None.

RETURNS:
Nothing.

EXAMPLE:
[] call fnc_process_color;

AUTHOR: 
Nife

// =============================================================================
*/

switch (color) do {
    case "green": { color = "#006600"; };
    case "red": { color = "#e00d0d" };
    case "blue": { color = "#0060ff" };
    case "yellow": { color = "#ffd800" };    
    case "white": { color = "#FFFFFF" };
    case "black": { color = "#000000" };
};
publicVariable "color";