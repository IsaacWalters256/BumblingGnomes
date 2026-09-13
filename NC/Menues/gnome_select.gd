extends Node2D

var current_focus_tile = null
var avaliable_gnomes_list = []
var current_selected_gnomes = []

func start(new_tile):
	current_focus_tile = new_tile
	self.visible = true
	get_node("PlaceName").text = new_tile.nick_name
	find_avaliable_gnomes([],current_focus_tile,0)

func find_avaliable_gnomes(tiles_checked,tile_to_check,deep):
	avaliable_gnomes_list = []
	if !tiles_checked.has(tile_to_check):
		tiles_checked.append(tile_to_check)
		for g in tile_to_check.gnomes_here:
			if g.travel_distance > deep:
				if !avaliable_gnomes_list.has(g):
					avaliable_gnomes_list.append(g)
		for cl in tile_to_check.connected_list:
			find_avaliable_gnomes(tiles_checked,cl,deep+1)
	#goes through whole map, recursive funciton passing through locations already checked

func end():
	self.visible = false
	get_node("AttackButton").visible = false
	for c in get_node("AbleGnomes").get_children():
		c.visible = false
		c.get_node("Hbox/TextureButton").button_pressed = false
	get_parent().tile_unpressed()

func update_buttons(gnome_name, toggled_on):
	if toggled_on:
		current_selected_gnomes.append(gnome_name)
		get_node("AttackButton").visible = true
	else:
		current_selected_gnomes.remove_at(current_selected_gnomes.find(gnome_name))
		if current_selected_gnomes.size() == 0:
			get_node("AttackButton").visible = false
	


func _on_place_name_text_changed() -> void:
	current_focus_tile.nick_name = get_node("PlaceName").text
	current_focus_tile.update_name(get_node("PlaceName").text)


func _on_back_button_pressed() -> void:
	end()
