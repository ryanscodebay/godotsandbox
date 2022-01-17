extends Node


var label
var loader
var clock = 0

func _ready():
	label = Label.new()
	add_child(label)
	loader = ResourceLoader.load_interactive("res://scenes/loadtest.tscn")

func _process(delta):
	clock += delta
	var err = loader.poll()
	if err == ERR_FILE_EOF:
		print(loader.get_resource())
#		get_tree().quit()
	label.text = "%d / %d loaded (%.1f s)" % [loader.get_stage(), loader.get_stage_count(), clock]
	
