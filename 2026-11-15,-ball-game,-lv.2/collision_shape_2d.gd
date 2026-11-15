extends Area2D

var finished := false

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if finished:
		return

	if body is RigidBody2D and body.is_in_group("ball"):
		finished = true
		call_deferred("_open_next_level")

func _open_next_level() -> void:
	get_tree().change_scene_to_file("res://lv_2.tscn")
