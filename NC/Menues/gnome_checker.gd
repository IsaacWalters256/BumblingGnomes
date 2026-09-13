extends Control

var gnome_name = ""


func _on_texture_button_toggled(toggled_on: bool) -> void:
	get_parent().get_parent().update_buttons(gnome_name, toggled_on)
