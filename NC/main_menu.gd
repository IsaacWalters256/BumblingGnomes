extends Control

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER:
			#get_tree().quit()
			new_game()

func _on_new_game_button_pressed() -> void:
	new_game()

func new_game():
	get_parent().change_screens("difficulty")
