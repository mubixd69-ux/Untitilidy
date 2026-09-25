extends Button

@export var price: float = 1.0
var spicy_price_multi: float = 1.0

func _on_pressed() -> void:
	if GameData.taco_coins >= price and %TacoSpawner. spicy_chance >= 0.01:
		GameData.taco_coins -= price * spicy_price_multi
		spicy_price_multi += 0.2
		%TacoSpawner.spicy_chance -= 0.02
		print(%TacoSpawner.spicy_chance)
		
