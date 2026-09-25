extends Button

@export var cost: float = 10.0


func _on_pressed() -> void:
	if GameData.taco_coins >= cost:
		GameData.taco_coins -= cost
		
		$"../Bag".speed = 800
		$"../Bag".acceleration = 3300
		$"../Bag".scale.x = 1.1
		$"../Bag".scale.y = 1.1
		
		disabled = true
		print("Hacka Backa")
