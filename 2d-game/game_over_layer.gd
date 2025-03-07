extends CanvasLayer

signal restart

func _ready():
	self.hide()

func game_over():
	show()
	get_tree().paused = true
	


func _on_button_pressed() -> void:
	get_tree().reload_current_scene()
	restart.emit()
