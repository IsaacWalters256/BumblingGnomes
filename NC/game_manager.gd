extends Node2D

var difficulty = 0
var current_screen = null

var speech = null

func start(extras):
	difficulty = extras[0]
	
	speech = load("res://NC/boss_talk_screen.tscn").instantiate().speech
	
	#load boss starting speech screen
	switch_current_screen("boss_talk_intro")


func switch_current_screen(type):
	if type == "boss_talk_intro":
		current_screen = load("res://NC/boss_talk_screen.tscn").instantiate()
		current_screen.start("intro")
	self.add_child(current_screen)
