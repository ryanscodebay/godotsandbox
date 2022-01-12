extends Node

#func _process(delta):
#	# KEY_SPACE is an alias for 32, a scancode for spacebar
#	if Input.is_key_pressed(KEY_SPACE):
#		print("Holding spacebar")
#
## _input callback will be called when a keyboard button is pressed or released.
#func _input(event):
#	# The event of interest is keyboard event, which is of class `InputEventKey`.
#	if event is InputEventKey && !event.echo:
#		# Display the word "Echo" at the end of the line if this event is an echo
#		var is_echo = "Echo" if event.echo else ""
#		if event.pressed:
#			# When the player holds a button down, display "Key pressed", scancode and whether it's an echo
#			prints("Key pressed", OS.get_scancode_string(event.scancode), is_echo)
#		else:
#			# Same as above, but display "Key released" when the key is released
#			prints("Key released", OS.get_scancode_string(event.scancode), is_echo)
