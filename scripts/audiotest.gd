extends Spatial

# Declare member variables here. Examples:
var rotation_speed = 2


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"Camera/pivot".rotate_y(rotation_speed*delta)
