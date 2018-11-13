/// @description Main Code
// Controls

var k_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var k_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var k_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var k_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var k_jump = keyboard_check_pressed(vk_space);
var basicshoot = keyboard_check(ord("J")) || keyboard_check(ord("Z"));
var basicmelee = keyboard_check_pressed(ord("J")) || keyboard_check_pressed(ord("Z"));
var k_basic = basicshoot;
var specialshoot = keyboard_check(ord("K"))|| keyboard_check(ord("X"));
var toggle = keyboard_check_pressed(ord("K")) || keyboard_check_pressed(ord("X"));
var k_special = specialshoot;
var movedir = (k_right - k_left);


// ROF Reset
if (ROF!=-1)
{
	ROF-=1;
}


// Direction and Gravity Calculations
xsp = movedir * playermaxspd * lungespeed;
ysp = ysp + playergrav

if (global.HasPower && (global.jester_power = 1 || global.archer_power = 1 || global.lancer_power = 1))
{
	k_basic = basicshoot
}
else
{
	k_basic = basicmelee
}

// Stay in room
if (alive)
{
x=clamp(x, (view_xport[0] - sprite_width), room_width);
y=clamp(y, 0, room_height);
}


// Jump Bind
if (place_meeting(x,y+1,obj_wall)) && (k_jump)
{
	ysp = -20;
	audio_play_sound(snd_jump,1,false);
}

//Horizontal Collision
if (place_meeting(x+xsp,y,obj_wall))
	{
		while(!place_meeting(x+sign(xsp),y,obj_wall))
			{
				x += sign(xsp);
			}
			xsp = 0;
	}
x += xsp;

//Vertical Collision
if (place_meeting(x,y+ysp,obj_wall))
	{
		while(!place_meeting(x,y+sign(ysp),obj_wall))
			{
				y += sign(ysp);
			}
			ysp = 0;
	}
y += ysp;


//////////////////////////////////////////////////////////////////////////////////////////////////////////////

/// Attack Inputs ///


// Default (Melee)

if (k_basic && global.HasPower = 0)
{
	audio_play_sound(snd_playermelee,1,false);
	instance_create_layer(x + 32,y, "Instances" ,obj_playermelee);
}


// Archer Base Attack

if (k_basic && global.HasPower = true && global.archer_power = 1 && ROF=-1)
{
	audio_play_sound(snd_archerfire,1,false);
	if (k_up)
	{
		ROF = 60;
		bullet = instance_create_layer((x-18),(y-52), "Instances", obj_archerbullet);
		bullet.speed = 30;
		bullet.image_angle = obj_player.image_angle + 90;
		bullet.direction = bullet.image_angle;
		bullet1 = instance_create_layer((x-18),(y-52), "Instances", obj_archerbullet);
		bullet1.speed = 30;
		bullet1.image_angle = obj_player.image_angle + 98;
		bullet1.direction = bullet1.image_angle;
		bullet2 = instance_create_layer((x-18),(y-52), "Instances", obj_archerbullet);
		bullet2.speed = 30;
		bullet2.image_angle = obj_player.image_angle + 82;
		bullet2.direction = bullet2.image_angle;
	}
	
	else if (k_down)
	{
		ROF = 60;
		bullet = instance_create_layer((x-34),(y-52), "Instances", obj_archerbullet);
		bullet.speed = 30;
		bullet.image_angle = obj_player.image_angle - 90;
		bullet.direction = bullet.image_angle;
		bullet1 = instance_create_layer((x-34),(y-52), "Instances", obj_archerbullet);
		bullet1.speed = 30;
		bullet1.image_angle = obj_player.image_angle - 98;
		bullet1.direction = bullet1.image_angle;
		bullet2 = instance_create_layer((x-34),(y-52), "Instances", obj_archerbullet);
		bullet2.speed = 30;
		bullet2.image_angle = obj_player.image_angle - 82;
		bullet2.direction = bullet2.image_angle;
	}
	
	else if (xsp != 0) && (!k_up || !k_down)
	{
		ROF = 60
		bullet = instance_create_layer((x+88),(y-14), "Instances", obj_playerarrow);
		bullet.speed = 30;
		bullet.direction = bullet.image_angle;
		bullet1 = instance_create_layer((x+88),(y-14), "Instances", obj_playerarrow);
		bullet1.speed = 30;
		bullet1.image_angle = obj_player.image_angle - 8;
		bullet1.direction = bullet1.image_angle;
		bullet2 = instance_create_layer((x+88),(y-14), "Instances", obj_playerarrow);
		bullet2.speed = 30;
		bullet2.image_angle = obj_player.image_angle + 8;
		bullet2.direction = bullet2.image_angle;
	}
	else if (xsp = 0) && (!k_up || !k_down)
	{
		ROF = 60
		bullet = instance_create_layer((x+88),(y-14), "Instances", obj_playerarrow);
		bullet.speed = 30;
		bullet.direction = bullet.image_angle;
		bullet1 = instance_create_layer((x+88),(y-14), "Instances", obj_playerarrow);
		bullet1.speed = 30;
		bullet1.image_angle = obj_player.image_angle - 8;
		bullet1.direction = bullet1.image_angle;
		bullet2 = instance_create_layer((x+88),(y-14), "Instances", obj_playerarrow);
		bullet2.speed = 30;
		bullet2.image_angle = obj_player.image_angle + 8;
		bullet2.direction = bullet2.image_angle;
	}
	else
	{
		ROF = -1;
	}
}

