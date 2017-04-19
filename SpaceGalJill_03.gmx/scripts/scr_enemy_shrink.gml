///scr_enemy_shrink()
//SET ORIGIN TO CENTRE
if small == false
    {
    sprite_set_offset(sprite_index, xmiddle, ymiddle);
    y -= ymiddle;
    small = true;
    //trigger small walk
    if alarm_get(0) < 0
        {
        alarm_set(0, 2*room_speed);
        }
    }
else
//small is true
{
    //ROTATE
    image_angle -= 0.25;
    //XSCALE wobble
    if spd > 0
        {
        if image_xscale > 0.5 && xstretch = false
            {
            image_xscale -= (0.05*image_xscale);
            }
        if image_xscale <= 0.5 && xstretch = false
            {
            xstretch = true;
            }
        if image_xscale < 1.3 && xstretch = true
            {
            image_xscale += (0.05/image_xscale);
            }
        if image_xscale >= 1.3 && xstretch = true
            {
            xstretch = false;
            }
        }
    if spd < 0
        {
        if image_xscale < -0.5 && xstretch = false
            {
            image_xscale -= (0.05*image_xscale);
            }
        if image_xscale >= -0.5 && xstretch = false
            {
            xstretch = true;
            }
        if image_xscale > -1.3 && xstretch = true
            {
            image_xscale += (0.05/image_xscale);
            }
        if image_xscale <= -1.3 && xstretch = true
            {
            xstretch = false;
            }
        }
    //YSCALE wobble
    if image_yscale > 0.4 && ystretch = false
        {
        image_yscale -= (0.08*image_yscale);
        }
    if image_yscale < 0.4 && ystretch = false
        {
        ystretch = true;
        }
    if image_yscale < 1.2 && ystretch = true
        {
        image_yscale += (0.08/image_yscale);
        }
    if image_yscale > 1.2 && ystretch = true
        {
        ystretch = false;
        }
}
