include <arc.scad>

material_thickness=3;
plate_y_size = 214;
plate_x_size = 322;
corner_radius = 4;

key_hole_diameter=15.6;
fn_hole_diameter=11.7;
fingerprint_diameter = 20;
//oval_key_diameter_x = key_hole_diameter;
//oval_key_diameter_y = fn_hole_diameter;
//backspace_key_diameter_x = 30;

row1_y_offset = -8;
row2_y_offset = -25;
row3_y_offset = -42.5;
row4_y_offset = -61.5;
row5_y_offset = -80.5;
row6_y_offset = -99.5;
row7_y_offset = -119;
row8_y_offset = -141;
motion_y_offset = -123.5;
trackpad_y_offset = -154;
fingerprint_y_offset = -161;

row1_power_switch_offset=257;

row2_esc_offset = 31;
row2_f1_offset = 50;
row2_pitch = 15;
row2_f5_offset = row2_f1_offset + 64;
row2_f9_offset = row2_f5_offset + 64;
row2_home_offset = row2_f9_offset + 64;
row2_delete_offset = row2_home_offset + 45;

row3_key_offset = 28.5;
row3_key_pitch = 19;
row3_key_count = 13;
row3_backspace_pitch = 30;

row4_tab_offset = 27.5;
row4_key_offset = 57;
row4_key_pitch = 19;
row4_key_count = 12;
row4_backslash_pitch = 24;

row5_caps_offset = 35;
row5_key_offset = 61;
row5_key_pitch = 19;
row5_key_count = 11;
row5_enter_pitch = 30;

row6_lshift_offset = 40;
row6_key_offset = 71;
row6_key_pitch = 19;
row6_key_count = 10;
row6_rshift1_pitch = 23;
row6_rshift2_pitch = 43;

row7_fn_offset = 27.5;
row7_ctrl1_offset = 49;
row7_meta_offset = 71;
row7_alt1_offset = 89.5;
row7_space2_offset = 146.5;
row7_space1_offset = row7_space2_offset-35;
row7_space3_offset = row7_space2_offset+35;
row7_alt2_offset = 204;
row7_prtsc_offset = 223;
row7_ctrl2_offset = 242;

row8_centremouse_offset = 146.5;
row8_leftmouse_offset = row8_centremouse_offset-20;
row8_rightmouse_offset = row8_centremouse_offset+20;

motion_x_offset = 278;
motion_x_spacing = 19;
motion_y_upper = 7;
motion_y_lower = 10;

trackpad_loffset = 98;
trackpad_roffset = 196;

fingerprint_offset = 223;

$fn=36;

module row1() {
    translate([row1_power_switch_offset,0]) circle(d=key_hole_diameter, $fn=36);
    translate([row1_power_switch_offset-key_hole_diameter/2-corner_radius-1.75, key_hole_diameter/2-corner_radius-1.75]) rotate([0,0,45]) arc(corner_radius+2, 0.5, 90);
    translate([row1_power_switch_offset+key_hole_diameter/2+corner_radius+1.75, key_hole_diameter/2-corner_radius-1.75]) rotate([0,0,135]) arc(corner_radius+2, 0.5, 90);}

module function_keys(count) {
    for(ix =[0:count-1]) {
        translate([ix*row2_pitch,0]) circle(d=fn_hole_diameter, $fn=36);
    }
}

module row2() {
    translate([row2_esc_offset,0]) circle(d=fn_hole_diameter, $fn=36);
    
    translate([row2_f1_offset,0]) function_keys(4);
    translate([row2_f5_offset,0]) function_keys(4);
    translate([row2_f9_offset,0]) function_keys(4);
    translate([row2_home_offset,0]) function_keys(3);
    translate([row2_delete_offset,0]) function_keys(1);
}

module row3() {
    for(ix = [0:row3_key_count-1]) {
        translate([row3_key_offset+ix*row3_key_pitch,0]) circle(d=key_hole_diameter, $fn=36);
    }
    translate([row3_key_offset+(row3_key_count-1)*row3_key_pitch+row3_backspace_pitch,0]) circle(d=key_hole_diameter, $fn=36);
}

module row4() {
    translate([row4_tab_offset,0]) circle(d=key_hole_diameter, $fn=36);
    for(ix = [0:row4_key_count-1]) {
        translate([row4_key_offset+ix*row4_key_pitch,0]) circle(d=key_hole_diameter, $fn=36);
    }
    translate([row4_key_offset+(row4_key_count-1)*row4_key_pitch+row4_backslash_pitch,0]) circle(d=key_hole_diameter, $fn=36);
}

module row5() {
    translate([row5_caps_offset,0]) circle(d=key_hole_diameter, $fn=36);
    for(ix = [0:row5_key_count-1]) {
        translate([row5_key_offset+ix*row5_key_pitch,0]) circle(d=key_hole_diameter, $fn=36);
    }
    translate([row5_key_offset+(row5_key_count-1)*row5_key_pitch+row5_enter_pitch,0]) circle(d=key_hole_diameter, $fn=36);
}

