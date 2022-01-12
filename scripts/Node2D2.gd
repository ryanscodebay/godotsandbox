extends Node2D


var sprite_node
var health=100
# Called when the node enters the scene tree for the first time.
func _ready():
	sprite_node = $Sprite2

func _on_Button_button_up():
	sprite_node.visible = not sprite_node.visible

func _on_FirstScene_damaged(damage):
	print("damaged")
	if health < 0:
		sprite_node.visible = false
	else:
		health -= damage
