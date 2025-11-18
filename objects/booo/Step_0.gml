var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);


var jump = keyboard_check_pressed(vk_space);

 xdir = (right-left)*ms;
 ydir += grv;

if on_ground and jump
{
	ydir -= jstr;
}
if not place_meeting(x+xdir,y,wallE)
{ 
	x += xdir;
}
if not place_meeting(x,y+ydir,wallE)
{ 
	y += ydir;
}
else
{
	while ydir > 0 and not place_meeting(x,y+1,wallE)
 
{
	y += 1;
}
ydir = 0;
}



if (keyboard_check_pressed(vk_escape))  game_end(0);



