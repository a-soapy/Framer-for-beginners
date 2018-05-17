# Initial secret setup
flow = new FlowComponent
flow.showNext(screen1)


Framer.Extras.Hints.disable()





#START HERE: Challenge 1  ***************************
#Type your solution between these arrows --------->

box.animate
	x: 220
	rotation: 45

# -------------------------------------------------->

# Need a hint?

# print safeZone.x
# print safeZone.rotation



# SPOILERS! This is the set-up, don't open yet!

box.onAnimationEnd ->
	if box.x is 220 && box.rotation is 45
		button01.animate
			y: 580
			options:
				time: 1
				curve: Spring(damping: 0.75)

button01.onTap ->
	flow.showNext(screen2)
	




#Challenge 2  *************************************

# First things first, you'll need to un-hash this line:
flow.showNext(screen2)

#Type your solution between these arrows --------->
circle.animate
	y: 340
	x: 88
	width: 200
	height: 80
	borderRadius: 0


# -------------------------------------------------->

# Need a hint?

# You can also hover over the layer name in the side hierarchy to find out its basic properties. 

# SPOILERS! This is the set-up

circle.onAnimationEnd ->
	if circle.x is 88 && circle.y is 340 && circle.width is 200 && circle.height is 80
		button02.animate
			y: 580
			options:
				time: 1
				curve: Spring(damping: 0.75)

button02.onTap ->
	flow.showNext(screen3)




#Challenge 3  *************************************

# Un-hash this line:
flow.showNext(screen3)

#Type your solution between these arrows --------->
star.onTap ->
	star.animate
		scale: 2
		backgroundColor: "rgba(215,131,255,1)"

# -------------------------------------------------->

# Need a hint?
#Click the little square icon next to your animate function to see more options (and a colour picker!) on the left side panel. 

# SPOILERS! This is the set-up

star.onAnimationEnd ->
	if star.scale is 2 || star.scale is 2 && star.backgroundColor is "yellow"
		button03.animate
			y: 580
			options:
				time: 1
				curve: Spring(damping: 0.75)

button03.onTap ->
	flow.showNext(screen4)






#Challenge 4  *************************************

# Un-hash this line:
flow.showNext(screen4)

#Type your solution between these arrows --------->
square.onClick ->
	square.animate
		opacity: 0

# -------------------------------------------------->

# Need a hint?
# You can the square disappear by turning its opacity to 0.

#In other cases, you might need to set it to visible = false or you may even need to destroy() the layer.

# SPOILERS! This is the set-up

square.onAnimationEnd ->
	if square.opacity is 0
		button04.animate
			y: 580

square.onTap ->
	if square.visible is false
		button04.animate
			y: 580
			options:
				time: 1
				curve: Spring(damping: 0.75)

button04.onTap ->
	flow.showNext(screen5)



bravo.animate
	scale: 1.1
	options:
		time: 0.5

bravo.onAnimationEnd ->
	bravo.animate
		scale: 1
		options:
			time: 0.5
	
	if bravo.scale is 1
		bravo.animate
			scale: 1.1
			options:
				time: 0.5





#Challenge 5  *************************************

# Un-hash this line:
flow.showNext(screen5)

#Type your solution between these arrows --------->

toggle.onTap ->
	toggle.stateCycle("on", "off")


# -------------------------------------------------->

# Need a hint?

# OnTap, the toggle must cycle from state "on" to state "off".
# You can use stateSwitch to make the change of state just once.

# SPOILERS! This is the set-up

toggle.states =
	off:
		x: 10
		y: 6
		backgroundColor: "rgba(0,170,255,1)"
		animationOptions:
			time: 1
			curve: Spring
	on:
		x: 100
		y: 6
		backgroundColor: "rgba(26,240,149,1)"
		animationOptions:
			time: 1
			curve: Spring (damping: 0.75)

toggle.onAnimationEnd ->
	if toggle.states.current.name == "on"
		button05.animate
			y: 580
			options:
				time: 1
				curve: Spring(damping: 0.75)

button05.onTap ->
	flow.showNext(screen6)




#Challenge 6  *************************************

# Un-hash this line:
flow.showNext(screen6)

#Type your solution between these arrows --------->

button.onTap ->
	pointer1.stateCycle("summer", "autumn", "winter", "spring" )

# -------------------------------------------------->

# Need a hint?

# The pointer needs to cycle from state to state.

# SPOILERS! This is the set-up

