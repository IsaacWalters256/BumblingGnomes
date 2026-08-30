extends Control

#have a whole bunch of sliders here liek gnome quality and such

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER:
			#get_tree().quit()
			new_game()


func _on_start_button_pressed() -> void:
	new_game()

func new_game():
	get_parent().change_screens("start_game",[get_node("HSlider").value])
