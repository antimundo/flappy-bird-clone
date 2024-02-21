extends Node2D

var score = 0

func add_score():
	score += 1
	$Label.text = str(score)

func loose_game():
	get_tree().call_deferred("reload_current_scene")
