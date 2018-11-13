// OG Code
dir = -1;
movespeed = 3;
knockback = 0;
grav = 1;
xsp = 0;
ysp = 0;
deltax = 0;
deltay = 1;
alive = true;
alarm[0] = room_speed *5;
sight_range = choose(100, 200, 300);
attack_range = 50;
mirror = image_xscale;

//Test Script State
state_text = "idle";
state = scr_enemy_idle();
sight_range = choose(100, 200, 300);
attack_range = 24;
spd = 3;
hp = 100;

flash = 0;
can_shoot = 1;
shoot_time = 0;
enemyai = false;