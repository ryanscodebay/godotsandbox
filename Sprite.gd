extends Sprite
#
#const SPEED = 100
#var device_index = 0
#
#func _ready():
#	Input.connect("joy_connection_changed", self, "joy_connect")
#
#func joy_connect(index, connect):
#	# When a joystick is detected, keep the device index in a variable
#	if connect:
#		device_index = index
#
#func _process(delta):
#	if Input.is_mouse_button_pressed(BUTTON_LEFT):
#		prints("Holding left mouse button at", get_tree().get_root().get_mouse_position())
#
#func _input(event):
#	if event is InputEventMouseButton && event.pressed:
#		#prints("Button", event.button_index, "is pressed at", str(event.position))
#		pass
#	if event is InputEventMouseMotion:
#		#prints("Mouse moved to", str(event.position))
#		pass
