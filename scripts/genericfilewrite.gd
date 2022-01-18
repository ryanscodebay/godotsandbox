extends Node


# Declare member variables here. Examples:
var player_name = "lonk"
var player_score = 50


# Called when the node enters the scene tree for the first time.
func _ready():
	create_file()

func create_file():
	var path = "user://save.dat"
	var file = File.new()
	
	var err = file.open(path, File.WRITE)
	if err != OK:
		print("Error happened")
		return

	file.store_var(player_name)
	file.store_var(player_score)
	
	file.close()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