// Knight Dash

else if (k_basic && global.HasPower = true && global.knight_power = 1)
{
	if (!movedir = 0)
	{
		lunge = 1;
		lungespeed = 10;
		alarm[3] = 3;
	}
	instance_create_layer(x,y, "Instances" ,obj_playerlunge);
	audio_play_sound(snd_dash,1,false);
}

// Jester Melee

else if (k_basic && global.HasPower = true && global.jester_power = 1)
{
	ROF = -1;
	if (ROF = -1)
	{
		ROF = 1;
		instance_create_layer(x + 32,y, "Instances" ,obj_jestermelee);
		audio_play_sound(snd_playermelee,1,false);
	}
	else
	{
		ROF = -1;
	}
}

else if (k_basic && global.HasPower = true && global.lancer_power = 1)
{
	ROF = -1;
	if (ROF = -1)
	{
		ROF = 1;
		instance_create_layer(x + 32,y, "Instances" ,obj_lancermelee);
		audio_play_sound(snd_playermelee,1,false);
	}
	else
	{
		ROF = -1;
	}
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

/// Special Attack Bind

if (k_special && ROF=-1 && global.HasPower = false)
{
	audio_play_sound(snd_defaultfire,1,false);
	if (k_up)
	{
		ROF = 30;
		bullet = instance_create_layer(x-13,y-60, "Instances", obj_bullet);
		bullet.speed = 20;
		bullet.image_angle = obj_player.image_angle + 90;
		bullet.direction = bullet.image_angle;
		
	}
	
	else if (k_down)
	{
		ROF = 30;
		bullet = instance_create_layer(x-25,y, "Instances", obj_bullet);
		bullet.speed = 20;
		bullet.image_angle = obj_player.image_angle - 90;
		bullet.direction = bullet.image_angle;
	}
	
	else if (xsp != 0) && (!k_up || !k_down)
	{
		ROF = 30;
		bullet = instance_create_layer(x,y, "Instances", obj_bullet);
		bullet.speed = 20;
		bullet.image_angle = obj_player.image_angle;
		bullet.direction = bullet.image_angle;
	}
	else if (xsp = 0) && (!k_up || !k_down)
	{
		ROF = 30;
		bullet = instance_create_layer(x,y, "Instances", obj_bullet);
		bullet.speed = 20;
		bullet.image_angle = obj_player.image_angle;
		bullet.direction = bullet.image_angle;
	}
	else
	{
		ROF = -1;
	}

}

// Archer Alt Attack
else if (k_special && global.HasPower = true && global.archer_power = 1 && ROF=-1)
{
	audio_play_sound(snd_archerfire,1,false);
	if (k_up)
	{
		ROF = 20;
		bullet = instance_create_layer((x-18),(y-52), "Instances", obj_archerbullet);
		bullet.speed = 30;
		bullet.image_angle = obj_player.image_angle + 90;
		bullet.direction = bullet.image_angle;
	}
	
	else if (k_down)
	{
		ROF = 20;
		bullet = instance_create_layer((x-34),(y-52), "Instances", obj_archerbullet);
		bullet.speed = 30;
		bullet.image_angle = obj_player.image_angle - 90;
		bullet.direction = bullet.image_angle;
	}
	
	else if (xsp != 0) && (!k_up || !k_down)
	{
		ROF = 20
		bullet = instance_create_layer((x+88),(y-14), "Instances", obj_playerarrow);
		bullet.speed = 30;
		bullet.image_angle = obj_player.image_angle;
		bullet.direction = bullet.image_angle;
	}
	else if (xsp = 0) && (!k_up || !k_down)
	{
		ROF = 20
		bullet = instance_create_layer((x+88),(y-14), "Instances", obj_playerarrow);
		bullet.speed = 30;
		bullet.image_angle = obj_player.image_angle;
		bullet.direction = bullet.image_angle;
	}
	else
	{
		ROF = -1;
	}
}

// Knight Shield


else if (k_special && global.HasPower = true && global.knight_power = 1)
{
	if (ROF =-1)
	{
		ROF = 90;
		audio_play_sound(snd_playershield,1,false);
		KShieldActive = true;
		alarm[1] = 80;
	}
}

if (global.powerupshield == 5 &&  KShieldActive = true)
{
		bullet = instance_create_layer((x+88),(y-14), "Instances", obj_shockwave);
		bullet.speed = 15;
		bullet.direction = image_angle;
		alarm[1] = 10;
		global.powerupshield = 0;
		audio_play_sound(snd_playerwave,1,false);
}


else if (k_special && global.HasPower = true && global.jester_power = 1 && ROF=-1)
{
	audio_play_sound(snd_jesterfire,1,false);

	if (k_up)
	{
		ROF = 50;
		bullet = instance_create_layer((x-18),(y-52), "Instances", obj_jesterbullet);
		bullet.speed = 30;
		bullet.image_angle = obj_player.image_angle + 90 + (random(5) - random(10));
		bullet.direction = bullet.image_angle;
		
		bullet1 = instance_create_layer((x-18),(y-52), "Instances", obj_jesterbullet);
		bullet1.speed = 30;
		bullet1.image_angle = obj_player.image_angle + 90 + (random(5) - random(10));
		bullet1.direction = bullet.image_angle;
		
		bullet2 = instance_create_layer((x-18),(y-52), "Instances", obj_jesterbullet);
		bullet2.speed = 30;
		bullet2.image_angle = obj_player.image_angle + 90 + (random(5) - random(10));
		bullet2.direction = bullet2.image_angle;
		
		bullet3 = instance_create_layer((x-18),(y-52), "Instances", obj_jesterbullet);
		bullet3.speed = 30;
		bullet3.image_angle = obj_player.image_angle + 90 + (random(5) - random(10));
		bullet3.direction = bullet3.image_angle;
		
		bullet = instance_create_layer((x-18),(y-52), "Instances", obj_jesterbullet);
		bullet.speed = 30;
		bullet.image_angle = obj_player.image_angle + 90 + (random(5) - random(10));
		bullet.direction = bullet.image_angle;
		
		bullet = instance_create_layer((x-18),(y-52), "Instances", obj_jesterbullet);
		bullet.speed = 30;
		bullet.image_angle = obj_player.image_angle + 90 + (random(5) - random(10));
		bullet.direction = bullet.image_angle;
	}
	
	else if (k_down)
	{
		ROF = 50;
		bullet = instance_create_layer((x-34),(y-52), "Instances", obj_jesterbullet);
		bullet.speed = 30;
		bullet.image_angle = obj_player.image_angle - 90 + (random(5) - random(10));
		bullet.direction = bullet.image_angle;
		
		bullet1 = instance_create_layer((x-34),(y-52), "Instances", obj_jesterbullet);
		bullet1.speed = 30;
		bullet1.image_angle = obj_player.image_angle - 90 + (random(5) - random(10));
		bullet1.direction = bullet1.image_angle;
		
		bullet2 = instance_create_layer((x-34),(y-52), "Instances", obj_jesterbullet);
		bullet2.speed = 30;
		bullet2.image_angle = obj_player.image_angle - 90 + (random(5) - random(10));
		bullet2.direction = bullet2.image_angle;
		
		bullet3 = instance_create_layer((x-34),(y-52), "Instances", obj_jesterbullet);
		bullet3.speed = 30;
		bullet3.image_angle = obj_player.image_angle - 90 + (random(5) - random(10));
		bullet3.direction = bullet3.image_angle;
		
		bullet4 = instance_create_layer((x-34),(y-52), "Instances", obj_jesterbullet);
		bullet4.speed = 30;
		bullet4.image_angle = obj_player.image_angle - 90 + (random(5) - random(10));
		bullet4.direction = bullet4.image_angle;
		
		bullet5 = instance_create_layer((x-34),(y-52), "Instances", obj_jesterbullet);
		bullet5.speed = 30;
		bullet5.image_angle = obj_player.image_angle - 90 + (random(5) - random(10));
		bullet5.direction = bullet5.image_angle;
	}
	
	else if (xsp != 0) && (!k_up || !k_down)
	{
		ROF = 50
		bullet = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet.speed = 30;
		bullet.image_angle = obj_player.image_angle + (random(5) - random(10));
		bullet.direction = bullet.image_angle;
		
		bullet1 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet1.speed = 30;
		bullet1.image_angle = obj_player.image_angle + (random(5) - random(10));
		bullet1.direction = bullet1.image_angle;
		
		bullet2 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet2.speed = 30;
		bullet2.image_angle = obj_player.image_angle + (random(5) - random(10));
		bullet2.direction = bullet2.image_angle;
		
		bullet3 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet3.speed = 30;
		bullet3.image_angle = obj_player.image_angle + (random(5) - random(10));
		bullet3.direction = bullet3.image_angle;
		
		bullet4 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet4.speed = 30;
		bullet4.image_angle = obj_player.image_angle + (random(5) - random(10));
		bullet4.direction = bullet4.image_angle;
		
		bullet5 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet5.speed = 30;
		bullet5.image_angle = obj_player.image_angle + (random(5) - random(10));
		bullet5.direction = bullet5.image_angle;
	}
	else if (xsp = 0) && (!k_up || !k_down)
	{
		ROF = 50
		bullet = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet.speed = 30;
		bullet.image_angle = obj_player.image_angle + (random(5) - random(10));
		bullet.direction = bullet.image_angle;
		
		bullet1 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet1.speed = 30;
		bullet1.image_angle = obj_player.image_angle + (random(5) - random(10));
		bullet1.direction = bullet1.image_angle;
		
		bullet2 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet2.speed = 30;
		bullet2.image_angle = obj_player.image_angle + (random(5) - random(10));
		bullet2.direction = bullet2.image_angle;
		
		bullet3 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet3.speed = 30;
		bullet3.image_angle = obj_player.image_angle + (random(5) - random(10));
		bullet3.direction = bullet3.image_angle;
		
		bullet4 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet4.speed = 30;
		bullet4.image_angle = obj_player.image_angle + (random(5) - random(10));
		bullet4.direction = bullet4.image_angle;
		
		bullet5 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet5.speed = 30;
		bullet5.image_angle = obj_player.image_angle + (random(5) - random(10));
		bullet5.direction = bullet5.image_angle;
	}
	else
	{
		ROF = -1;
	}
}

else if (k_special && global.HasPower = true && global.lancer_power = 1 && ROF=-1)
{
	audio_play_sound(snd_lancerfire,1,false);
	if (k_up)
	{
		ROF = 55;
		bullet = instance_create_layer(x-13,y-60, "Instances", obj_lancerbullet);
		bullet.speed = 60;
		bullet.image_angle = obj_player.image_angle + 90;
		bullet.direction = bullet.image_angle;

	}
	
	else if (k_down)
	{
		ROF = 55;
		bullet = instance_create_layer(x-25,y, "Instances", obj_lancerbullet);
		bullet.speed = 60;
		bullet.image_angle = obj_player.image_angle - 90;
		bullet.direction = bullet.image_angle;
		xsp = 0;
	}
	
	else if (xsp != 0) && (!k_up || !k_down)
	{
		ROF = 55;
		bullet = instance_create_layer(x,y, "Instances", obj_lancerbullet);
		bullet.speed = 60;
		bullet.image_angle = obj_player.image_angle;
		bullet.direction = bullet.image_angle;
		xsp = 0;
	}
	else if (xsp = 0) && (!k_up || !k_down)
	{
		ROF = 55;
		bullet = instance_create_layer(x,y, "Instances", obj_lancerbullet);
		bullet.speed = 60;
		bullet.image_angle = obj_player.image_angle;
		bullet.direction = bullet.image_angle;
		xsp = 0;
	}
	else
	{
	ROF = -1;
	}
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Ability Input								// DISABLED //	

// Knight




// Archer
								
										

/*if (k_ability && global.HasPower = true && global.archer_power = 1 && ROF = -1)
{
if (k_up)
	{
		ROF = 30;
		bullet = instance_create_layer(x,y, "Instances", obj_playerbeam);
		bullet.direction = image_angle + 90;
		bullet.image_angle = image_angle + 90;
		bullet.speed = 60;
	}
	
	else if (k_down)
	{
		ROF = 30;
		bullet = instance_create_layer(x,y, "Instances", obj_playerbeam);
		bullet.direction = image_angle - 90;
		bullet.image_angle = image_angle - 90;
		bullet.speed = 60;
	}
	
	else if (k_left || k_right) && (!k_up || !k_down)
	{
		ROF = 30;
		bullet = instance_create_layer(x,y, "Instances", obj_playerbeam);
		bullet.direction = image_angle;
		bullet.speed = 60;
		
	}
	else
	{
		ROF = -1;
	}
}
*/
//////////////////////////////////////////////////////////////////////////////////////////////////////////

// Pickups

if position_meeting(x,y,obj_knight_pow){
	global.knight_power=1
}
if global.knight_power{
sprite_index = spr_knight;
	
}

if (ROF!=-1)
{
	ROF-=1;
}


// Archer

if position_meeting(x,y,obj_archer_pow)
{
	global.archer_power=1
}


if (global.HasPower = true && global.archer_power = 1)
{
if (movedir = 1)
{
	sprite_index = spr_archerrun;
}
else if (movedir = -1)
{
	sprite_index = spr_archerbackpedal;
}
else
{
	sprite_index = spr_archer;
}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Death

// Death /// Need to fix respawn sprite and area

if (obj_player.max_hp && obj_player.hp <= 0)
{
scr_playerdeath();
global.life -=1;
}
else if (global.life <= 0)
{
instance_destroy();
game_restart();
}


//////////////////////////////////////////////////////////////////////////////////////////////////////////

/// Animations ///

if (!global.HasPower)
{
	if (k_basic)
	{
		sprite_index = spr_defaultmelee;
	}
	else if (place_meeting(x,y+1,obj_wall)) // check if on the floor
	{
		if (movedir!=0)
		{
			if (movedir=1)
			{
				if (k_up)
				{
					sprite_index = spr_defaultrunup;
				}
				else
				{
					sprite_index = spr_defaultrun;
				}
			
			}
			else if (movedir = -1)
			{
				if (k_up)
				{
					sprite_index = spr_defaultbackpedalup;
				}
				else
				{
					if (k_up)
					{
						sprite_index = spr_defaultup;
					}
					else
					{
						sprite_index = spr_defaultbackpedal;
					}
				}
			}
			
		}
		else
		{		
			if (k_up)
			{
				sprite_index = spr_defaultup;
			}
			else if (k_special && !(k_up || k_down))
			{
				sprite_index = spr_defaultshoot;
			}
			else
			{
				sprite_index = spr_default;
			}
		}
	
	}
	else if (!place_meeting(x,y+1,obj_wall))
	{
		if (ysp < 0)
		{
			sprite_index = spr_defaultjump;
		}
		else if (ysp > 0)
		{
			sprite_index = spr_defaultfall;
		}
	}
}

else if (global.HasPower)
{
	if (global.archer_power = 1)
	{
		if (place_meeting(x,y+1,obj_wall)) // check if on the floor
		{
			if (movedir!=0)
			{
				if (movedir=1)
				{
					if (k_up)
					{
						sprite_index = spr_archerrunup;
					}
					else
					{
						sprite_index = spr_archerrun;
					}	
				}
				else if (movedir = -1)
				{
					if (k_up)
					{
						sprite_index = spr_archerbackpedalup;
					}
					else
					{
						sprite_index = spr_archerbackpedal;
					}
				}
			}
			else
			{
				/*if (k_up)
				{
					sprite_index = spr_archerup;
				}
				else */if ((k_special || k_basic) && !(k_up || k_down))
				{
					sprite_index = spr_archershoot;
				}
				else
				{
					sprite_index = spr_archer;
				}
			}
		}

		else if (!place_meeting(x,y+1,obj_wall))
		{
			if (ysp < 0)
			{
				sprite_index = spr_archerjump;
			}
			else if (ysp > 0)
			{
				sprite_index = spr_archerfall;
			}
		}
	}
		
	if (global.knight_power = 1) 
	{
		if (k_basic)
		{
			if (movedir = 1)
			{
				sprite_index = spr_knightmelee;
			}
			else
			{
				sprite_index = spr_knightmeleestationary;
			}
		}
		else if (place_meeting(x,y+1,obj_wall)) // check if on the floor
		{
			if (movedir!=0)
			{
				if (movedir=1)
				{
					if (KShieldActive = true)
					{
						sprite_index = spr_knightrunup;
					}
					else
					{
						sprite_index = spr_knightrun;
					}
				}
				else if (movedir=-1)
				{
					if (KShieldActive = true)
					{
						sprite_index = spr_knightbackpedalup;
					}
					else
					{
						sprite_index = spr_knightbackpedal;
					}
				}
			}
			else
			{
				if (KShieldActive = true)
				{
					sprite_index = spr_knightshield;
				}
				else
				{
					sprite_index = spr_knight;
				}
			}
		}
		
		else if (!place_meeting(x,y+1,obj_wall))
		{
			if (ysp < 0)
			{
				sprite_index = spr_knightjump;
			}
			else if (ysp > 0)
			{
				sprite_index = spr_knightfall;
			}
		}
	}
	
	else if (global.jester_power = 1)
	{
		if (k_basic)
		{
			sprite_index = spr_jestermelee;
		}
		else if (place_meeting(x,y+1,obj_wall)) // check if on the floor
		{
			if (movedir!=0)
			{
				if (movedir=1)
				{
					if (k_up)
					{
						sprite_index = spr_jesterrunup;
					}
					else
					{
						sprite_index = spr_jesterrun;
					}
			
				}
				else if (movedir = -1)
				{
					if (k_up)
					{
						sprite_index = spr_jesterbackpedalup;
					}
					else
					{
						if (k_up)
						{
							sprite_index = spr_jesterup;
						}
						else
						{
							sprite_index = spr_jesterbackpedal;
						}
					}
				}
			
			}
			else
			{		
				if (k_up)
				{
					sprite_index = spr_jesterup;
				}
				else if (k_special && !(k_up || k_down))
				{
					sprite_index = spr_jestershoot;
				}
				else
				{
					sprite_index = spr_jester;
				}
			}
		
		}
		else if (!place_meeting(x,y+1,obj_wall))
		{
			if (ysp < 0)
			{
				sprite_index = spr_jesterjump;
			}
			else if (ysp > 0)
			{
				sprite_index = spr_jesterfall;
			}
		}
	}
	
	else if (global.lancer_power = 1)
	{
		if (place_meeting(x,y+1,obj_wall)) // check if on the floor
		{
			if (movedir!=0)
			{
				if (movedir=1)
				{
					sprite_index = spr_lancerrun;
				}
				else if (movedir = -1)
				{
					sprite_index = spr_lancerbackpedal;
				}
			}
			else
			{

				if ((k_special || k_basic) && !(k_up || k_down))
				{
					sprite_index = spr_lancershoot;
				}
				else
				{
					sprite_index = spr_lancer;
				}
			}
		}

		else if (!place_meeting(x,y+1,obj_wall))
		{
			if (ysp < 0)
			{
				sprite_index = spr_lancerjump;
			}
			else if (ysp > 0)
			{
				sprite_index = spr_lancerfall;
			}
		}
	}
	
	else if (global.infiltrator_power = 1)
	{
		if (place_meeting(x,y+1,obj_wall)) // check if on the floor
		{
			if (movedir!=0)
			{
				if (movedir=1)
				{
					if (k_up)
					{
						sprite_index = spr_infiltratorrunup;
					}
					else
					{
						sprite_index = spr_infiltratorrun;
					}	
				}
				else if (movedir = -1)
				{
					if (k_up)
					{
						sprite_index = spr_infiltratorbackpedalup;
					}
					else
					{
						sprite_index = spr_infiltratorbackpedal;
					}
				}
			}
			else
			{
				if (k_up)
				{
					sprite_index = spr_infiltratorup;
				}
				else if ((k_special || k_basic) && !(k_up || k_down))
				{
					sprite_index = spr_infiltratornade;
				}
				else
				{
					sprite_index = spr_infiltrator;
				}
			}
		}

		else if (!place_meeting(x,y+1,obj_wall))
		{
			if (ysp < 0)
			{
				sprite_index = spr_infiltratorjump;
			}
			else if (ysp > 0)
			{
				sprite_index = spr_infiltratorfall;
			}
		}
	}
}

