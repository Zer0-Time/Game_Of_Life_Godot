extends Node2D

var cell_scene : PackedScene = preload("res://scenes/cell.tscn")
var cells : Array

func _ready():
	var cell : Button = cell_scene.instantiate()
	var grid_width : int = int(get_viewport().size.x / (cell.size.x / 10))
	var grid_height : int = int(get_viewport().size.y / (cell.size.y / 10))
	generate_grid(grid_width, grid_height)

func generate_grid(width, height):
	for i in range(width):
		for j in range(height):
			var cell : Button = cell_scene.instantiate()
			cell.set_name("cell (" + str(i) + ", " + str(j) + ")")
			cell.position.x = i * int(cell.size.x / 10 + 1)
			cell.position.y = j * int(cell.size.y / 10 + 1)
			cells.append(cell)
			add_child(cell)
