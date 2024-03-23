extends Node2D

var running: bool = false

func _process(delta):
	if Input.is_action_just_pressed("start_stop_sim"):
		running = not running
		
	while running:
		print("Hello World")
		await get_tree().create_timer(1.0).timeout
