extends Node


# Declare member variables here. Examples:

# Called when the node enters the scene tree for the first time.
func _ready():
	var dir = Directory.new()
	
	var err = dir.open("res://")
	if err != OK:
		print("error open dir")
		return
	
	dir.list_dir_begin(true,true) #skip nav dirs and hidden dirs
	var name = dir.get_next()
	
	#basic navigation, seent this before
	while name != "":
		if dir.current_is_dir():
			print("dir: ", name)
		else:
			print("not dir: ", name) #all other files
		name = dir.get_next()
		
	dir.list_dir_end()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