module row6() {
    translate([row6_lshift_offset,0]) circle(d=key_hole_diameter, $fn=36);
    for(ix = [0:row6_key_count-1]) {
        translate([row6_key_offset+ix*row6_key_pitch,0]) circle(d=key_hole_diameter, $fn=36);
    }
    translate([row6_key_offset+(row6_key_count-1)*row6_key_pitch+row6_rshift1_pitch,0]) circle(d=key_hole_diameter, $fn=36);
    translate([row6_key_offset+(row6_key_count-1)*row6_key_pitch+row6_rshift2_pitch,0]) circle(d=key_hole_diameter, $fn=36);
}

module row7() {
    translate([row7_fn_offset,0]) circle(d=key_hole_diameter, $fn=36);
    translate([row7_ctrl1_offset,0]) circle(d=key_hole_diameter, $fn=36);
    translate([row7_meta_offset,0]) circle(d=key_hole_diameter, $fn=36);
    translate([row7_alt1_offset,0]) circle(d=key_hole_diameter, $fn=36);
    translate([row7_space1_offset,0]) circle(d=key_hole_diameter, $fn=36);
    translate([row7_space2_offset,0]) circle(d=key_hole_diameter, $fn=36);
    translate([row7_space3_offset,0]) circle(d=key_hole_diameter, $fn=36);
    translate([row7_alt2_offset,0]) circle(d=key_hole_diameter, $fn=36);
    translate([row7_prtsc_offset,0]) circle(d=key_hole_diameter, $fn=36);
    translate([row7_ctrl2_offset,0]) circle(d=key_hole_diameter, $fn=36);
}

module row8() {
    translate([row8_leftmouse_offset,0]) circle(d=key_hole_diameter, $fn=36);
    translate([row8_centremouse_offset,0]) circle(d=key_hole_diameter, $fn=36);
    translate([row8_rightmouse_offset,0]) circle(d=key_hole_diameter, $fn=36);
}

module motion() {
    // up arrow
    translate([0, +motion_y_upper]) circle(d=key_hole_diameter, $fn=36);
    // pgup
    translate([-motion_x_spacing, +motion_y_upper]) circle(d=fn_hole_diameter, $fn=36);
    // pgdn
    translate([+motion_x_spacing, +motion_y_upper]) circle(d=fn_hole_diameter, $fn=36);
    // down arrow
    translate([0, -motion_y_lower]) circle(d=key_hole_diameter, $fn=36);
    // left arrow
    translate([-motion_x_spacing, -motion_y_lower]) circle(d=key_hole_diameter, $fn=36);
    // right arrow
    translate([+motion_x_spacing, -motion_y_lower]) circle(d=key_hole_diameter, $fn=36);
}

difference() {
    union() {
        hull() {
            translate([+corner_radius, -corner_radius]) circle(r=corner_radius, $fn=24);
            translate([plate_x_size-corner_radius, trackpad_y_offset]) circle(r=corner_radius, $fn=24);
            translate([plate_x_size-corner_radius, -corner_radius]) circle(r=corner_radius, $fn=24);
            translate([+corner_radius, trackpad_y_offset]) circle(r=corner_radius, $fn=24);
        }
        hull() {
            translate([+corner_radius, trackpad_y_offset+corner_radius]) circle(r=corner_radius, $fn=24);
            translate([trackpad_loffset-corner_radius, trackpad_y_offset+corner_radius]) circle(r=corner_radius, $fn=24);
            translate([+corner_radius, -plate_y_size+corner_radius]) circle(r=corner_radius, $fn=24);
            translate([trackpad_loffset-corner_radius, -plate_y_size+corner_radius]) circle(r=corner_radius, $fn=24);
        }
        hull() {
            translate([trackpad_roffset+corner_radius, trackpad_y_offset+corner_radius]) circle(r=corner_radius, $fn=24);
            translate([trackpad_roffset+corner_radius, -plate_y_size+corner_radius]) circle(r=corner_radius, $fn=24);
            translate([plate_x_size-corner_radius, trackpad_y_offset+corner_radius]) circle(r=corner_radius, $fn=24);
            translate([plate_x_size-corner_radius, -plate_y_size+corner_radius]) circle(r=corner_radius, $fn=24);
        }
    }    

    translate([0,row1_y_offset]) row1();
    translate([0,row2_y_offset]) row2();
    translate([0,row3_y_offset]) row3();
    translate([0,row4_y_offset]) row4();
    translate([0,row5_y_offset]) row5();
    translate([0,row6_y_offset]) row6();
    translate([0,row7_y_offset]) row7();
    translate([0,row8_y_offset]) row8();
    translate([motion_x_offset, motion_y_offset]) motion();
    translate([fingerprint_offset, fingerprint_y_offset]) circle(d=fingerprint_diameter, $fn=36);
    hull() {
        translate([trackpad_loffset+corner_radius,trackpad_y_offset-corner_radius]) circle(r=corner_radius, $fn=24);
        translate([trackpad_roffset-corner_radius,trackpad_y_offset-corner_radius]) circle(r=corner_radius, $fn=24);
    }
}