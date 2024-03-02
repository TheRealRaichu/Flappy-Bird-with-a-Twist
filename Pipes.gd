extends CharacterBody2D


var speed = 200

func _process(delta):
	position.x -= speed*delta

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		body.death()
	


func _on_score_box_body_entered(body):
	if body.name == "Player":
		Utils.score += 1
