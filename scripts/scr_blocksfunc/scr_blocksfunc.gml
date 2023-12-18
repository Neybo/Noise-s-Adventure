function scr_dest_blocks() {
	if sprite_index == spr_noise_spin && mvspd == 8  {
		with instance_place(x, y, obj_block) {
				instance_destroy()
				audio_play_sound(choose(sfx_breakblock1, sfx_breakblock2), 1, false)
		}
	}
	if sprite_index == spr_noise_slam {
				with instance_place(x, y, obj_block) {
				instance_destroy()
				audio_play_sound(choose(sfx_breakblock1, sfx_breakblock2), 1, false)
		}
	}
}