/// align_to_grid (val, alignTo)
var val = argument0;
var alignTo = argument1;
var diff = val mod alignTo; // retorna numero 0 - 7
var halfway = (alignTo - 1 ) div 2;

if (diff > halfway) {
	return alignTo - diff;
} else {
return -diff;
}