extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	read_file()

func read_file():
	var path = "user://save.dat"
	var file = File.new()
	
	var err = file.open(path, File.READ)
	if err != OK:
		print("Error happened")
		return

	var data = {}
	data.player_name = file.get_var()
	data.player_score = file.get_var()
	
	file.close()
	
	return data
