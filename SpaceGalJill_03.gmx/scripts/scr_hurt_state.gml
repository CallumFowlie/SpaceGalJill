///scr_hurt_state()
//define sprite
sprite_index = spr_player_hurt_right;

//where is the enemy?
if place_meeting(x-1, y, obj_enemy_ground)
    {
    enemy_loc = -1;
    }
else
    {
    enemy_loc = 1;
    }

//move Jill
//VERTICAL
if place_meeting(x+enemy_loc, y, obj_enemy_ground)
    {
    vspd = -15;
    }
else
    {
    if vspd < 20
        {
        vspd += grav;
        }
    }
//HORIZONTAL !!!BROKEN!!!
if place_meeting(x+enemy_loc, y, obj_enemy_ground)
    {
    hspd = -15*enemy_loc;
    }

//MOVEMENT
scr_move(obj_solid);

//remove health

//change state back to move state
if (place_meeting(x, y+1, obj_solid) && vspd >= 0)
    {
    state = scr_move_state;
    }
