extends CharacterBody2D
@onready var HappyBoo: Node2D = %HappyBoo

func _physics_process(delta: float) -> void:
	var direction: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 600
	move_and_slide()
	
	if velocity != Vector2.ZERO:
		HappyBoo.play_walk_animation()
	else:
		HappyBoo.play_idle_animation()
