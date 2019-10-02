extends KinematicBody2D
"""
# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	set_process_input(true)
	
func _physics_process(delta):
	if rotation >= 0.3:
		rotation = 0.3
	
	if rotation <= -0.3:
		rotation = -0.3
		
	if Input.is_action_pressed("ui_right"):
		rotation -= 0.06
	else:
		rotation += 0.06

	set_rot(rotation)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
"""