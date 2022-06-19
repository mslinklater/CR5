# Main

extends Node

enum GameMode {	BOOT,	FRONT_END,	IN_GAME }

var gameMode setget _set_game_mode

func _set_game_mode(newMode):
	print("Setting gameMode")
	gameMode = newMode

# Called when the node enters the scene tree for the first time.
func _ready():
	gameMode = GameMode.BOOT
	
func process_boot():
	pass

func process_front_end():
	pass

func process_in_game():
	pass
	
func _process(delta):
	match gameMode:
		GameMode.BOOT:
			process_boot()
		GameMode.FRONT_END:
			process_front_end()
		GameMode.IN_GAME:
			process_in_game()
		_:
			assert(false, "Unhandled gameMode")
		
func quit():
	get_tree().notification(MainLoop.NOTIFICATION_WM_QUIT_REQUEST)
