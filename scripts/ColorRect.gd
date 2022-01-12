extends ColorRect

func _gui_input(ev):
	 if ev is InputEventMouse:
		  var v = ev.position/rect_size
		  color = Color(v.x, v.y, 1, 1)

func _ready():
	 $"../HBoxContainer/Button".connect("pressed", self, "button_pressed")
	 $"../HBoxContainer/LineEdit".connect("text_entered", self, "show_dialog")

func show_dialog(name):
	 if name == "": name = "???"
	 $"../AcceptDialog".dialog_text = "You are %s." % name
	 $"../AcceptDialog".popup()

func button_pressed():
	 show_dialog($"../HBoxContainer/LineEdit".text)
