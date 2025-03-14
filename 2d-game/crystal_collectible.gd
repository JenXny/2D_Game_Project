extends Sprite2D

@onready var sfx_collect = $sfx_collect

func _process(delta: float) -> void:
	pass

var rockwalltexture1x1 = preload("res://rock_walls_texture_1x_1.tscn")

func _on_area_2d_body_entered(body: Node2D) -> void:
	var instance = rockwalltexture1x1.instantiate()
	$"..".add_child(instance)
	sfx_collect.play()
	try_to_spawn_rock(instance)
	position.x = randi_range(58,1000)
	position.y = randi_range(80,1000)
	$"../Score label".increaseScore(1)

func try_to_spawn_rock(instance):
	instance.position.x = randi_range(58,1000)
	instance.position.y = randi_range(58,1000)
	if position.distance_to(instance.position) < 10 or $"../player".position.distance_to(instance.position) < 50:
		try_to_spawn_rock(instance)
	

#func _process():
	


func _on_area_2d_area_entered(area: Area2D):
	position.x = randi_range(58,1000)
	position.y = randi_range(58,1000)
