extends Node

var current_child = null

func _ready():
	change_screens("main_menu")

func change_screens(which,extras=[]):
	var new_child = null
	if which == "main_menu":
		new_child = load("res://NC/main_menu.tscn").instantiate()
	elif which == "difficulty":
		new_child = load("res://NC/Menues/difficulty_screen.tscn").instantiate()
	elif which == "start_game":
		new_child = load("res://NC/game_manager.tscn").instantiate()
		new_child.start(extras)
	
	if current_child:
		current_child.queue_free()
	self.add_child(new_child)
	current_child = new_child
