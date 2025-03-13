extends CanvasLayer

@onready var sfx_death = $sfx_death

signal restart

func _ready():
	self.hide()

func game_over():
	show()
	sfx_death.play()
	get_tree().paused = true
	


func _on_button_pressed() -> void:
	get_tree().reload_current_scene()
	restart.emit()
