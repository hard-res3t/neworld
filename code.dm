/*
	These are simple defaults for your project.
 */
#define MASTER_KEY "RES3T"

//World

world
	fps = 32		// 60 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 6		// show up to 6 tiles outward from center (13x13 view)


// Turf

// turf/proc/called()
// 		world << "Something bad just happened,"

turf/start/start1
	icon = 'icon.dmi'
	icon_state = "start1"

turf/start/start2
	icon = 'icon.dmi'
	icon_state = "start2"

turf/grass
	icon = 'icon.dmi'
	icon_state = "grass"

turf/wall
	icon = 'icon.dmi'
	icon_state = "wall"
	density = 1


//Player

mob/player
	key = MASTER_KEY
	Login()
		world << "[usr] joined the game."
		loc = locate(/turf/start/start1)
		loc = locate(/turf/start/start2)
		world << "Something bad just happened,"

	icon = 'icon.dmi'
	icon_state = "player"
	step_size = 8

	verb
		say(msg as text)
			world << "[usr] say [msg]"