extends TextureButton

#have all this tiles data in here honestly
@export var id_loc = [0,0]
@export var type = "forest"

func start(type_x,structures=[]):
	get_node("Hexagon/Button").text = type
	if type == "city":
		get_node("Hexagon/Background").modulate = Color(1,1,0.25)
	elif type == "farm":
		get_node("Hexagon/Background").modulate = Color(0,0.75,1)
	elif type == "forest":
		get_node("Hexagon/Background").modulate = Color(0.05,1,0.25)



func _on_pressed() -> void:
	get_parent().map_tile_pressed(id_loc)#forget this just bring the ui up ourselfs
