extends Area2D



func _on_estrella_body_entered(body):
	if body.has_method("aumentar_puntaje"):
		body.aumentar_puntaje()
		queue_free()
