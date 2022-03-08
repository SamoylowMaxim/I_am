if sprite_index = sp_refresh_reverse {
image_angle -= 3;
}
else {
image_angle += 3;
}
image_alpha -= 0.03
if image_alpha <= 0 {
	instance_destroy(self)
}