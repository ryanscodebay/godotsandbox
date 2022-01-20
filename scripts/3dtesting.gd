extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$secondcam.set_current(true)
	$cube/movecheck.play("cubemove")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	$firstcam.set_translation($cube.get_translation() + Vector3(0, 25, 25))
#	$firstcam.set_rotation(Vector3(-45,0,0))
