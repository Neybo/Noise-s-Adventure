/// @description shut up igor, ill kill you
noisesndtype = irandom_range(0, 450)
#region keyfuncs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_spin = keyboard_check(ord("X"));
key_jump = keyboard_check(ord("Z"));
key_pogo = keyboard_check(vk_shift);
#endregion
#region shaun spaulding collision
var move = key_right - key_left;

hsp = move * mvspd;

vsp = vsp + grv

// horizontal collision
if place_meeting(x+hsp, y, obj_solid) {
	while !place_meeting(x+sign(hsp), y, obj_solid) {
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

if place_meeting(x, y+vsp, obj_solid) {
	while !place_meeting(x, y+sign(vsp), obj_solid) {
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;
#endregion
show_debug_message("{ ", string(noisesndtype) + ", " + string(pogotime) + "}")

if place_meeting(x, y+1, obj_solid) and key_jump 
	vsp = -10;
if place_meeting(x, y+1, obj_solid) and key_pogo {
	if place_meeting(x, y+1, obj_solid) pogotime++
	sprite_index = spr_noise_pogo;
	vsp = -12;
}
if !key_pogo {sprite_index = spr_noise_idle; pogotime = 0
if key_spin {
	sprite_index = spr_noise_spin;
	mvspd = 8;
} else mvspd = 4;

























