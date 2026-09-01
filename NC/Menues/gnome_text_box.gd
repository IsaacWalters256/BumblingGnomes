extends CanvasLayer

var text_tween = null
@onready var text_label = get_node("MarginContainer/VBoxContainer/Container/MarginContainer/VBoxContainer/CharacterTextLabel")

func start(speaker, new_text):
	get_node("MarginContainer/VBoxContainer/Container/MarginContainer/VBoxContainer/CharacterNameLabel").text = speaker
	text_label = get_node("MarginContainer/VBoxContainer/Container/MarginContainer/VBoxContainer/CharacterTextLabel")
	text_label.text = new_text
	text_tween = get_tree().create_tween()
	text_tween.tween_property(text_label, "visible_characters", text_label.text.length(), text_label.text.length()/15)

func skip_text():
	if text_label.visible_characters == text_label.text.length():
		get_parent().text_finished()
	else:
		text_tween.kill()
		text_label.visible_characters = text_label.text.length()

#use a Tween to animate the visible_ratio or visible_characters property of a Label or RichTextLabel 
