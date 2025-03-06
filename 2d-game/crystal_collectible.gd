extends Sprite2D


# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var rockwalltexture1x1 = preload("res://rock_walls_texture_1x_1.tscn")

func _on_area_2d_body_entered(body: Node2D) -> void:
	var instance = rockwalltexture1x1.instantiate()
	$"..".add_child(instance)
	instance.position.x = randi_range(58,1000)
	instance.position.y = randi_range(58,1000)
	position.x = randi_range(58,1000)
	position.y = randi_range(58,1000)


#func _process():
	
