/// @description Insert description here
// You can write your code in this editor
if (flash = 1)
{
	gpu_set_blendmode(bm_add);
	flash -= 0.05;
	shader_set(shdr_flash);
	shd_alpha = shader_get_uniform(shdr_flash,"_alpha");
	shader_set_uniform_f(shd_alpha, flash);
    draw_self();
    shader_reset();
	gpu_set_blendmode(bm_normal);
	
}
else{
draw_self();	
}
