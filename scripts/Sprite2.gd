extends Sprite

func _ready():
	$AnimationPlayer2.play("testanimation")


func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_UP && event.pressed == false:
			if $AnimationPlayer2.is_playing() && $AnimationPlayer2.get_current_animation() == "testanimation":
				pass
		else:
			$AnimationPlayer2.play("testanimation")
			
	if event is InputEventKey:
		if event.scancode == KEY_DOWN:
			$AnimationPlayer2.stop()

func wood_chop():
	print("It works! Choppie choppie.")
