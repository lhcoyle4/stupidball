extends KinematicBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	set_process_input(true)
	
func _physics_process(delta):
	if rotation >= 215:
		rotation = 215
	
	if rotation <= 180:
		rotation = 180
		
	if Input.is_action_pressed("ui_left"):
		rotation -= 35
	else:
		rotation += 35

	set_rotation_degrees(rotation)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass