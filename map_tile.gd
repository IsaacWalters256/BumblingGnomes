extends TextureButton

#have all this tiles data in here honestly

@export var type = 0#0 forest, 1 farms, 2 city
@export var starting_name = "NA"
var nick_name = "NA"

@export var connected1 = TextureButton
@export var connected2 = TextureButton
@export var connected3 = TextureButton
@export var connected4 = TextureButton
var connected_list = []

var gnomes_here = []

var map = null

func start(map_ref):
	nick_name = starting_name
	map = map_ref
	get_node("NameLabel").text = nick_name
	if "type" in connected1:
		connected_list.append(connected1)
	if "type" in connected2:
		connected_list.append(connected2)
	if "type" in connected3:
		connected_list.append(connected3)
	if "type" in connected4:
		connected_list.append(connected4)
	#self.text = type
	#if type == 0:#forest
		#self.modulate = Color(1,1,0.25)
	#elif type == "farm":
		#get_node("Hexagon/Background").modulate = Color(0,0.75,1)
	#elif type == "forest":
		#get_node("Hexagon/Background").modulate = Color(0.05,1,0.25)

func new_day_attacks():
	pass

func new_day_guests():
	pass

func update_name(new_name):
	get_node("NameLabel").text = nick_name

func _on_pressed() -> void:
	map.tile_pressed(self)
	print(connected_list)#get_parent().map_tile_pressed(id_loc)#forget this just bring the ui up ourselfs
