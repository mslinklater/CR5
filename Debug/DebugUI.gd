extends Control

var bVisible = false;
onready var gameModeLabel = $GameModeLabel

func _ready():
	pass # Replace with function body.

func _process(_delta):
	match Global.gameMode:
		Global.GameMode.BOOT:
			gameModeLabel.text = "GameMode: Boot"
		Global.GameMode.FRONT_END:
			gameModeLabel.text = "GameMode: Front End"
		Global.GameMode.IN_GAME:
			gameModeLabel.text = "GameMode: In Game"

func _input(event):
	if event.is_action_pressed("toggle_debug_ui"):
		visible = !visible


func _on_QuitButton_pressed():
	Global.quit()
