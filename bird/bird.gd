extends CharacterBody2D

const GRAVITY : int = 1000
const SPEED = 300.0
const JUMP_VELOCITY = -500.0

func _physics_process(delta):
	velocity.y += GRAVITY * delta
	move_and_slide()

func _input(event):
	if event.is_action_pressed("jump"):
		jump()

func _process(_delta):
	rotation = velocity.y / 1000
	if position.y > 700 or position.y < -100:
		$"..".loose_game()

func jump():
	velocity.y = JUMP_VELOCITY
	$JumpSound.play()
