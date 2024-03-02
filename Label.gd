extends Label


func _on_timer_timeout():
	visible = !visible

func _process(delta):
	if Utils.playing:
		get_node("Timer").stop()
		visible = false

func _on_lower_bound_body_entered(body):
	get_node("Timer").start()
	visible = true
