extends Area2D

signal missed

func _process(delta):
	position.y += 200 * delta
	
	if position.y > 700:
		missed.emit()
		queue_free()
		
func get_caught() -> void:
	queue_free()
