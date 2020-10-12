extends KinematicBody2D

var velocidad = Vector2.ZERO

func _physics_process(delta):
	velocidad += Vector2(0,15)
	
	velocidad.x = 0
	if Input.is_action_pressed("ui_right"):
		velocidad.x = 150
	if Input.is_action_pressed("ui_left"):
		velocidad.x = -150
		
	if Input.is_action_pressed("ui_up") or Input.is_action_pressed("ui_select"):
		if is_on_floor():
			velocidad.y = -300
	
	velocidad = move_and_slide(velocidad, Vector2.UP)
