extends Node2D

#we probably want all this to be control nodes actually for easier movement

var map_tiles = []

func start(map_data):
	for mpt in get_node("Map0/Tiles").get_children():
		mpt.start()
	#for c in 10:
		#var h_box = HBoxContainer.new()
		#get_node("VBoxContainer").add_child(h_box)
		#map_tiles.append([])
		#for r in 10:
			#var new_tile = load("res://NC/map_tile.tscn").instantiate()
			#h_box.add_child(new_tile)
			#map_tiles[c].append(new_tile)


func new_inst():
	pass

func passed_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER:#would also be on tapping the screen
			print("enter")

func map_tile_pressed(id_loc):
	print(id_loc)
