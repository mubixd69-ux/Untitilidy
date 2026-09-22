extends Area2D

signal missed
signal caught

var fall_speed = 200.0

func set_combo(combo: int):
	fall_speed = min(200.0 + (combo * 35.0), 700)

func _process(delta):
	position.y += fall_speed * delta
	
	if position.y > 700:
		missed.emit()
		queue_free()
		
func get_caught() -> void:
	GameData.add_taco()
	queue_free()
	caught.emit()
	
