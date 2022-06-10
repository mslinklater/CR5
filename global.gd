# Main

extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
#func _process(delta):
#	pass

func quit():
	get_tree().notification(MainLoop.NOTIFICATION_WM_QUIT_REQUEST)
