#define MASTER_KEY "RES3T"


// Mob

mob/var/life = 100

mob/proc/HurtMe(D)

	if(D>0)
		view() << "[src] takes [D] damage!! [life] left."

	life = life - D

	if(life < 1)
		view() << "[src] dies!"
		del src


// Player

mob/player
	Login()
		world << "[usr] joined the game."
		loc = locate(/turf/start/start1)

	key = MASTER_KEY

	icon = 'icon.dmi'
	icon_state = "player"
	step_size = 8

mob/player/verb/say(msg as text)
	world << "[usr] say [msg]"

mob/player/verb/punch()
	usr.HurtMe(25)