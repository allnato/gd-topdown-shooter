extends Area2D

@onready var bullet_hole: Marker2D = %Bullethole

func _ready() -> void:
	$FireRate.timeout.connect(_on_FireRate_timeout)

func _physics_process(delta: float) -> void:
	var enemies_in_range: Array[Node2D] = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range.front()
		look_at(target_enemy.global_position)

func shoot_gun() -> void:
	var bullet_scene: PackedScene = preload("res://gun/bullet.tscn")
	var bullet: Area2D = bullet_scene.instantiate()
	bullet.global_position = bullet_hole.global_position
	bullet.global_rotation = self.global_rotation
	bullet_hole.add_child(bullet)

func _on_FireRate_timeout() -> void:
	shoot_gun()
