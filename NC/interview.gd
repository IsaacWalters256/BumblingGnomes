extends Node2D

var current_text = null

func passed_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER:#would also be on tapping the screen
			if current_text:
				current_text.skip_text()



func start():
	pass
	

func new_inst(type):
	if type == "boss_talk_intro":
		current_text = load("res://NC/Menues/gnome_text_box.tscn").instantiate()
		self.add_child(current_text)
		current_text.start("Commissioner", get_parent().speech["gnome_boss_intro_1"])

func text_finished():
	get_parent().switch_current_screen("main_map")
	self.queue_free()
