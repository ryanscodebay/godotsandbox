extends Node

var label = Label.new()

func _ready():
	label.text = "Press Start"
	add_child(label)

func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_ENTER:
			get_tree().change_scene("res://scenes/spriteswitch.tscn")
