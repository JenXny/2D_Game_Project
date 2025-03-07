extends CanvasLayer

var score = 0


	
func increaseScore(amount): 
	score += amount
	$ScoreLabel.text = str(score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
