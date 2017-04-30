///scr_move_state()

//LOCAL VARIABLES
var rkey = keyboard_check(vk_right);
var lkey = keyboard_check(vk_left);
var jkey = keyboard_check_pressed(vk_up);

//GRAVITY AND JUMP
//Check if player is on the ground
if place_meeting(x, y+1, obj_solid)
    {
    vspd = 0;
    d_jump = false;
    //Jump button and function
    if jkey
        {
        vspd = -jspd;
        }
    }
//Player is not on ground, therefore in air
else
    {
    //apply gravity
    if vspd < 20
        {
        vspd += grav;
        }
//Double jump function
    if d_jump = false
        {
        if jkey
            {
            vspd = -jspd;
            jump = true;
            d_jump = true;
            }
        }
    }

//HORIZONTAL DIRECTION AND SPEED
//Move right
if rkey
    {
    hspd = spd;
    image_xscale = 1;
    }
//Move left
if lkey
    {
    hspd = -spd;
    image_xscale = -1;
    }
//Not Moving (no keys or both keys)
if (!rkey && !lkey) || (rkey && lkey)
    {
    hspd = 0;
    }

//MOVEMENT
scr_move(obj_solid);

//DEFINE SPRITE
//if player is on the ground
if place_meeting(x, y+1, obj_solid)
    {
    //idle
    if hspd = 0
        {
        sprite_index = spr_player_idle_right;
        image_speed = 1;
        }
    //run
    if hspd < 0
        {
        sprite_index = spr_player_run_right;
        image_speed = 1;
        }
    if hspd > 0
        {
        sprite_index = spr_player_run_right;
        image_speed = 1;
        }
    }
//if player is in the air

else
    {
    //going up
    if vspd <= 0
        {
        sprite_index = spr_player_up_right;
        image_speed = 0.1;
        }
    if vspd >= 0
    //falling
        {
        sprite_index = spr_player_fall_right;
        image_speed = 0.1;
        }
    }
