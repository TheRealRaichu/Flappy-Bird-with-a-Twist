extends CharacterBody2D

const JUMP_VELOCITY = -400.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var anim = get_node("AnimatedSprite2D")

func _physics_process(delta):
	if Utils.playing:
		if rotation_degrees < 50:
			rotation_degrees = velocity.y/10
		
		velocity.y += gravity * delta

		if Input.is_action_just_pressed("ui_accept"):
			velocity.y = JUMP_VELOCITY
			rotation_degrees = velocity.y/10

		move_and_slide()

func _on_lower_bound_body_entered(body):
	death()




func death():
	Utils.playing = false
	for pipe in get_node("../Pipes Spawner").pipesList:
		pipe.queue_free()
	get_node("../Pipes Spawner").pipesList.clear()
	position.y = 320
	rotation_degrees = 0
	
