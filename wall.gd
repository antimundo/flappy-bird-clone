extends Area2D

signal hit
signal scored

const SPEED = 100

func _process(delta):
	position.x -= delta * SPEED

func _on_body_entered(body):
	hit.emit()

func _on_area_2d_body_entered(body):
	scored.emit()
