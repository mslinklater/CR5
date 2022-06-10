extends Control

var bVisible = false;

func _ready():
	pass # Replace with function body.

func _process(_delta):
	pass

func _input(event):
	if event.is_action_pressed("toggle_debug_ui"):
		visible = !visible


func _on_QuitButton_pressed():
	Global.quit()
