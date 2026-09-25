extends Button

@export var price: float = 10

func _on_pressed() -> void:
	if GameData.taco_coins >= price:
		GameData.taco_coins -= price
		
		$"../Bag".speed = 650
		$"../Bag".acceleration = 3150
		$"../Bag".scale.x = 1
		$"../Bag".scale.y = 1
		
		disabled = true
		print("Propi Popi")
