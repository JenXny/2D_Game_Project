extends Sprite2D


# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var rockwalltexture1x1 = preload("res://rock_walls_texture_1x_1.tscn")

func _on_area_2d_body_entered(body: Node2D) -> void:
	var instance = rockwalltexture1x1.instantiate()
	$"..".add_child(instance)
	try_to_spawn_rock(instance)
	position.x = randi_range(58,1000)
	position.y = randi_range(58,1000)
	$"../Score label".increaseScore(1)

func try_to_spawn_rock(instance):
	instance.position.x = randi_range(58,1000)
	instance.position.y = randi_range(58,1000)
	if position.distance_to(instance.position) < 10:
		try_to_spawn_rock(instance)
	

#func _process():
	


func _on_area_2d_area_entered(area: Area2D):
	position.x = randi_range(58,1000)
	position.y = randi_range(58,1000)
