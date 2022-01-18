extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(load_config())


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func load_config():
	var path = "user://config.ini"
	var config = ConfigFile.new()
	
	var defaults = {
		"difficulty": "easy",
		"music_volume": 80
	}
	var err = config.load(path)
	if err != OK:
		return defaults
	
	var options = {}
	
	options.difficulty = config.get_value("options","difficulty",defaults.difficulty)
	options.music_volume = config.get_value("audio","music_volume",defaults.music_volume)
	
	return options
