extends Node

# _input callback will be called when a keyboard button is pressed or released.
func _input(event):
	# The event of interest is keyboard event, which is of class `InputEventKey`.
	if event is InputEventKey:
		# Display the word "Echo" at the end of the line if this event is an echo
		var is_echo = "Echo" if event.echo else ""
		if event.pressed:
			# When the player holds a button down, display "Key pressed", scancode and whether it's an echo
			prints("Key pressed", event.scancode, is_echo)
		else:
			# Same as above, but display "Key released" when the key is released
			prints("Key released", event.scancode, is_echo)
