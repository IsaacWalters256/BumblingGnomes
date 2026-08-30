extends Control

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER:#would also be on tapping the screen
			#get_tree().quit()
			skip_text()

func skip_text():
	pass#if text already loaded, goes to next

#use a Tween to animate the visible_ratio or visible_characters property of a Label or RichTextLabel 
