extends Node

var label = Label.new()
var counter = 0

func _ready():
	label.text = str(0)
	$pausemenu.dialog_text = "Paused"
	$pausemenu.connect("popup_hide", self, "unpause")
	$pausemenu.popup_exclusive = true
	$pausemenu.pause_mode = PAUSE_MODE_PROCESS
	add_child(label)

func _process(delta):
	counter += delta
	label.text = "%.1f" % counter

func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_ESCAPE:
			$pausemenu.popup()
			get_tree().set_pause(true)

func unpause():
	get_tree().set_pause(false)
