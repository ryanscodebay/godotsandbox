extends Sprite

var label = Label.new()

func _ready():
	label.text = "Quit?"
	add_child(label)

func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_ESCAPE:
			get_tree().change_scene("res://scenes/sceneswitch.tscn")
