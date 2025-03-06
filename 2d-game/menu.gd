extends Control
# functioning menu
# Called when the node enters the scene tree for the first time
func _ready() -> void:
	# Connecting button signals (Ensure buttons are named correctly in the scene)
	$MarginContainer/VBoxContainer/Play.connect("pressed", _on_play_pressed)
	$MarginContainer/VBoxContainer/Load.connect("pressed", _on_load_pressed)
	$MarginContainer/VBoxContainer/Quit.connect("pressed", _on_quit_pressed)

# Function to start the game
func _on_play_pressed() -> void:
	if ResourceLoader.exists("res://game.tscn"):
		get_tree().change_scene_to_file("res://game.tscn")
	else:
		print("Error: Game scene not found!")

# Function to load a saved game
func _on_load_pressed() -> void:
	# Implement a save/load system based on your game
	if FileAccess.file_exists("user://savegame.tres"):
		var save_data = ResourceLoader.load("user://savegame.tres")
		if save_data:
			print("Loaded game data successfully!")
			# Load the saved game scene or state
			get_tree().change_scene_to_file("res://game.tscn")
		else:
			print("Error: Save data is corrupted or cannot be loaded.")
	else:
		print("No save file found.")

# Function to quit the game
func _on_quit_pressed() -> void:
	get_tree().quit()
