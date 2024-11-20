extends Area2D

@export var BULLET_SPEED := 1000.0
@export var BULLET_MAX_DIST := 1200.0
var travelled_distance := 0.0


func _physics_process(delta: float) -> void:
	var direction := Vector2.RIGHT.rotated(rotation)
	position += direction * BULLET_SPEED * delta
	
	travelled_distance += BULLET_SPEED * delta
	if travelled_distance > BULLET_MAX_DIST:
		queue_free()
