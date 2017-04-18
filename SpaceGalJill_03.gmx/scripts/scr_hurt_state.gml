///scr_hurt_state()
//DEFINE SPRITE
sprite_index = spr_player_hurt_right;

//BOUNCE DIRECTION?
//left enemy = 1; right enemy = -1
bounce_dir = sign(x - enemy_x);

if place_meeting(x-bounce_dir, y, obj_enemy_ground)
    {
    vspd = -15;
    hspd = 10*bounce_dir;
    }
else
    {
    if vspd < 20
        {
        vspd += grav;
        }
    }
//MOVEMENT
scr_move(obj_solid);

//REMOVE HEALTH

//CHANGE STATE BACK TO MOVE STATE
if (place_meeting(x, y+1, obj_solid) && vspd >= 0)
    {
    state = scr_move_state;
    }
