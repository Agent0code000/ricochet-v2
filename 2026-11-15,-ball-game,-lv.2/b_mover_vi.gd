extends CharacterBody2D

var is_active = false
var rotation_speed = 1.5


func _process(delta):

	if not is_active:
		return
 
	if Input.is_action_pressed("ui_up"):
		rotation -= rotation_speed * delta
	if Input.is_action_pressed("ui_down"):
		rotation += rotation_speed * delta
