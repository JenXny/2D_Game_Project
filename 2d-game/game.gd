extends Node2D

var score : int
var game_started : bool = false


var crystalcollectible = preload("res://crystal_collectible.tscn")
var rockwalltexture1x1 = preload("res://rock_walls_texture_1x_1.tscn")


func _ready():
	var instance = crystalcollectible.instantiate()
	add_child(instance)
	pass # Replace with function body.
