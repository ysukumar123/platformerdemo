// ********** MOVEMENT VARIABLES **********
move_speed = 2.5; // left/right speed
jump_speed = -15; // upward jump speed
climb_speed =2.5; // Climbing Speed
gravity_force = 0.5; // Gravity strength
max_fall_speed = 10; // Max downward speed so you can still see the object
move_x = 0;  // Horizontal Movement 
move_y = 0;  // Vertical Movement

// ********** STATE VARIABLES **********
is_grounded = false;  // On ground?
is_climbing = false;  // On ladder?


// ********** OBJECT VARIABLES **********
ground_object = obj_ground // blah blah blah
ladder_object = obj_ladder // blah blah blah