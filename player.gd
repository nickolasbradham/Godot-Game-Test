extends CharacterBody2D

const SPEED = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	velocity.x = SPEED if Input.is_action_pressed("Right") else -SPEED if Input.is_action_pressed("Left") else 0
	velocity.y = SPEED if Input.is_action_pressed("Down") else -SPEED if Input.is_action_pressed("Up") else 0
	move_and_slide()
