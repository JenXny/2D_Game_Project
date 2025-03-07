extends Node2D

var score = 0
var game_started : bool = false
var player_data : Array

var crystalcollectible = preload("res://crystal_collectible.tscn")
var rockwalltexture1x1 = preload("res://rock_walls_texture_1x_1.tscn")


#func _process():
	

func _ready():
	get_tree().paused = false
	var instance = crystalcollectible.instantiate()
	add_child(instance)
	instance.position.x = randi_range(58,1094)
	instance.position.y = randi_range(58,1094)
	


func end_game():
	$GameOverLayer.game_over()
	game_started = false
	print ("Game Over")

func _on_game_over_menu_restart():
	#new_game()
	
	pass # Replace with function body.


func _on_border_body_entered(body: Node2D) -> void:
	end_game()
