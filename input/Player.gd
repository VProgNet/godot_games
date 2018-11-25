extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

const SPEED = 0;

var speedY = 0;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed('ui_right')):
		position.x += SPEED * delta;
	
	if (Input.is_action_pressed('ui_left')):
		position.x -= SPEED * delta;

	if (Input.is_action_just_pressed('ui_jump')):
		speedY = -100;
		
	if (speedY < 100): 
		speedY += 1;
	
	position.y += speedY * delta
	pass
