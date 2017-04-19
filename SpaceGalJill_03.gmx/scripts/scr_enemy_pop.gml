///scr_enemy_pop()
sprite_set_offset(sprite_index, xmiddle, height);
y = ystart;
small = false;

//trigger big walk
if alarm_get(2) < 0
    {
    alarm_set(2, 0.4*room_speed);
    }

if spd > 0
    {
    if image_xscale < 1.5 && xstretch = false
        {
        image_xscale += (0.08/image_xscale);
        image_yscale += (0.08/image_yscale);
        }
    if image_xscale >= 1.5 && xstretch = false
        {
        xstretch = true;
        }
    if image_xscale > 0.9 && xstretch = true
        {
        image_xscale -= (0.08*image_xscale);
        image_yscale -= (0.08*image_yscale);
        }
    if image_xscale <= 0.9 && xstretch = true
        {
        xstretch = false;
        }
    }
if spd < 0
    {
    if image_xscale > -1.5 && xstretch = false
        {
        image_xscale += (0.08/image_xscale);
        image_yscale += (0.08/image_yscale);
        }
    if image_xscale <= -1.5 && xstretch = false
        {
        xstretch = true;
        }
    if image_xscale < -0.9 && xstretch = true
        {
        image_xscale -= (0.08*image_xscale);
        image_yscale -= (0.08*image_yscale);
        }
    if image_xscale >= -0.9 && xstretch = true
        {
        xstretch = false;
        }
    }
