$fn = 50;
nominal = 2;
use <threads.scad>;
module drilled_block() {

difference(){
	// Main block to be subtracted from.
	scale(v = 25.4){
		color( [1,1,1]) cube([2, 2.5, .98]);
	}

	// Hole 1
	scale(v = 25.4){
		// Subtractions.
		translate([.25, 2.5/2, -0.01])	{
			cylinder(h=.76 , r=.1);
		}
	}
	// Hole 2
	translate([25.4*.75, 25.4*2.5/2, -25.4*0.01])	{
		english_thread_tap(.25, 20, .75);
	} 
	
	
}
} // end module

drilled_block();