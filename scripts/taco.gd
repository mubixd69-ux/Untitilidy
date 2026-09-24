extends Area2D

signal missed
signal caught

@export var taco_value: int = 1
@export var ignores_multiplier: bool = false

var fall_speed = 200.0


func set_combo(combo: int):
	fall_speed = min(200.0 + (combo * 35.0), 700)

func _process(delta):
	position.y += fall_speed * delta
	
	if position.y > 700:
		missed.emit()
		queue_free()
		
func get_caught(multiplier: int = 1) -> void:
	if ignores_multiplier:
		GameData.add_taco(taco_value)
	else:
		GameData.add_taco(taco_value, multiplier)

	queue_free()
	caught.emit()
