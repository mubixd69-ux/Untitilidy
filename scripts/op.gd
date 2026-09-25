extends Button

@export var cost: float = 1.0

func _on_pressed() -> void:
	if GameData.taco_coins >= cost:
		GameData.taco_coins -= cost
		
		$"../Bag".speed = 600
		$"../Bag".acceleration = 3000
		$"../Bag".scale.x = 0.9
		$"../Bag".scale.y = 0.9
		
		disabled = true
		print("op mode op")
