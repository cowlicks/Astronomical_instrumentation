$fn = 50;
nominal = 2;
use <threads.scad>;
module drilled_block() {

difference(){
	// Main block to be subtracted from.
	scale(v = 25.4){
		color( [1,.5,1]) cube([2, 2.5, .98]);
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

	// Hole 3
	scale(v=25.4){
		translate([1.25, 2.5/2 + .25, -0.01]){
			// FIXME when I know what 'counter bore' and 'clearence hole' and '#8-3'2 are.
			cylinder(h=.76, r=.1);
		}
	}

	// Hole 4
	scale(v=25.4){
		translate([1.75, 2.5/2 - .25, -0.01]){
			// FIXME
			cylinder(h=3k, r=.1);
		}
	}

}
} // end module

drilled_block();