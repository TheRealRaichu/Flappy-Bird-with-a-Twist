extends Node

var score = 0
var playing = false

func reset():
	playing = false

func _process(delta):
	if !playing:
		if Input.is_action_just_pressed("ui_accept"):
			playing = true
			score = 0
