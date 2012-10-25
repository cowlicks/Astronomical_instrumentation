$fn = 50;
module pipe(id, od, h) {
	difference() {
        cylinder(h=h, r=od);
        translate([0, 0, -.1]){
            cylinder(h=h, r=id);
        }
    }
}


translat([1, 1, 1]) pipe(5, 6, 3);
