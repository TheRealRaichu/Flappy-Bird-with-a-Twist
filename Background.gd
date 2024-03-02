extends ParallaxBackground

var scrolling_speed = 100

func _process(delta):
	if Utils.playing:
		scroll_offset.x -= scrolling_speed * delta
