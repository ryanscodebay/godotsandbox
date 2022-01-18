extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	save_config()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func save_config():
	var path = "user://config.ini"
	var config = ConfigFile.new()
	config.set_value("options", "difficulty", "hard")
	config.set_value("audio","music_volume",42)
	
	var err = config.save(path)
	if err != OK: #strange format
		print("Error occurred")
