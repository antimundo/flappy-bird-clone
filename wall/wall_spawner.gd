extends Node2D

const WALL = preload("res://wall/wall.tscn")

func _ready():
	spawn_wall()

func _on_timer_timeout():
	spawn_wall()

func spawn_wall():
	var this_wall = WALL.instantiate()
	this_wall.hit.connect(bird_hit)
	this_wall.scored.connect(add_score)
	this_wall.position.y = randf_range(-150, 150)
	add_child(this_wall)

func bird_hit():
	$"..".loose_game()

func add_score():
	$"..".add_score()
