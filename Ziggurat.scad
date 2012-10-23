$fn = 100;		// Set rendering quality.
scale(v=25.4){	// scale from mm to inches.

cylinder(h=1.100, r=.5);
translate([0,0,1.1])		{
	cylinder(h=.9, r=.75/2);
	translate([0,0,.9])	{
		cylinder(h=1, r=.5/2);
		translate([0,0,1])	{
			cylinder(h=1, r=0.249/2);
		}
	}
}
}	// end scale