extends Node2D

var pipe = preload("res://pipes.tscn")
var pipesList = []

func _on_timer_timeout():
	if Utils.playing:
		pipesList.append(pipe.instantiate())
		pipesList[-1].position = Vector2(768 , randi_range(-300, 275))
		add_child(pipesList[-1])
		if pipesList[0].global_position.x < -64:
			pipesList.pop_front().queue_free()
		

