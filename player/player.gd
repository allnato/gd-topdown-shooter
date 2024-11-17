extends CharacterBody2D
@export var player_speed:= 600
@onready var HappyBoo: Node2D = %HappyBoo

func _physics_process(delta: float) -> void:
	# Fetch input and move player
	var direction: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * player_speed
	move_and_slide()
	
	# Walk animation
	if velocity != Vector2.ZERO:
		HappyBoo.play_walk_animation()
	else:
		HappyBoo.play_idle_animation()