pointer1.states =
	spring:
		x: 96
		animationOptions:
			time: 0.7
			curve: Spring (damping: 0.75)
	summer:
		x: 153
		animationOptions:
			time: 0.7
			curve: Spring (damping: 0.75)
	autumn:
		x: 208
		animationOptions:
			time: 0.7
			curve: Spring (damping: 0.75)
	winter:
		x: 262
		animationOptions:
			time: 0.7
			curve: Spring (damping: 0.75)

delete pointer1.states.default

# button click effect 
button.onTap ->
	button.animate
		backgroundColor: "rgba(17,149,222,1)"
		borderWidth: 2
		borderColor: "rgba(17,172,255,1)"
		options:
			time: 0.2
			
button.onAnimationEnd ->
	button.animate
		backgroundColor: "rgba(17,172,255,1)"
		borderWidth: 0
		options:
			time: 0.2

button.onTap ->
	if pointer1.states.current.name is "winter"
		button06.animate
			y: 580
			options:
				time: 1
				curve: Spring(damping: 0.75)

button06.onTap ->
	flow.showNext(screen7)




#Challenge 7  *************************************

# Un-hash this line:
flow.showNext(screen7)

#Type your solution between these arrows --------->

button2.onTap ->
	pointer2.stateCycle("summer", "autumn", "winter", "spring" )
	if pointer2.states.current.name is "summer"
		holidays.animate
			opacity: 1


# -------------------------------------------------->

# Need a hint?

# The pointer needs to cycle from state to state, and "holidays"'s opacity will turn to 1 only if summer is selected. This is a conditional statement.

# SPOILERS! This is the set-up
holidays.opacity = 0

pointer2.states =
	spring:
		x: 96
		animationOptions:
			time: 0.7
			curve: Spring (damping: 0.75)
	summer:
		x: 153
		animationOptions:
			time: 0.7
			curve: Spring (damping: 0.75)
	autumn:
		x: 208
		animationOptions:
			time: 0.7
			curve: Spring (damping: 0.75)
	winter:
		x: 262
		animationOptions:
			time: 0.7
			curve: Spring (damping: 0.75)

delete pointer2.states.default

button2.onTap ->
	if pointer2.states.current.name is "spring" || pointer2.states.current.name is "autumn" || pointer2.states.current.name is "winter"
		holidays.animate
			opacity: 0
			y: 160
			options:
				time: 0.8
				curve: Spring


# button click effect
button2.onTap ->
	button.animate
		backgroundColor: "rgba(17,149,222,1)"
		borderWidth: 2
		borderColor: "rgba(17,172,255,1)"
		options:
			time: 0.2
			
button2.onAnimationEnd ->
	button.animate
		backgroundColor: "rgba(17,172,255,1)"
		borderWidth: 0
		options:
			time: 0.2

holidays.onAnimationEnd ->
	if pointer2.states.current.name is "summer" && holidays.opacity is 1
		button07.animate
			y: 580
			options:
				time: 1
				curve: Spring(damping: 0.75)

button07.onTap ->
	flow.showNext(screen8)




#Challenge 8 *************************************

# Un-hash this line:
flow.showNext(screen8)

#Type your solution between these arrows --------->

plane.onDragEnd ->
	if plane.y < 350
		plane.animate
			y: 194
	else
		plane.animate
			y: 480
# -------------------------------------------------->

# Need a hint?
# The plane enter the zone past a certain y value. You will need to use another conditional for this one!

# SPOILERS! This is the set-up

flight.opacity = 0


plane.draggable.enabled = true
plane.draggable.horizontal = false

plane.draggable.overdrag = false

plane.draggable.constraints = {
	y: 194
	height: 326
	width: 1
}

plane.onDragEnd ->
	if plane.y < 350
		takeoff.animate
			opacity: 0
		flight.animate
			opacity: 1

	else
		takeoff.animate
			opacity: 1
		flight.animate
			opacity: 0

plane.onAnimationEnd ->
	if plane.y is 194
		button08.animate
			y: 580
			options:
				time: 1
				curve: Spring(damping: 0.75)
	

button08.onTap ->
	flow.showNext(screen9)


# Finish line!
# flow.showNext(screen9)

winner.animate
	scale: 1
	rotation: 4
	options:
		time: 0.3
		curve: Spring

winner.onAnimationEnd ->
	winner.animate
		scale: 1
		rotation: -8
		options:
			time: 0.3
			curve: Spring
	
	if winner.scale is 1
		winner.animate
			scale: 1
			rotation: 8
			options:
				time: 0.3
				curve: Spring


