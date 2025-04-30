// ********** INPUT ************//

move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed
var jump_pressed = keyboard_check_pressed (vk_up);

// ********** COLLISION CHECKS
// Check if standin on the ground
is_grounded = place_meeting(x,y+2, ground_object);
// check if touchging ladder
is_climbing = place_meeting(x,y, ladder_object);





// ********** LADDERClimbing/
if (is_climbing) {
move_y = keyboard_check(vk_down) - keyboard_check(vk_up);
move_y *= climb_speed;

}
else {
	//Gravity & Jumping
	if (is_grounded && jump_pressed) {
		move_y = jump_speed;
	}
	//falling
	else if (move_y < max_fall_speed) { // keep reasonable fall speed
		move_y += gravity_force; // gravity pulls down
	}
}





// ********** move player***//

move_and_collide(move_x, move_y, ground_object)


// ********** outside room*//
if (x < -20  || x > room_width + 20 || y > room_height + 20 || y < -20) {
	room_restart(); // restart the oom if outside the boundaries we set
}













