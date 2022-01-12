extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
signal count_updated(count)
signal damaged(damage)

# a variable to hold the number of times the button has been pressed
# since this is declared in the file scope it becomes a class member
var press_count = 0

# The maximum number of button presses allowed
const MAX_PRESSES = 42

const MOVEMENT_SPEED = 50 # pixels per second

var sprite_node


func _ready():
	$Button.connect("pressed", self, "on_button_pressed")
	sprite_node = $Sprite

func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_FOCUS_IN:
		print("Refocus")
	elif what == MainLoop.NOTIFICATION_WM_FOCUS_OUT:
		print("ok bye I guess")
	elif what == NOTIFICATION_PREDELETE:
		destructor()

func destructor():
	print("deleting object")

func _process(delta):
	var input_direction = 0 # 0 is no movement, 1 is right, -1 is left

	if Input.is_action_pressed("ui_left"):
		input_direction = -1
	elif Input.is_action_pressed("ui_right"):
		input_direction = 1

	# notice that the child is moved here
	sprite_node.position.x += input_direction * MOVEMENT_SPEED * delta

# this gets called when Button gets pressed
func on_button_pressed():
	if press_count + 1 <= MAX_PRESSES:
		press_count += 1
		emit_signal("count_updated", press_count)
		$Button.text = str(press_count)
		$Sprite.visible = not $Sprite.visible
		emit_signal("damaged",15)
	else:
		$Button.text = "No more presses allowed."

