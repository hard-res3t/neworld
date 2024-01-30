//World

world

	fps = 40		// 60 frames per second
	icon_size = 32	// 32x32 icon size by default
	view = 6		// show up to 6 tiles outward from center (13x13 view)



// Turf
turf/Click()
  walk_to(usr,src)

turf/start/start1
	icon = 'icon.dmi'
	icon_state = "start1"

turf/start/start2
	icon = 'icon.dmi'
	icon_state = "start2"

turf/grass
	icon = 'icon.dmi'
	icon_state = "grass"

turf/wooden_floor
	icon = 'icon.dmi'
	icon_state = "wooden_floor"

turf/wall
	name = "wall"
	icon = 'icon.dmi'
	icon_state = "wall"
	density = 1
	opacity = 1

turf/wall/window
	name = "window"
	icon = 'icon.dmi'
	icon_state = "window"
	density = 1
	opacity = 0

turf/wall/door_close
	name = "door"
	icon = 'icon.dmi'
	icon_state = "door_close"
	density = 1

	var/door_state = 0

	Click()
		door_state = !door_state
		world << "[door_state]"
		clicked()

	proc/clicked()
		if(door_state == 0)
			icon_state = "door_close"
			door_state = 0
			density = 1
			opacity = 1
		else if(door_state == 1)
			icon_state = "door_open"
			door_state = 1
			density = 0
			opacity = 0

turf/cactus
	name = "cactus"
	icon = 'icon.dmi'
	icon_state = "cactus"
