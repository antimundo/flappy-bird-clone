extends Area2D

signal hit
signal scored

const SPEED = 100

func _process(delta):
	position.x -= delta * SPEED
	if position.x < -100:
		queue_free()

func _on_body_entered(_body):
	hit.emit()

func _on_area_2d_body_entered(_body):
	scored.emit()
	$Area2D/ScoreSound.play()
