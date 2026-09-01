extends Node2D

var difficulty = 0
var current_screen = null

var interview_view = null
var map_view = null
var base_view = null
var combat_view = null

var speech = {}

func _unhandled_input(event):
	if event is InputEventKey:
		if current_screen:
			current_screen.passed_input(event)

func start(extras):
	difficulty = extras[0]
	
	speech = load("res://NC/Speech/english.tscn").instantiate().speech
	
	interview_view = load("res://NC/interview.tscn").instantiate()
	self.add_child(interview_view)
	interview_view.visible = false
	interview_view.start()
	
	map_view = load("res://NC/map_screen.tscn").instantiate()
	self.add_child(map_view)
	map_view.visible = false
	map_view.start("map data")
	
	#load boss starting speech screen
	switch_current_screen("boss_talk_intro")


func switch_current_screen(type):
	current_screen = null
	interview_view.visible = false
	map_view.visible = false
	if type == "boss_talk_intro":
		interview_view.new_inst("boss_talk_intro")
		interview_view.visible = true
		current_screen = interview_view
	elif type == "main_map":
		map_view.new_inst()
		map_view.visible = true
		current_screen = map_view
		
