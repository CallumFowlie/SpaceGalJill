///scr_enemy_move()
//Determine size
if small == false
//is big
    {
    sprite_set_offset(sprite_index, xmiddle, height);
    image_xscale = sign(spd);
    image_yscale = 1;
    y = ystart;
        }
else
//is small
    {
    sprite_set_offset(sprite_index, xmiddle, height);
    image_xscale = (sign(spd)*(0.5 + (alarm_get(1)/1500)));
    image_yscale = (0.5 + (alarm_get(1)/1500));
    y = ystart;
    //trigger pop
    if alarm_get(1) < 0
        {
        alarm_set(1, 4*room_speed);
        }
    }
//reset variables
image_angle = 0;
xstretch = false;
ystretch = false;

//Determine facing
if place_meeting(x+spd, y, obj_turn)
    {
    if spd < 0
        {
        spd = 4;
        }
    else
        {
        spd = -4;
        }
    }

//Movement
//x += spd;
