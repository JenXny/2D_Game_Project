extends Node2D


func _ready() -> void:
	# Connecting button signals (Ensure buttons are named correctly in the scene)
	$MarginContainer/VBoxContainer/Play.connect("pressed", _on_play_pressed)

# Function to start the game
func _on_play_pressed() -> void:
	if ResourceLoader.exists("res://game.tscn"):
		get_tree().change_scene_to_file("res://game.tscn")
	else:
		print("Error: Game scene not found!")
