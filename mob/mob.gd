extends CharacterBody2D
@onready var player:= %Player
@onready var slime:= $Slime
@export var slime_speed:= 300

func _ready() -> void:
	slime.play_walk()

func _physics_process(delta: float) -> void:
	var direction:= global_position.direction_to(player.global_position)
	velocity = direction * slime_speed
	move_and_slide()
