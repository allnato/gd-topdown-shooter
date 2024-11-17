extends CharacterBody2D
@onready var player:= %Player
@export var slime_speed:= 300

func _physics_process(delta: float) -> void:
	var direction:= global_position.direction_to(player.global_position)
	velocity = direction * slime_speed
	move_and_slide()
