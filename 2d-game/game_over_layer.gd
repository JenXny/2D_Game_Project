extends CanvasLayer

signal restart

func _ready():
	self.hide()


func _on_restart_button_pressed():
	get_tree().reload_current_scene()
	restart.emit()


func game_over():
	show()
	
