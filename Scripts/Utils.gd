extends Node

var  DWP
var score = 0
var playing = false

func reset():
	playing = false

func _process(delta):
	if !playing:
		if Input.is_action_just_pressed("ui_accept"):
			DWP = get_window().position.y
			playing = true
			score = 0
