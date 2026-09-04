extends TextureButton

#have all this tiles data in here honestly

@export var type = "forest"

@export var connected1 = TextureButton
@export var connected2 = TextureButton
@export var connected3 = TextureButton
@export var connected4 = TextureButton
var connected_list = []


func start():
	if "type" in connected1:
		connected_list.append(connected1)
	if "type" in connected2:
		connected_list.append(connected2)
	if "type" in connected3:
		connected_list.append(connected3)
	if "type" in connected4:
		connected_list.append(connected4)
	#self.text = type
	#if type == "city":
		#get_node("Hexagon/Background").modulate = Color(1,1,0.25)
	#elif type == "farm":
		#get_node("Hexagon/Background").modulate = Color(0,0.75,1)
	#elif type == "forest":
		#get_node("Hexagon/Background").modulate = Color(0.05,1,0.25)



func _on_pressed() -> void:
	print(connected_list)#get_parent().map_tile_pressed(id_loc)#forget this just bring the ui up ourselfs
