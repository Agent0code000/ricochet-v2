extends Area2D

func _ready() -> void:
	monitoring = true

	if not body_entered.is_connected(_on_body_entered):
		body_entered.connect(_on_body_entered)

	print("Spring ready")

func _on_body_entered(body: Node2D) -> void:
	print("Spring detected: ", body.name)

	if body is RigidBody2D:
		body.sleeping = false
		body.linear_velocity.y = -1500.0
