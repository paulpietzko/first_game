extends Node

@onready var poitns_label = %PoitnsLabel
@onready var pause_menu = %PauseMenu

var paused = false
var points = 0

func add_point():
	points += 1
	poitns_label.text = "Points: " + str(points)
 
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pauseMenu()
		
func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
		
	paused = !paused
