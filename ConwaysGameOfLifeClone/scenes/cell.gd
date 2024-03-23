extends Button

@export var alive_cell : Texture2D
@export var dead_cell : Texture2D

func _ready():
	change_state(false)

func change_state(is_alive):
	if is_alive:
		set_button_icon(alive_cell)
	else:
		set_button_icon(dead_cell)

func _on_pressed():
	if button_pressed:
		change_state(true)
	else:
		change_state(false)
